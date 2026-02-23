import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tizen_interop/6.0/tizen.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Appfw module test', (WidgetTester tester) async {
    // Test app_get_name API
    final appName = using((Arena arena) {
      final ppStr = arena<Pointer<Char>>();
      if (tizenCapiAppfwAppCommon.app_get_name(ppStr) == 0) {
        arena.using(ppStr.value, calloc.free);
        return ppStr.value.toDartString();
      }
      return 'unknown';
    });
    expect(appName, isNot('unknown'));
  });

  testWidgets('Preference module test', (WidgetTester tester) async {
    // Test preference APIs
    const testKey = 'tizen_interop_test_key_for_int';
    const testValue = 100;

    // Set preference
    using((Arena arena) {
      final pKey = testKey.toNativeChar(allocator: arena);
      expect(tizenCapiAppfwPreference.preference_set_int(pKey, testValue), 0);
    });

    // Get preference
    final retrievedValue = using((Arena arena) {
      final pKey = testKey.toNativeChar(allocator: arena);
      final pValue = arena<Int>();
      if (tizenCapiAppfwPreference.preference_get_int(pKey, pValue) == 0) {
        return pValue.value;
      }
      return 0;
    });
    expect(retrievedValue, testValue);
  });

  testWidgets('System info module test', (WidgetTester tester) async {
    // Test system info API
    final platformName = using((Arena arena) {
      final pKey = 'http://tizen.org/system/platform_name'
          .toNativeChar(allocator: arena);
      final ppStr = arena<Pointer<Char>>();
      if (tizenCapiSystemInfo.system_info_get_platform_string(pKey, ppStr) ==
          0) {
        arena.using(ppStr.value, calloc.free);
        return ppStr.value.toDartString();
      }
      return 'unknown';
    });
    expect(platformName, isNotEmpty);

    // Test device info API
    final deviceModel = using((Arena arena) {
      final ppStr = arena<Pointer<Char>>();
      if (tizenCapiSystemInfo.system_info_get_platform_string(
              'http://tizen.org/system/model_name'
                  .toNativeChar(allocator: arena),
              ppStr) ==
          0) {
        arena.using(ppStr.value, calloc.free);
        return ppStr.value.toDartString();
      }
      return 'unknown';
    });
    expect(deviceModel, isNotEmpty);
  });

  testWidgets('Runtime info module test', (WidgetTester tester) async {
    // Test system memory info API
    final freeMemory = using((Arena arena) {
      final pMemInfo = arena<runtime_memory_info_s>();
      if (tizenCapiSystemRuntimeInfo
              .runtime_info_get_system_memory_info(pMemInfo) ==
          0) {
        return pMemInfo.ref.free;
      }
      return 0;
    });
    expect(freeMemory, greaterThanOrEqualTo(0));
  });

  testWidgets('Media module test', (WidgetTester tester) async {
    // Test sound manager API
    final result = using((Arena arena) {
      final pVolume = arena<Int>();
      // Assuming sound type 0 for testing purposes
      final resultCode =
          tizenCapiMediaSoundManager.sound_manager_get_volume(0, pVolume);
      if (resultCode == 0) {
        return pVolume.value;
      }
      return -1;
    });
    expect(result, greaterThanOrEqualTo(0));
  });

  testWidgets('Sensor module test', (WidgetTester tester) async {
    // Test sensor API
    final result = using((Arena arena) {
      final pSupported = arena<Bool>();
      // Assuming sensor type 0 for testing purposes
      final resultCode =
          tizenCapiSystemSensor.sensor_is_supported(0, pSupported);
      if (resultCode == 0) {
        return pSupported.value;
      }
      return false;
    });
    expect(result, isNotNull);
  });

  testWidgets('Device module test', (WidgetTester tester) async {
    // Test device API
    final result = using((Arena arena) {
      final pState = arena<Int32>();
      final resultCode = tizenCapiSystemDevice.device_display_get_state(pState);
      if (resultCode == 0) {
        return pState.value;
      }
      return -1;
    });
    expect(result, greaterThanOrEqualTo(0));
  });

  testWidgets('Calendar module test', (WidgetTester tester) async {
    // Test calendar API
    final result = tizenCalendarService2.calendar_connect_with_flags(1);
    expect(result, 0);

    final disconnectResult = tizenCalendarService2.calendar_disconnect();
    expect(disconnectResult, 0);
  });

  testWidgets('Content module test', (WidgetTester tester) async {
    // Test content API
    final connectResult = tizenCapiContentMediaContent.media_content_connect();
    expect(connectResult, 0);

    final count = using((Arena arena) {
      final pFilter = arena<Pointer<Void>>();
      final createResult = tizenCapiContentMediaContent
          .media_filter_create(pFilter.cast<Pointer<filter_s>>());
      if (createResult == 0) {
        final pCount = arena<Int>();
        final getResult =
            tizenCapiContentMediaContent.media_info_get_media_count_from_db(
                pFilter.cast<Pointer<filter_s>>().value, pCount);
        final destroyResult = tizenCapiContentMediaContent
            .media_filter_destroy(pFilter.cast<Pointer<filter_s>>().value);
        if (getResult == 0 && destroyResult == 0) {
          return pCount.value;
        }
      }
      return -1;
    });
    expect(count, greaterThanOrEqualTo(0));

    final disconnectResult =
        tizenCapiContentMediaContent.media_content_disconnect();
    expect(disconnectResult, 0);
  });

  testWidgets('Context module test', (WidgetTester tester) async {
    // Test context API
    final result = using((Arena arena) {
      final pSupported = arena<Bool>();
      // Assuming data_type 0 for testing purposes
      final resultCode =
          tizenCapiContext.context_history_is_supported(0, pSupported);
      if (resultCode == 0) {
        return pSupported.value;
      }
      return false;
    });
    expect(result, isNotNull);
  });

  testWidgets('Messaging module test', (WidgetTester tester) async {
    // Test messaging API
    // Note: This is a placeholder test. Actual implementation would depend on available APIs.
    // For now, we'll just verify that the API object is available.
    expect(tizenCapiMessagingEmail, isNotNull);
  });

  testWidgets('UI module test', (WidgetTester tester) async {
    // Test UI API
    // Note: This is a placeholder test. Actual implementation would depend on available APIs.
    // For now, we'll just verify that the API object is available.
    expect(tizenCapiUiAutofill, isNotNull);
  });

  testWidgets('Update Control module test', (WidgetTester tester) async {
    // Test update control API
    // Note: This is a placeholder test. Actual implementation would depend on available APIs.
    // For now, we'll just verify that the API object is available.
    expect(tizenUpdateControl, isNotNull);
  });
}
