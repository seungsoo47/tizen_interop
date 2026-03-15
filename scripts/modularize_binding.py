#!/usr/bin/env python3
import os
import sys
import glob
import re
import yaml

def get_module_mapping():
    mapping = {}
    for entry_file in glob.glob('configs/6.0/entrypoints-*.h'):
        module = os.path.basename(entry_file).replace('entrypoints-', '').replace('.h', '')
        with open(entry_file, 'r') as f:
            for line in f:
                match = re.search(r'#include <(.+)>', line)
                if match:
                    header = match.group(1)
                    mapping[header] = module
    return mapping

def generate_modules(version):
    mapping = get_module_mapping()
    
    entrypoints_path = f'configs/{version}/entrypoints.h'
    ffigen_path = f'configs/{version}/ffigen.yaml'
    
    if not os.path.exists(entrypoints_path):
        print(f"Error: {entrypoints_path} not found")
        sys.exit(1)
        
    if not os.path.exists(ffigen_path):
        print(f"Error: {ffigen_path} not found")
        sys.exit(1)
        
    with open(ffigen_path, 'r') as f:
        master_ffigen = yaml.safe_load(f)
        
    module_headers = {}
    with open(entrypoints_path, 'r') as f:
        for line in f:
            match = re.search(r'#include <(.+)>', line)
            if match:
                header = match.group(1)
                module = mapping.get(header)
                if not module:
                    # New header logic: default to its root directory name or filename
                    root_dir = header.split('/')[0] if '/' in header else header.replace('.h', '')
                    module = root_dir.replace('_', '-')
                    print(f"Warning: '{header}' is new in {version}. Assigning to module '{module}'")
                
                if module not in module_headers:
                    module_headers[module] = []
                module_headers[module].append(header)
                
    # Create module configurations
    for module, headers in module_headers.items():
        old_ffigen_path = f'configs/6.0/ffigen-{module}.yaml'
        description = f"Dart bindings for Tizen {module} APIs."
        name = f"Tizen{version.replace('.', '')}{module.replace('-', ' ').title().replace(' ', '')}"
        
        if os.path.exists(old_ffigen_path):
            with open(old_ffigen_path, 'r') as f:
                old_yaml = yaml.safe_load(f)
                if 'description' in old_yaml:
                    description = old_yaml['description']
                if 'name' in old_yaml:
                    name = old_yaml['name'].replace('60', version.replace('.', ''))

        output_name = module.replace('-', '_')
        output = f"../../lib/src/bindings/{version}/generated_bindings_{output_name}.dart"
        
        # Write entrypoints-*.h
        with open(f'configs/{version}/entrypoints-{module}.h', 'w') as f:
            for h in headers:
                f.write(f'#include <{h}>\n')
                
        # Write ffigen-*.yaml
        module_ffigen = {
            'name': name,
            'description': description,
            'output': output,
            'llvm-path': master_ffigen.get('llvm-path', []),
            'headers': {
                'entry-points': [f'entrypoints-{module}.h'],
                'include-directives': []
            },
            'compiler-opts': [],
            'enums': master_ffigen.get('enums', {})
        }
        
        # Determine include-directives and compiler-opts from 6.0 configs
        if os.path.exists(old_ffigen_path):
            with open(old_ffigen_path, 'r') as f:
                old_yaml = yaml.safe_load(f)
                # Copy include-directives directly
                if 'headers' in old_yaml and 'include-directives' in old_yaml['headers']:
                    module_ffigen['headers']['include-directives'] = old_yaml['headers']['include-directives']
                
                # Copy compiler-opts and replace 6.0 with the new version
                if 'compiler-opts' in old_yaml:
                    opts = []
                    for opt in old_yaml['compiler-opts']:
                        opts.append(opt.replace('6.0', version))
                    # Also append any new compiler-opts from master if missing (like efl headers if needed, but 6.0 configs usually have them)
                    module_ffigen['compiler-opts'] = opts
        else:
            # Fallback for new modules: use the master opts and a generic include
            print(f"Creating new module config for '{module}'. Using generic includes.")
            if '/' in headers[0]:
                root_dir = headers[0].split('/')[0]
                module_ffigen['headers']['include-directives'] = [f'**/{root_dir}/*.h']
            else:
                module_ffigen['headers']['include-directives'] = [f'**/{h}' for h in headers]
            module_ffigen['compiler-opts'] = master_ffigen.get('compiler-opts', [])

        ffigen_out_path = f'configs/{version}/ffigen-{module}.yaml'
        # Write preamble and yaml manually to preserve preamble comments
        with open(ffigen_out_path, 'w') as f:
            f.write("preamble: |\n")
            f.write(f"  // Copyright 2021 Samsung Electronics Co., Ltd. All rights reserved.\n")
            f.write(f"  // Use of this source code is governed by a BSD-style license that can be\n")
            f.write(f"  // found in the LICENSE file.\n")
            f.write(f"  // ignore_for_file: type=lint, unused_element, unused_field\n\n")
            yaml.dump(module_ffigen, f, sort_keys=False)

    print(f"Generated {len(module_headers)} module configs for version {version}")
    
    # We should delete the old ffigen.yaml and entrypoints.h so it doesn't conflict
    # but let's just rename them to .bak
    os.rename(entrypoints_path, entrypoints_path + '.bak')
    os.rename(ffigen_path, ffigen_path + '.bak')
    print(f"Renamed single {version} configs to .bak")

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python3 modularize_binding.py <version>")
        sys.exit(1)
    version = sys.argv[1]
    if version not in ['6.5', '7.0', '8.0', '9.0', '10.0']:
        print("Version must be one of 6.5, 7.0, 8.0, 9.0, 10.0")
        sys.exit(1)
        
    generate_modules(version)
