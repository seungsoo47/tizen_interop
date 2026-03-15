#!/usr/bin/env python3
import os
import sys
import glob
import re

def update_tizen_dart(version):
    tizen_dart_path = f'lib/{version}/tizen.dart'
    if not os.path.exists(tizen_dart_path):
        print(f"Error: {tizen_dart_path} not found")
        sys.exit(1)
        
    bindings_dir = f'lib/src/bindings/{version}'
    binding_files = sorted(glob.glob(f'{bindings_dir}/generated_bindings_*.dart'))
    symbol_file_path = f'lib/src/bindings/{version}/generated_symbols.dart'
    
    available_symbols = set()
    if os.path.exists(symbol_file_path):
        with open(symbol_file_path, 'r') as f:
            for line in f:
                match = re.search(r'final ([\w_]+Symbols)', line)
                if match:
                    available_symbols.add(match.group(1))

    imports = ["import 'dart:ffi';", "", f"import '../../src/bindings/{version}/generated_symbols.dart';"]
    exports = []
    getters = []

    for f in binding_files:
        basename = os.path.basename(f)
        module_name = basename.replace('generated_bindings_', '').replace('.dart', '')
        
        if basename == 'generated_bindings.dart': continue
        
        class_name = None
        exported_names = set()
        with open(f, 'r') as b_file:
            for line in b_file:
                match = re.match(r'class (Tizen\w+) \{', line)
                if match and not class_name: class_name = match.group(1)
                
                # Extract structs, classes, typedefs, enums, const int/double/String
                # Example: 'final class media_format_h extends ffi.Opaque {'
                # Example: 'const int VC_COMMAND_TYPE_FOREGROUND = 1;'
                match_class = re.match(r'^(?:final\s+|abstract\s+|base\s+|interface\s+|sealed\s+|mixin\s+)*(?:class|typedef|const\s+(?:int|double|String))\s+([a-zA-Z0-9_]+)', line)
                if match_class: exported_names.add(match_class.group(1))
                match_struct = re.match(r'class\s+([\w_]+)\s+extends\s+(?:Struct|Opaque|Union)', line)
                if match_struct: exported_names.add(match_struct.group(1))
                match_enum = re.match(r'(?:class|abstract class)\s+([\w_]+)\s*\{', line)
                if match_enum and not "{" in match_enum.group(1): exported_names.add(match_enum.group(1))

        if not class_name: continue

        symbol_name = module_name.replace('-', '_') + 'Symbols'
        
        exceptions = {
            'accounts_svc': 'accountsSvcSymbols',
            'appcore_agent': 'appcoreAgentSymbols',
            'calendar_service2': 'calendarService2Symbols',
            'capi_appfw_alarm': 'capiAppfwAlarmSymbols',
            'capi_appfw_app_common': 'capiAppfwAppCommonSymbols',
            'capi_appfw_app_control': 'capiAppfwAppControlSymbols',
            'capi_appfw_app_control_uri': 'capiAppfwAppControlUriSymbols',
            'capi_appfw_app_manager': 'capiAppfwAppManagerSymbols',
            'capi_appfw_application': 'capiAppfwApplicationSymbols',
            'capi_appfw_event': 'capiAppfwEventSymbols',
            'capi_appfw_job_scheduler': 'capiAppfwJobSchedulerSymbols',
            'capi_appfw_package_manager': 'capiAppfwPackageManagerSymbols',
            'capi_appfw_preference': 'capiAppfwPreferenceSymbols',
            'capi_base_common': 'capiBaseCommonSymbols',
            'capi_content_media_content': 'capiContentMediaContentSymbols',
            'capi_content_mime_type': 'capiContentMimeTypeSymbols',
            'capi_context': 'capiContextSymbols',
            'capi_context_motion': 'capiContextMotionSymbols',
            'capi_geofence_manager': 'capiGeofenceManagerSymbols',
            'capi_location_manager': 'capiLocationManagerSymbols',
            'capi_media_audio_io': 'capiMediaAudioIoSymbols',
            'capi_media_camera': 'capiMediaCameraSymbols',
            'capi_media_codec': 'capiMediaCodecSymbols',
            'capi_media_controller': 'capiMediaControllerSymbols',
            'capi_media_image_util': 'capiMediaImageUtilSymbols',
            'capi_media_metadata_editor': 'capiMediaMetadataEditorSymbols',
            'capi_media_metadata_extractor': 'capiMediaMetadataExtractorSymbols',
            'capi_media_player': 'capiMediaPlayerSymbols',
            'capi_media_radio': 'capiMediaRadioSymbols',
            'capi_media_recorder': 'capiMediaRecorderSymbols',
            'capi_media_screen_mirroring': 'capiMediaScreenMirroringSymbols',
            'capi_media_sound_manager': 'capiMediaSoundManagerSymbols',
            'capi_media_sound_pool': 'capiMediaSoundPoolSymbols',
            'capi_media_streamer': 'capiMediaStreamerSymbols',
            'capi_media_streamrecorder': 'capiMediaStreamrecorderSymbols',
            'capi_media_thumbnail_util': 'capiMediaThumbnailUtilSymbols',
            'capi_media_tone_player': 'capiMediaTonePlayerSymbols',
            'capi_media_tool': 'capiMediaToolSymbols',
            'capi_media_wav_player': 'capiMediaWavPlayerSymbols',
            'capi_media_webrtc': 'capiMediaWebrtcSymbols',
            'capi_mediademuxer': 'capiMediademuxerSymbols',
            'capi_mediamuxer': 'capiMediamuxerSymbols',
            'capi_messaging_email': 'capiMessagingEmailSymbols',
            'capi_network_bluetooth': 'capiNetworkBluetoothSymbols',
            'capi_network_connection': 'capiNetworkConnectionSymbols',
            'capi_network_http': 'capiNetworkHttpSymbols',
            'capi_network_inm': 'capiNetworkInmSymbols',
            'capi_network_mtp': 'capiNetworkMtpSymbols',
            'capi_network_softap': 'capiNetworkSoftapSymbols',
            'capi_network_stc': 'capiNetworkStcSymbols',
            'capi_network_wifi_manager': 'capiNetworkWifiManagerSymbols',
            'capi_nnstreamer': 'capiNnstreamerSymbols',
            'capi_nntrainer': 'capiNntrainerSymbols',
            'capi_privacy_privilege_manager': 'capiPrivacyPrivilegeManagerSymbols',
            'capi_system_device': 'capiSystemDeviceSymbols',
            'capi_system_info': 'capiSystemInfoSymbols',
            'capi_system_media_key': 'capiSystemMediaKeySymbols',
            'capi_system_peripheral_io': 'capiSystemPeripheralIoSymbols',
            'capi_system_runtime_info': 'capiSystemRuntimeInfoSymbols',
            'capi_system_sensor': 'capiSystemSensorSymbols',
            'capi_system_system_settings': 'capiSystemSystemSettingsSymbols',
            'capi_system_usbhost': 'capiSystemUsbhostSymbols',
            'capi_ui_autofill': 'capiUiAutofillSymbols',
            'capi_ui_autofill_common': 'capiUiAutofillCommonSymbols',
            'capi_ui_autofill_manager': 'capiUiAutofillManagerSymbols',
            'capi_ui_autofill_service': 'capiUiAutofillServiceSymbols',
            'capi_ui_inputmethod': 'capiUiInputmethodSymbols',
            'capi_ui_inputmethod_manager': 'capiUiInputmethodManagerSymbols',
            'capi_vpnsvc': 'capiVpnsvcSymbols',
            'capi_web_url_download': 'capiWebUrlDownloadSymbols',
            'cbhm': 'cbhmSymbols',
            'cion': 'cionSymbols',
            'contacts_service2': 'contactsService2Symbols',
            'core_sync_client': 'coreSyncClientSymbols',
            'csr_client': 'csrClientSymbols',
            'data_control': 'dataControlSymbols',
            'device_certificate_manager': 'deviceCertificateManagerSymbols',
            'fido_client': 'fidoClientSymbols',
            'key_manager_client': 'keyManagerClientSymbols',
            'message_port': 'messagePortSymbols',
            'nnstreamer': 'capiNnstreamerSymbols',
            'nnstreamer_single': 'capiNnstreamerSymbols',
            'nntrainer': 'capiNntrainerSymbols',
            'notification_ex': 'notificationExSymbols',
            'nsd_dns_sd': 'nsdDnsSdSymbols',
            'nsd_ssdp': 'nsdSsdpSymbols',
            'phonenumber_utils': 'phonenumberUtilsSymbols',
            'privilege_info': 'privilegeInfoSymbols',
            'rpc_port': 'rpcPortSymbols',
            'update_control': 'updateControlSymbols',
            'webrtc': 'capiMediaWebrtcSymbols',
            'wifi_direct': 'wifiDirectSymbols',
            'mv_barcode_detector': 'mv_barcode_detectorSymbols',
            'mv_barcode_generator': 'mv_barcode_generatorSymbols',
            'mv_barcode': 'mv_barcodeSymbols',
            'mv_common': 'mv_commonSymbols',
            'mv_face': 'mv_faceSymbols',
            'mv_image': 'mv_imageSymbols',
            'mv_inference': 'mv_inferenceSymbols',
            'mv_surveillance': 'mv_surveillanceSymbols',
            'stt_engine': 'stt_engineSymbols',
            'tts_engine': 'tts_engineSymbols',
            'vc_engine': 'vc_engineSymbols',
            'vc_manager': 'vc_managerSymbols',
            'app_control_uri': 'capiAppfwAppControlUriSymbols',
            'media_editor': 'capiMediaEditorSymbols',
            'ml_api_service': 'capiMlServiceSymbols',
            'resource_monitor': 'capiSystemResourceMonitorSymbols',
        }
        
        camel_candidate = "".join(p.capitalize() for p in module_name.split("_"))
        camel_candidate_lower = camel_candidate[0].lower() + camel_candidate[1:] + "Symbols"
        
        if module_name in exceptions: symbol_name = exceptions[module_name]
        elif camel_candidate_lower in available_symbols: symbol_name = camel_candidate_lower
            
        imports.append(f"import '../../src/bindings/{version}/{basename}';")
        
        hidden_names = []
        possible_hidden_names = []
        if basename == 'generated_bindings_stt.dart':
            possible_hidden_names.append('stt_h')
        elif basename == 'generated_bindings_tts.dart':
            possible_hidden_names.append('tts_h')
        elif basename == 'generated_bindings_vc_manager.dart':
            possible_hidden_names.extend(['vc_cmd_list_h', 'vc_cmd_list_s', 'vc_supported_language_cb', 'vc_supported_language_cbFunction', 'Dartvc_supported_language_cbFunction', 'vc_state_e', 'vc_service_state_e', 'vc_result_event_e', 'vc_result_cb', 'vc_result_cbFunction', 'Dartvc_result_cbFunction', 'vc_state_changed_cb', 'vc_state_changed_cbFunction', 'Dartvc_state_changed_cbFunction', 'vc_service_state_changed_cb', 'vc_service_state_changed_cbFunction', 'Dartvc_service_state_changed_cbFunction', 'vc_current_language_changed_cb', 'vc_current_language_changed_cbFunction', 'Dartvc_current_language_changed_cbFunction', 'vc_error_cb', 'vc_error_cbFunction', 'Dartvc_error_cbFunction', 'vc_error_e', 'vc_audio_channel_e', 'vc_audio_type_e', 'vc_feedback_event_e', 'vc_tts_utterance_status_e', 'VC_COMMAND_TYPE_FOREGROUND', 'VC_COMMAND_TYPE_BACKGROUND', 'VC_COMMAND_TYPE_ALL', 'VC_RESULT_MESSAGE_SUCCESS', 'VC_RESULT_MESSAGE_REJECTED', 'VC_RESULT_MESSAGE_NONE', 'VC_RESULT_MESSAGE_ERROR_TOO_LOUD'])
        elif basename == 'generated_bindings_webrtc.dart':
            possible_hidden_names.extend(['bundle', 'media_format_h', 'media_packet_h', 'sound_stream_info_h', 'sound_stream_info_s', 'media_format_s', 'media_packet_s', 'UnnamedStruct1', 'UnnamedStruct2', 'UnnamedUnion1'])
        elif basename == 'generated_bindings_csr_client.dart':
            possible_hidden_names.extend(['time_t', 'Dart__time_t', 'Darttime_t'])
        elif basename == 'generated_bindings_data_control.dart':
            possible_hidden_names.extend(['bundle'])
        elif basename == 'generated_bindings_diagnostics.dart':
            possible_hidden_names.extend(['bundle'])
        elif basename == 'generated_bindings_eom.dart':
            possible_hidden_names.extend(['Evas_Object', '_Evas_Object', 'Efl_Canvas_Object', 'Eo', '_Eo'])
        elif basename == 'generated_bindings_message_port.dart':
            possible_hidden_names.extend(['bundle'])
        elif basename == 'generated_bindings_mv_common.dart':
            possible_hidden_names.extend(['media_packet_h', 'media_packet_s', 'Dartmedia_packet_hFunction'])
        elif basename.startswith('generated_bindings_mv_') and basename != 'generated_bindings_mv_common.dart':
            possible_hidden_names.extend(['mv_source_h', 'mv_source_s', 'mv_engine_config_h', 'mv_rectangle_s', 'mv_point_s', 'mv_quadrangle_s'])
        elif basename in ['generated_bindings_nnstreamer.dart', 'generated_bindings_nnstreamer_single.dart', 'generated_bindings_nntrainer.dart']:
            possible_hidden_names.extend(['ml_tensors_info_h', 'ml_tensors_info_s', 'ml_nnfw_type_e', 'ml_nnfw_hw_e', 'ml_tensors_data_h', 'ml_tensors_data_s', 'ml_pipeline_state_e', 'ml_option_h', 'ml_option_s'])
        elif basename == 'generated_bindings_notification.dart':
            possible_hidden_names.extend(['time_t', 'Dart__time_t', 'Darttime_t', 'app_control_h', 'app_control_s', 'bundle', 'notification_h'])
        elif basename == 'generated_bindings_notification_ex.dart':
            possible_hidden_names.extend(['time_t', 'Dart__time_t', 'Darttime_t', 'app_control_h', 'app_control_s', 'bundle'])
        elif basename == 'generated_bindings_push.dart':
            possible_hidden_names.extend(['app_control_h', 'app_control_s'])
        elif basename == 'generated_bindings_rpc_port.dart':
            possible_hidden_names.extend(['bundle', 'time_t', 'Dart__time_t', 'Darttime_t'])
        elif basename == 'generated_bindings_yaca.dart':
            possible_hidden_names.extend(['yaca_key_s', 'yaca_context_s'])
        elif basename == 'generated_bindings_core_sync_client.dart':
            possible_hidden_names.extend(['account_h', 'account_s', 'bundle'])
        elif basename == 'generated_bindings_capi_web_url_download.dart':
            possible_hidden_names.extend(['app_control_h', 'app_control_s'])
        elif basename == 'generated_bindings_capi_ui_autofill_common.dart':
            possible_hidden_names.extend(['autofill_auth_info_s', 'autofill_view_info_s', 'autofill_fill_response_s', 'autofill_save_view_info_s', 'autofill_error_info_s', 'autofill_auth_info_h', 'autofill_view_info_h', 'autofill_save_view_info_h', 'autofill_fill_response_h', 'autofill_error_info_h'])
        elif basename == 'generated_bindings_capi_ui_autofill_service.dart':
            possible_hidden_names.extend(['autofill_view_info_h', 'autofill_view_info_s', 'autofill_auth_info_h', 'autofill_auth_info_s', 'autofill_fill_response_h', 'autofill_fill_response_s', 'autofill_save_view_info_h', 'autofill_save_view_info_s', 'autofill_error_info_h', 'autofill_error_info_s'])
        elif basename == 'generated_bindings_capi_system_sensor.dart':
            possible_hidden_names.extend(['sensor_h', 'time_t', 'Dart__time_t', 'Darttime_t'])
        elif basename in ['generated_bindings_capi_network_softap.dart', 'generated_bindings_capi_network_stc.dart', 'generated_bindings_capi_location_manager.dart']:
            possible_hidden_names.extend(['time_t', 'Dart__time_t', 'Darttime_t'])
        elif basename == 'generated_bindings_capi_media_wav_player.dart':
            possible_hidden_names.extend(['sound_stream_info_h', 'sound_stream_info_s', 'media_packet_h', 'audio_sample_type_e'])
        elif basename == 'generated_bindings_capi_media_player.dart':
            possible_hidden_names.extend(['sound_stream_info_h', 'sound_stream_info_s', 'media_packet_h', 'media_packet_s', 'audio_sample_type_e', 'media_format_h', 'media_format_s'])
        elif basename == 'generated_bindings_capi_media_recorder.dart':
            possible_hidden_names.extend(['sound_stream_info_h', 'sound_stream_info_s', 'media_packet_h', 'audio_sample_type_e', 'camera_preview_data_s', 'camera_h', 'camera_cli_s', 'camera_pixel_format_e', 'UnnamedUnion1', 'UnnamedStruct1', 'UnnamedStruct2', 'UnnamedStruct3', 'UnnamedStruct4', 'UnnamedStruct5', 'UnnamedStruct6'])
        elif basename == 'generated_bindings_capi_media_tone_player.dart':
            possible_hidden_names.extend(['sound_stream_info_h', 'sound_stream_info_s', 'media_packet_h', 'audio_sample_type_e'])
        elif basename in ['generated_bindings_capi_mediademuxer.dart', 'generated_bindings_capi_mediamuxer.dart']:
            possible_hidden_names.extend(['media_format_h', 'media_format_s', 'media_packet_h', 'media_packet_s'])
        elif basename == 'generated_bindings_capi_media_sound_manager.dart':
            possible_hidden_names.extend(['sound_type_e', 'sound_stream_info_s', 'sound_stream_info_h'])
        elif basename in ['generated_bindings_capi_media_streamrecorder.dart', 'generated_bindings_capi_media_image_util.dart']:
            possible_hidden_names.extend(['media_packet_h', 'media_packet_s'])
        elif basename == 'generated_bindings_capi_media_streamer.dart':
            possible_hidden_names.extend(['media_packet_h', 'media_packet_s', 'media_format_h', 'media_format_s', 'bundle'])
        elif basename == 'generated_bindings_capi_media_tool.dart':
            possible_hidden_names.extend(['media_format_s', 'media_format_h', 'media_packet_s', 'media_packet_h', 'tbm_surface_h', 'media_format_mimetype_e'])
        elif basename == 'generated_bindings_capi_media_controller.dart':
            possible_hidden_names.extend(['bundle'])
        elif basename == 'generated_bindings_capi_media_camera.dart':
            possible_hidden_names.extend(['UnnamedUnion1', 'UnnamedStruct1', 'media_packet_h', 'media_packet_s'])
        elif basename == 'generated_bindings_capi_context.dart':
            possible_hidden_names.extend(['app_control_h', 'app_control_s'])
        elif basename == 'generated_bindings_capi_appfw_alarm.dart':
            possible_hidden_names.extend(['app_control_h', 'app_control_s'])
        elif basename == 'generated_bindings_capi_appfw_app_common.dart':
            possible_hidden_names.extend(['app_event_type_e', 'app_event_handler', 'app_event_info', 'app_event_info_h'])
        elif basename == 'generated_bindings_capi_appfw_app_control.dart':
            possible_hidden_names.extend(['app_control_s', 'app_control_h', 'app_control_uri_h'])
        elif basename == 'generated_bindings_capi_appfw_application.dart':
            possible_hidden_names.extend(['app_control_h', 'app_control_s', 'app_device_orientation_e', 'app_event_handler_h', 'app_event_handler', 'app_event_type_e', 'app_event_cb', 'app_event_cbFunction', 'Dartapp_event_cbFunction', 'app_event_info_h', 'app_event_info'])
        elif basename == 'generated_bindings_capi_appfw_event.dart':
            possible_hidden_names.extend(['bundle'])
        elif basename == 'generated_bindings_update_control.dart':
            possible_hidden_names.extend(['tm'])
            
        for name in possible_hidden_names:
            if name in exported_names:
                hidden_names.append(name)

        if hidden_names:
            exports.append(f"export '../../src/bindings/{version}/{basename}' hide {', '.join(hidden_names)};")
        else:
            exports.append(f"export '../../src/bindings/{version}/{basename}';")
        
        var_name = class_name[0].lower() + class_name[1:].replace('_', '')
        
        getter = f"""{class_name}? _{var_name};
{class_name} get {var_name} =>
    _{var_name} ??= _getTizenInstance(
        {symbol_name}, {class_name}.fromLookup)!;
"""
        getters.append(getter)

    imports.append(f"import '../../src/lookup_provider.dart';")
    exports.insert(0, f"export '../../src/extensions.dart';")

    new_content = "library tizen_interop;\n\n"
    new_content += "\n".join(imports) + "\n\n"
    new_content += "\n".join(exports) + "\n\n"
    new_content += "final _lookupProvider = LookupProvider();\n\n"
    new_content += """S _getTizenInstance<S>(Map<String, List<String>> symbolMap,
    S Function(Pointer<T> Function<T extends NativeType>(String)) fromLookup) {
  return fromLookup(
    <T extends NativeType>(String symbolName) {
      _lookupProvider.registerSymbols(symbolMap);
      return _lookupProvider.lookup<T>(symbolName);
    },
  );
}

"""
    new_content += "\n".join(getters)
    
    with open(tizen_dart_path, 'w') as f:
        f.write(new_content)
        
    print(f"Updated {tizen_dart_path}")

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python3 update_tizen_dart.py <version>")
        sys.exit(1)
    update_tizen_dart(sys.argv[1])
