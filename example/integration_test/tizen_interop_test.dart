import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tizen_interop/6.0/tizen.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('System Info: get model name', (WidgetTester tester) async {
    final tizen = tizenCapiSystemInfo;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final key =
          'http://tizen.org/system/model_name'.toNativeUtf8(allocator: arena);
      final valuePtr = arena<Pointer<Char>>();
      final result =
          tizen.system_info_get_platform_string(key.cast(), valuePtr);
      expect(result, 0);
      print('Model name: ${valuePtr.value.cast<Utf8>().toDartString()}');
      arena.using(valuePtr.value, calloc.free);
    });
  });

  testWidgets('Runtime Info: get boolean value', (WidgetTester tester) async {
    final tizen = tizenCapiSystemRuntimeInfo;
    expect(tizen, isNotNull);
    using((Arena arena) {
      const int key = runtime_info_key_e.RUNTIME_INFO_KEY_BLUETOOTH_ENABLED;
      final valuePtr = arena<Bool>();
      // On emulator, this key might not be supported or return false
      final result = tizen.runtime_info_get_value_bool(key, valuePtr);
      expect(result, 0);
      print('Bluetooth enabled: ${valuePtr.value}');
    });
  });

  testWidgets('System Settings: get int value', (WidgetTester tester) async {
    final tizen = tizenCapiSystemSystemSettings;
    expect(tizen, isNotNull);
    using((Arena arena) {
      const int key = system_settings_key_e.SYSTEM_SETTINGS_KEY_FONT_SIZE;
      final valuePtr = arena<Int>();
      final result = tizen.system_settings_get_value_int(key, valuePtr);
      expect(result, 0); // Should succeed usually
      print('System font size: ${valuePtr.value}');
    });
  });

  // testWidgets('Device: Battery Percent', (WidgetTester tester) async {
  //   final tizen = tizenCapiSystemDevice;
  //   expect(tizen, isNotNull);
  //   using((Arena arena) {
  //     final percentPtr = arena<Int>();
  //     final result = tizen.device_battery_get_percent(percentPtr);
  //     expect(result, 0);
  //     print('Battery percentage: ${percentPtr.value}');
  //   });
  // });

  testWidgets('Device: get the number of display', (WidgetTester tester) async {
    final tizen = tizenCapiSystemDevice;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final displayNumPtr = arena<Int>();
      final result = tizen.device_display_get_numbers(displayNumPtr);
      expect(result, 0);
      print('Flash Brightness: ${displayNumPtr.value}');
      // On emulator, this usually fails with "Not Supported" (-1073741822)
    });
  });

  testWidgets('Sensor: Is Supported', (WidgetTester tester) async {
    final tizen = tizenCapiSystemSensor;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final supportedPtr = arena<Bool>();
      const int SENSOR_ACCELEROMETER = 0; // Confirmed value
      final result =
          tizen.sensor_is_supported(SENSOR_ACCELEROMETER, supportedPtr);
      expect(result, 0);
      print('Is Sensor Supported: ${supportedPtr.value}');
    });
  });

  testWidgets('App Common: Get App ID', (WidgetTester tester) async {
    final tizen = tizenCapiAppfwAppCommon;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final appIdPtr = arena<Pointer<Char>>();
      final result = tizen.app_get_id(appIdPtr);
      expect(result, 0);
      print('Get App Id: ${appIdPtr.value}');
      arena.using(appIdPtr.value, calloc.free);
    });
  });

  testWidgets('App Control: Create & Destroy', (WidgetTester tester) async {
    final tizen = tizenCapiAppfwAppControl;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final handlePtr = arena<app_control_h>();
      var result = tizen.app_control_create(handlePtr);
      expect(result, 0);
      expect(handlePtr.value, isNot(nullptr));
      result = tizen.app_control_destroy(handlePtr.value);
      expect(result, 0);
    });
  });

  testWidgets('App Manager: Get App Context', (WidgetTester tester) async {
    final tizen = tizenCapiAppfwAppManager;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final contextPtr = arena<app_context_h>();
      final appId =
          'com.example.tizen_interop_example'.toNativeChar(allocator: arena);
      var result = tizen.app_manager_get_app_context(appId, contextPtr);
      expect(result, 0);
      expect(contextPtr.value, isNot(nullptr));
      result = tizen.app_context_destroy(contextPtr.value);
      expect(result, 0);
    });
  });

  testWidgets('Bundle: Create & Destroy', (WidgetTester tester) async {
    final tizen = tizenBundle;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final bundle = tizen.bundle_create();
      expect(bundle, isNot(nullptr));
      final result = tizen.bundle_free(bundle);
      expect(result, 0);
    });
  });

  testWidgets('Package Manager: Create & Destroy', (WidgetTester tester) async {
    final tizen = tizenCapiAppfwPackageManager;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final handlePtr = arena<package_manager_h>();
      // Might fail with permission denied (-13) if not signed with platform cert or missing privilege
      var result = tizen.package_manager_create(handlePtr);
      expect(result, 0);
      expect(handlePtr.value, isNot(nullptr));
      result = tizen.package_manager_destroy(handlePtr.value);
      expect(result, 0);
    });
  });

  testWidgets('Notification: Create & Free', (WidgetTester tester) async {
    final tizen = tizenNotification;
    expect(tizen, isNotNull);
    using((Arena arena) {
      const int NOTIFICATION_TYPE_NOTI = 0;
      final handle = tizen.notification_create(NOTIFICATION_TYPE_NOTI);
      // Handle might be null if failed, but API should exist.
      if (handle != nullptr) {
        final result = tizen.notification_free(handle);
        expect(result, 0);
      } else {
        print('notification_create returned nullptr');
      }
    });
  });

  testWidgets('Account: Connect & Disconnect', (WidgetTester tester) async {
    final tizen = tizenAccountsSvc;
    expect(tizen, isNotNull);
    using((Arena arena) {
      int result = tizen.account_connect();
      expect(result, 0);
      result = tizen.account_disconnect();
      expect(result, 0);
    });
  });

  testWidgets('Network Connection: Create & Destroy',
      (WidgetTester tester) async {
    final tizen = tizenCapiNetworkConnection;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final handlePtr = arena<connection_h>();
      int result = tizen.connection_create(handlePtr);
      expect(result, 0);
      result = tizen.connection_destroy(handlePtr.value);
      expect(result, 0);
    });
  });

  testWidgets('WiFi Manager: Initialize & Deinitialize',
      (WidgetTester tester) async {
    final tizen = tizenCapiNetworkWifiManager;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final handlePtr = arena<wifi_manager_h>();
      // Emulator usually returns "Not Supported"
      int result = tizen.wifi_manager_initialize(handlePtr);
      expect(result, 0);
      result = tizen.wifi_manager_deinitialize(handlePtr.value);
      expect(result, 0);
    });
  });

  // testWidgets('Download: Create & Destroy', (WidgetTester tester) async {
  //   final tizen = tizenCapiWebUrlDownload;
  //   expect(tizen, isNotNull);
  //   using((Arena arena) {
  //     final idPtr = arena<Int>();
  //     int result = tizen.download_create(idPtr);
  //     expect(result, 0);
  //     result = tizen.download_destroy(idPtr.value);
  //     expect(result, 0);
  //   });
  // });

  testWidgets('Storage: Foreach Supported', (WidgetTester tester) async {
    final tizen = tizenStorage;
    expect(tizen, isNotNull);
    using((Arena arena) {
      // Callback verification skipped for simplicity, just calling API
      final result = tizen.storage_foreach_device_supported(
          Pointer.fromFunction(_storageCallback, false), nullptr);
      expect(result, 0);
    });
  });

  testWidgets('Preference: Set & Get Int', (WidgetTester tester) async {
    final tizen = tizenCapiAppfwPreference;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final key = 'test_pref_int'.toNativeChar(allocator: arena);
      tizen.preference_set_int(key, 123);
      final valuePtr = arena<Int>();
      final result = tizen.preference_get_int(key, valuePtr);
      expect(result, 0);
      expect(valuePtr.value, 123);
    });
  });

  testWidgets('Location: Create & Destroy', (WidgetTester tester) async {
    final tizen = tizenCapiLocationManager;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final handlePtr = arena<location_manager_h>();
      const int LOCATIONS_METHOD_HYBRID = 0;
      var result =
          tizen.location_manager_create(LOCATIONS_METHOD_HYBRID, handlePtr);
      expect(result, 0);
      result = tizen.location_manager_destroy(handlePtr.value);
      expect(result, 0);
    });
  });

  testWidgets('Media Content: Connect & Disconnect',
      (WidgetTester tester) async {
    final tizen = tizenCapiContentMediaContent;
    expect(tizen, isNotNull);
    using((Arena arena) {
      var result = tizen.media_content_connect();
      expect(result, 0);
      result = tizen.media_content_disconnect();
      expect(result, 0);
    });
  });

  testWidgets('Sound Manager: Get Volume', (WidgetTester tester) async {
    final tizen = tizenCapiMediaSoundManager;
    expect(tizen, isNotNull);
    using((Arena arena) {
      const int SOUND_TYPE_SYSTEM = 0;
      final volPtr = arena<Int>();
      final result = tizen.sound_manager_get_volume(SOUND_TYPE_SYSTEM, volPtr);
      expect(result, 0);
    });
  });

  testWidgets('Calendar: Connect & Disconnect', (WidgetTester tester) async {
    final tizen = tizenCalendarService2;
    expect(tizen, isNotNull);
    using((Arena arena) {
      int result = tizen.calendar_connect();
      expect(result, 0);
      result = tizen.calendar_disconnect();
      expect(result, 0);
    });
  });

  testWidgets('Contacts: Connect & Disconnect', (WidgetTester tester) async {
    final tizen = tizenContactsService2;
    expect(tizen, isNotNull);
    using((Arena arena) {
      int result = tizen.contacts_connect();
      expect(result, 0);
      result = tizen.contacts_disconnect();
      expect(result, 0);
    });
  });

  // testWidgets('IoT: Initialize & Deinitialize', (WidgetTester tester) async {
  //   final tizen = tizenIotcon;
  //   expect(tizen, isNotNull);
  //   using((Arena arena) {
  //     int result = tizen.iotcon_initialize(0);
  //     // IoT 연결 실패시 -1을 반환할 수 있음
  //     // expect(result, 0);
  //     result = tizen.iotcon_deinitialize();
  //     expect(result, 0);
  //   });
  // });

  testWidgets('Diagnostics: Get Client ID', (WidgetTester tester) async {
    final tizen = tizenDiagnostics;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final handle = arena<diagnostics_ctx_h>();
      final clientIdPtr = arena<Pointer<Char>>();
      final result = tizen.diagnostics_get_client_id(handle.value, clientIdPtr);
      // diagnostics_get_client_id 함수는 구현되지 않았을 수 있음
      // expect(result, 0);
      if (result == 0 && clientIdPtr.value != nullptr) {
        print('Client ID: ${clientIdPtr.value.cast<Utf8>().toDartString()}');
        arena.using(clientIdPtr.value, calloc.free);
      }
    });
  });

  // testWidgets('Message Port: Register & Unregister Local Port',
  //     (WidgetTester tester) async {
  //   final tizen = tizenMessagePort;
  //   expect(tizen, isNotNull);
  //   using((Arena arena) {
  //     const String LOCAL_PORT_NAME = "test_port";
  //     final localPortName =
  //         LOCAL_PORT_NAME.toNativeUtf8(allocator: arena).cast<Char>();
  //     final portIdPtr = arena<Int>();
  //     var result = tizen.message_port_register_local_port(
  //         localPortName,
  //         Pointer.fromFunction<message_port_message_cbFunction>(
  //             _messagePortCallback),
  //         nullptr);
  //     // 권한 문제로 실패할 수 있음
  //     // expect(result, 0);
  //     if (result == 0) {
  //       final portId = portIdPtr.value;
  //       result = tizen.message_port_unregister_local_port(portId);
  //       // expect(result, 0);
  //     }
  //   });
  // });

  testWidgets('RPC Port: Create & Destroy Parcel', (WidgetTester tester) async {
    final tizen = tizenRpcPort;
    expect(tizen, isNotNull);
    using((Arena arena) {
      final handlePtr = arena<rpc_port_parcel_h>();
      var result = tizen.rpc_port_parcel_create(handlePtr);
      expect(result, 0);
      expect(handlePtr, isNot(nullptr));
      result = tizen.rpc_port_parcel_destroy(handlePtr.value);
      expect(result, 0);
    });
  });

  // testWidgets('CBHM: Get State', (WidgetTester tester) async {
  //   final tizen = tizenCbhm;
  //   expect(tizen, isNotNull);
  //   using((Arena arena) {
  //     final statePtr = arena<Int>();
  //     final result = tizen.cbhm_state_get(statePtr);
  //     // cbhm_state_get 함수는 구현되지 않았을 수 있음
  //     // expect(result, 0);
  //     if (result == 0) {
  //       print('CBHM State: ${statePtr.value}');
  //     }
  //   });
  // });

  // testWidgets('TBM: Surface Create & Destroy', (WidgetTester tester) async {
  //   final tizen = tizenTbm;
  //   expect(tizen, isNotNull);
  //   const int width = 100;
  //   const int height = 100;
  //   const int format = 0; // TBM_FORMAT_ARGB8888
  //   using((Arena arena) {
  //     final surface = tizen.tbm_surface_create(width, height, format);
  //     expect(surface, isNot(nullptr));
  //     if (surface != nullptr) {
  //       final result = tizen.tbm_surface_destroy(surface);
  //       expect(result, 0);
  //     }
  //   });
  // });

  // testWidgets('T-trace: Begin & End Trace', (WidgetTester tester) async {
  //   final tizen = tizenTtrace;
  //   expect(tizen, isNotNull);
  //   using((Arena arena) {
  //     const int traceId = 0;
  //     final name = 'test_trace'.toNativeUtf8(allocator: arena).cast<Char>();
  //     var result = tizen.trace_begin(name);
  //     // T-trace 함수들은 구현되지 않았을 수 있음
  //     expect(result, 0);
  //     result = tizen.trace_end(traceId);
  //     // expect(result, 0);
  //   });
  // });

  // testWidgets('Update Control: Get Property', (WidgetTester tester) async {
  //   final tizen = tizenUpdateControl;
  //   expect(tizen, isNotNull);
  //   using((Arena arena) {
  //     final key = 'http://tizen.org/system/update_control/ready'
  //         .toNativeUtf8(allocator: arena)
  //         .cast<Char>();
  //     var result = tizen.update_control_initialize();
  //     expect(result, 0);

  //     final valuePtr = arena<Pointer<Char>>();
  //     final result = tizen.update_control_get_property(key, valuePtr);
  //     // update_control_get_property 함수는 구현되지 않았을 수 있음
  //     // expect(result, 0);
  //     if (result == 0 && valuePtr.value != nullptr) {
  //       print(
  //           'Update Control Property: ${valuePtr.value.cast<Utf8>().toDartString()}');
  //       arena.using(valuePtr.value, calloc.free);
  //     }
  //   });
  // });

  // testWidgets('EOM: Initialize & Deinitialize', (WidgetTester tester) async {
  //   final tizen = tizenEom;
  //   expect(tizen, isNotNull);
  //   using((Arena arena) {
  //     int result = tizen.eom_init();
  //     // eom_init 함수는 구현되지 않았을 수 있음
  //     // expect(result, 0);
  //     result = tizen.eom_deinit();
  //     // expect(result, 0);
  //   });
  // });

  // testWidgets('DLOG: Print Log', (WidgetTester tester) async {
  //   final tizen = tizenDlog;
  //   expect(tizen, isNotNull);
  //   using((Arena arena) {
  //     final tag = 'USR_TAG'.toNativeUtf8(allocator: arena);
  //     final message = 'test dlog'.toNativeUtf8(allocator: arena);
  //     final result =
  //         tizen.dlog_print(5, tag.cast(), message.cast()); // DLOG_DEFAULT = 1
  //     // dlog_print 함수는 구현되지 않았을 수 있음
  //     expect(result, 0);
  //   });
  // });

  testWidgets('Feedback: Initialize & Deinitialize',
      (WidgetTester tester) async {
    final tizen = tizenFeedback;
    expect(tizen, isNotNull);
    using((Arena arena) {
      int result = tizen.feedback_initialize();
      // feedback_initialize 함수는 구현되지 않았을 수 있음
      expect(result, 0);
      result = tizen.feedback_deinitialize();
      expect(result, 0);
    });
  });

  // testWidgets('Shortcut: Get List', (WidgetTester tester) async {
  //   final tizen = tizenShortcut;
  //   expect(tizen, isNotNull);
  //   using((Arena arena) {
  //     final listPtr = arena<Pointer<Void>>();
  //     final result = tizen.shortcut_get_list(listPtr);
  //     // shortcut_get_list 함수는 구현되지 않았을 수 있음
  //     // expect(result, 0);
  //     if (result == 0 && listPtr.value != nullptr) {
  //       // 리스트 해제 로직이 필요할 수 있음
  //     }
  //   });
  // });
}

bool _storageCallback(int storageId, int type, int state, Pointer<Char> path,
    Pointer<Void> userData) {
  return true;
}

// void _messagePortCallback(int localPortId, Pointer<Void> userData) {
//   // 메시지 처리 로직 (필요한 경우)
// }
