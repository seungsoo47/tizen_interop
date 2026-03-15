library tizen_interop;

import 'dart:ffi';

import '../../src/bindings/6.5/generated_symbols.dart';
import '../../src/bindings/6.5/generated_bindings_accounts_svc.dart';
import '../../src/bindings/6.5/generated_bindings_app_control_uri.dart';
import '../../src/bindings/6.5/generated_bindings_appcore_agent.dart';
import '../../src/bindings/6.5/generated_bindings_asp.dart';
import '../../src/bindings/6.5/generated_bindings_badge.dart';
import '../../src/bindings/6.5/generated_bindings_bundle.dart';
import '../../src/bindings/6.5/generated_bindings_calendar_service2.dart';
import '../../src/bindings/6.5/generated_bindings_capi_appfw_alarm.dart';
import '../../src/bindings/6.5/generated_bindings_capi_appfw_app_common.dart';
import '../../src/bindings/6.5/generated_bindings_capi_appfw_app_control.dart';
import '../../src/bindings/6.5/generated_bindings_capi_appfw_app_manager.dart';
import '../../src/bindings/6.5/generated_bindings_capi_appfw_application.dart';
import '../../src/bindings/6.5/generated_bindings_capi_appfw_event.dart';
import '../../src/bindings/6.5/generated_bindings_capi_appfw_job_scheduler.dart';
import '../../src/bindings/6.5/generated_bindings_capi_appfw_package_manager.dart';
import '../../src/bindings/6.5/generated_bindings_capi_appfw_preference.dart';
import '../../src/bindings/6.5/generated_bindings_capi_base_common.dart';
import '../../src/bindings/6.5/generated_bindings_capi_content_media_content.dart';
import '../../src/bindings/6.5/generated_bindings_capi_content_mime_type.dart';
import '../../src/bindings/6.5/generated_bindings_capi_context.dart';
import '../../src/bindings/6.5/generated_bindings_capi_geofence_manager.dart';
import '../../src/bindings/6.5/generated_bindings_capi_location_manager.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_audio_io.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_camera.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_codec.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_controller.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_image_util.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_metadata_editor.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_metadata_extractor.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_player.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_radio.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_recorder.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_screen_mirroring.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_sound_manager.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_sound_pool.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_streamer.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_streamrecorder.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_thumbnail_util.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_tone_player.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_tool.dart';
import '../../src/bindings/6.5/generated_bindings_capi_media_wav_player.dart';
import '../../src/bindings/6.5/generated_bindings_capi_mediademuxer.dart';
import '../../src/bindings/6.5/generated_bindings_capi_mediamuxer.dart';
import '../../src/bindings/6.5/generated_bindings_capi_messaging_email.dart';
import '../../src/bindings/6.5/generated_bindings_capi_network_bluetooth.dart';
import '../../src/bindings/6.5/generated_bindings_capi_network_connection.dart';
import '../../src/bindings/6.5/generated_bindings_capi_network_http.dart';
import '../../src/bindings/6.5/generated_bindings_capi_network_inm.dart';
import '../../src/bindings/6.5/generated_bindings_capi_network_softap.dart';
import '../../src/bindings/6.5/generated_bindings_capi_network_stc.dart';
import '../../src/bindings/6.5/generated_bindings_capi_network_wifi_manager.dart';
import '../../src/bindings/6.5/generated_bindings_capi_privacy_privilege_manager.dart';
import '../../src/bindings/6.5/generated_bindings_capi_system_device.dart';
import '../../src/bindings/6.5/generated_bindings_capi_system_info.dart';
import '../../src/bindings/6.5/generated_bindings_capi_system_media_key.dart';
import '../../src/bindings/6.5/generated_bindings_capi_system_peripheral_io.dart';
import '../../src/bindings/6.5/generated_bindings_capi_system_runtime_info.dart';
import '../../src/bindings/6.5/generated_bindings_capi_system_sensor.dart';
import '../../src/bindings/6.5/generated_bindings_capi_system_system_settings.dart';
import '../../src/bindings/6.5/generated_bindings_capi_system_usbhost.dart';
import '../../src/bindings/6.5/generated_bindings_capi_ui_autofill.dart';
import '../../src/bindings/6.5/generated_bindings_capi_ui_autofill_common.dart';
import '../../src/bindings/6.5/generated_bindings_capi_ui_autofill_manager.dart';
import '../../src/bindings/6.5/generated_bindings_capi_ui_autofill_service.dart';
import '../../src/bindings/6.5/generated_bindings_capi_ui_inputmethod.dart';
import '../../src/bindings/6.5/generated_bindings_capi_ui_inputmethod_manager.dart';
import '../../src/bindings/6.5/generated_bindings_capi_vpnsvc.dart';
import '../../src/bindings/6.5/generated_bindings_capi_web_url_download.dart';
import '../../src/bindings/6.5/generated_bindings_cbhm.dart';
import '../../src/bindings/6.5/generated_bindings_contacts_service2.dart';
import '../../src/bindings/6.5/generated_bindings_core_sync_client.dart';
import '../../src/bindings/6.5/generated_bindings_csr_client.dart';
import '../../src/bindings/6.5/generated_bindings_data_control.dart';
import '../../src/bindings/6.5/generated_bindings_device_certificate_manager.dart';
import '../../src/bindings/6.5/generated_bindings_diagnostics.dart';
import '../../src/bindings/6.5/generated_bindings_dlog.dart';
import '../../src/bindings/6.5/generated_bindings_dpm.dart';
import '../../src/bindings/6.5/generated_bindings_eom.dart';
import '../../src/bindings/6.5/generated_bindings_feedback.dart';
import '../../src/bindings/6.5/generated_bindings_fido_client.dart';
import '../../src/bindings/6.5/generated_bindings_iotcon.dart';
import '../../src/bindings/6.5/generated_bindings_key_manager_client.dart';
import '../../src/bindings/6.5/generated_bindings_ma.dart';
import '../../src/bindings/6.5/generated_bindings_message_port.dart';
import '../../src/bindings/6.5/generated_bindings_mv_common.dart';
import '../../src/bindings/6.5/generated_bindings_mv_face.dart';
import '../../src/bindings/6.5/generated_bindings_mv_image.dart';
import '../../src/bindings/6.5/generated_bindings_mv_inference.dart';
import '../../src/bindings/6.5/generated_bindings_mv_surveillance.dart';
import '../../src/bindings/6.5/generated_bindings_nnstreamer.dart';
import '../../src/bindings/6.5/generated_bindings_nnstreamer_single.dart';
import '../../src/bindings/6.5/generated_bindings_nntrainer.dart';
import '../../src/bindings/6.5/generated_bindings_notification.dart';
import '../../src/bindings/6.5/generated_bindings_notification_ex.dart';
import '../../src/bindings/6.5/generated_bindings_nsd_dns_sd.dart';
import '../../src/bindings/6.5/generated_bindings_nsd_ssdp.dart';
import '../../src/bindings/6.5/generated_bindings_oauth2.dart';
import '../../src/bindings/6.5/generated_bindings_phonenumber_utils.dart';
import '../../src/bindings/6.5/generated_bindings_privilege_info.dart';
import '../../src/bindings/6.5/generated_bindings_push.dart';
import '../../src/bindings/6.5/generated_bindings_rpc_port.dart';
import '../../src/bindings/6.5/generated_bindings_shortcut.dart';
import '../../src/bindings/6.5/generated_bindings_storage.dart';
import '../../src/bindings/6.5/generated_bindings_stt.dart';
import '../../src/bindings/6.5/generated_bindings_stt_engine.dart';
import '../../src/bindings/6.5/generated_bindings_tbm.dart';
import '../../src/bindings/6.5/generated_bindings_ttrace.dart';
import '../../src/bindings/6.5/generated_bindings_tts.dart';
import '../../src/bindings/6.5/generated_bindings_tts_engine.dart';
import '../../src/bindings/6.5/generated_bindings_update_control.dart';
import '../../src/bindings/6.5/generated_bindings_vc.dart';
import '../../src/bindings/6.5/generated_bindings_vc_engine.dart';
import '../../src/bindings/6.5/generated_bindings_vc_manager.dart';
import '../../src/bindings/6.5/generated_bindings_webrtc.dart';
import '../../src/bindings/6.5/generated_bindings_wifi_direct.dart';
import '../../src/bindings/6.5/generated_bindings_yaca.dart';
import '../../src/lookup_provider.dart';

export '../../src/extensions.dart';
export '../../src/bindings/6.5/generated_bindings_accounts_svc.dart';
export '../../src/bindings/6.5/generated_bindings_app_control_uri.dart';
export '../../src/bindings/6.5/generated_bindings_appcore_agent.dart';
export '../../src/bindings/6.5/generated_bindings_asp.dart';
export '../../src/bindings/6.5/generated_bindings_badge.dart';
export '../../src/bindings/6.5/generated_bindings_bundle.dart';
export '../../src/bindings/6.5/generated_bindings_calendar_service2.dart';
export '../../src/bindings/6.5/generated_bindings_capi_appfw_alarm.dart' hide app_control_h, app_control_s;
export '../../src/bindings/6.5/generated_bindings_capi_appfw_app_common.dart' hide app_event_type_e, app_event_handler, app_event_info, app_event_info_h;
export '../../src/bindings/6.5/generated_bindings_capi_appfw_app_control.dart' hide app_control_s, app_control_h, app_control_uri_h;
export '../../src/bindings/6.5/generated_bindings_capi_appfw_app_manager.dart';
export '../../src/bindings/6.5/generated_bindings_capi_appfw_application.dart' hide app_control_h, app_control_s, app_device_orientation_e, app_event_handler_h, app_event_handler, app_event_type_e, app_event_cb, app_event_cbFunction, Dartapp_event_cbFunction, app_event_info_h, app_event_info;
export '../../src/bindings/6.5/generated_bindings_capi_appfw_event.dart' hide bundle;
export '../../src/bindings/6.5/generated_bindings_capi_appfw_job_scheduler.dart';
export '../../src/bindings/6.5/generated_bindings_capi_appfw_package_manager.dart';
export '../../src/bindings/6.5/generated_bindings_capi_appfw_preference.dart';
export '../../src/bindings/6.5/generated_bindings_capi_base_common.dart';
export '../../src/bindings/6.5/generated_bindings_capi_content_media_content.dart';
export '../../src/bindings/6.5/generated_bindings_capi_content_mime_type.dart';
export '../../src/bindings/6.5/generated_bindings_capi_context.dart' hide app_control_h, app_control_s;
export '../../src/bindings/6.5/generated_bindings_capi_geofence_manager.dart';
export '../../src/bindings/6.5/generated_bindings_capi_location_manager.dart' hide time_t, Dart__time_t;
export '../../src/bindings/6.5/generated_bindings_capi_media_audio_io.dart';
export '../../src/bindings/6.5/generated_bindings_capi_media_camera.dart' hide UnnamedUnion1, UnnamedStruct1, media_packet_h, media_packet_s;
export '../../src/bindings/6.5/generated_bindings_capi_media_codec.dart';
export '../../src/bindings/6.5/generated_bindings_capi_media_controller.dart' hide bundle;
export '../../src/bindings/6.5/generated_bindings_capi_media_image_util.dart' hide media_packet_h, media_packet_s;
export '../../src/bindings/6.5/generated_bindings_capi_media_metadata_editor.dart';
export '../../src/bindings/6.5/generated_bindings_capi_media_metadata_extractor.dart';
export '../../src/bindings/6.5/generated_bindings_capi_media_player.dart' hide sound_stream_info_h, sound_stream_info_s, media_packet_h, media_packet_s, media_format_h, media_format_s;
export '../../src/bindings/6.5/generated_bindings_capi_media_radio.dart';
export '../../src/bindings/6.5/generated_bindings_capi_media_recorder.dart' hide sound_stream_info_h, sound_stream_info_s, audio_sample_type_e, camera_preview_data_s, camera_h, camera_cli_s, camera_pixel_format_e, UnnamedUnion1, UnnamedStruct1, UnnamedStruct2, UnnamedStruct3, UnnamedStruct4, UnnamedStruct5, UnnamedStruct6;
export '../../src/bindings/6.5/generated_bindings_capi_media_screen_mirroring.dart';
export '../../src/bindings/6.5/generated_bindings_capi_media_sound_manager.dart' hide sound_type_e, sound_stream_info_s, sound_stream_info_h;
export '../../src/bindings/6.5/generated_bindings_capi_media_sound_pool.dart';
export '../../src/bindings/6.5/generated_bindings_capi_media_streamer.dart' hide media_packet_h, media_packet_s, media_format_h, media_format_s, bundle;
export '../../src/bindings/6.5/generated_bindings_capi_media_streamrecorder.dart' hide media_packet_h, media_packet_s;
export '../../src/bindings/6.5/generated_bindings_capi_media_thumbnail_util.dart';
export '../../src/bindings/6.5/generated_bindings_capi_media_tone_player.dart' hide sound_stream_info_h, sound_stream_info_s;
export '../../src/bindings/6.5/generated_bindings_capi_media_tool.dart' hide media_format_s, media_format_h, media_packet_s, media_packet_h, tbm_surface_h, media_format_mimetype_e;
export '../../src/bindings/6.5/generated_bindings_capi_media_wav_player.dart' hide sound_stream_info_h, sound_stream_info_s;
export '../../src/bindings/6.5/generated_bindings_capi_mediademuxer.dart' hide media_format_h, media_format_s, media_packet_h, media_packet_s;
export '../../src/bindings/6.5/generated_bindings_capi_mediamuxer.dart' hide media_format_h, media_format_s, media_packet_h, media_packet_s;
export '../../src/bindings/6.5/generated_bindings_capi_messaging_email.dart';
export '../../src/bindings/6.5/generated_bindings_capi_network_bluetooth.dart';
export '../../src/bindings/6.5/generated_bindings_capi_network_connection.dart';
export '../../src/bindings/6.5/generated_bindings_capi_network_http.dart';
export '../../src/bindings/6.5/generated_bindings_capi_network_inm.dart';
export '../../src/bindings/6.5/generated_bindings_capi_network_softap.dart' hide time_t, Dart__time_t;
export '../../src/bindings/6.5/generated_bindings_capi_network_stc.dart' hide time_t, Dart__time_t;
export '../../src/bindings/6.5/generated_bindings_capi_network_wifi_manager.dart';
export '../../src/bindings/6.5/generated_bindings_capi_privacy_privilege_manager.dart';
export '../../src/bindings/6.5/generated_bindings_capi_system_device.dart';
export '../../src/bindings/6.5/generated_bindings_capi_system_info.dart';
export '../../src/bindings/6.5/generated_bindings_capi_system_media_key.dart';
export '../../src/bindings/6.5/generated_bindings_capi_system_peripheral_io.dart';
export '../../src/bindings/6.5/generated_bindings_capi_system_runtime_info.dart';
export '../../src/bindings/6.5/generated_bindings_capi_system_sensor.dart' hide sensor_h, time_t, Dart__time_t;
export '../../src/bindings/6.5/generated_bindings_capi_system_system_settings.dart';
export '../../src/bindings/6.5/generated_bindings_capi_system_usbhost.dart';
export '../../src/bindings/6.5/generated_bindings_capi_ui_autofill.dart';
export '../../src/bindings/6.5/generated_bindings_capi_ui_autofill_common.dart' hide autofill_auth_info_s, autofill_view_info_s, autofill_fill_response_s, autofill_save_view_info_s, autofill_error_info_s, autofill_auth_info_h, autofill_view_info_h, autofill_save_view_info_h, autofill_fill_response_h, autofill_error_info_h;
export '../../src/bindings/6.5/generated_bindings_capi_ui_autofill_manager.dart';
export '../../src/bindings/6.5/generated_bindings_capi_ui_autofill_service.dart' hide autofill_view_info_h, autofill_view_info_s, autofill_auth_info_h, autofill_auth_info_s, autofill_fill_response_h, autofill_fill_response_s, autofill_save_view_info_h, autofill_save_view_info_s, autofill_error_info_h, autofill_error_info_s;
export '../../src/bindings/6.5/generated_bindings_capi_ui_inputmethod.dart';
export '../../src/bindings/6.5/generated_bindings_capi_ui_inputmethod_manager.dart';
export '../../src/bindings/6.5/generated_bindings_capi_vpnsvc.dart';
export '../../src/bindings/6.5/generated_bindings_capi_web_url_download.dart' hide app_control_h, app_control_s;
export '../../src/bindings/6.5/generated_bindings_cbhm.dart';
export '../../src/bindings/6.5/generated_bindings_contacts_service2.dart';
export '../../src/bindings/6.5/generated_bindings_core_sync_client.dart' hide account_h, account_s, bundle;
export '../../src/bindings/6.5/generated_bindings_csr_client.dart' hide time_t, Dart__time_t;
export '../../src/bindings/6.5/generated_bindings_data_control.dart' hide bundle;
export '../../src/bindings/6.5/generated_bindings_device_certificate_manager.dart';
export '../../src/bindings/6.5/generated_bindings_diagnostics.dart' hide bundle;
export '../../src/bindings/6.5/generated_bindings_dlog.dart';
export '../../src/bindings/6.5/generated_bindings_dpm.dart';
export '../../src/bindings/6.5/generated_bindings_eom.dart' hide Evas_Object, Efl_Canvas_Object, Eo;
export '../../src/bindings/6.5/generated_bindings_feedback.dart';
export '../../src/bindings/6.5/generated_bindings_fido_client.dart';
export '../../src/bindings/6.5/generated_bindings_iotcon.dart';
export '../../src/bindings/6.5/generated_bindings_key_manager_client.dart';
export '../../src/bindings/6.5/generated_bindings_ma.dart';
export '../../src/bindings/6.5/generated_bindings_message_port.dart' hide bundle;
export '../../src/bindings/6.5/generated_bindings_mv_common.dart' hide media_packet_h, media_packet_s;
export '../../src/bindings/6.5/generated_bindings_mv_face.dart' hide mv_source_h, mv_engine_config_h, mv_rectangle_s, mv_point_s, mv_quadrangle_s;
export '../../src/bindings/6.5/generated_bindings_mv_image.dart' hide mv_source_h, mv_engine_config_h, mv_quadrangle_s, mv_point_s, mv_rectangle_s;
export '../../src/bindings/6.5/generated_bindings_mv_inference.dart' hide mv_source_h, mv_engine_config_h, mv_rectangle_s, mv_point_s;
export '../../src/bindings/6.5/generated_bindings_mv_surveillance.dart' hide mv_point_s, mv_engine_config_h, mv_source_h;
export '../../src/bindings/6.5/generated_bindings_nnstreamer.dart';
export '../../src/bindings/6.5/generated_bindings_nnstreamer_single.dart' hide ml_tensors_info_h, ml_nnfw_type_e, ml_nnfw_hw_e, ml_tensors_data_h;
export '../../src/bindings/6.5/generated_bindings_nntrainer.dart' hide ml_tensors_info_h;
export '../../src/bindings/6.5/generated_bindings_notification.dart' hide time_t, Dart__time_t, app_control_h, app_control_s, notification_h;
export '../../src/bindings/6.5/generated_bindings_notification_ex.dart' hide time_t, Dart__time_t, app_control_h, app_control_s, bundle;
export '../../src/bindings/6.5/generated_bindings_nsd_dns_sd.dart';
export '../../src/bindings/6.5/generated_bindings_nsd_ssdp.dart';
export '../../src/bindings/6.5/generated_bindings_oauth2.dart';
export '../../src/bindings/6.5/generated_bindings_phonenumber_utils.dart';
export '../../src/bindings/6.5/generated_bindings_privilege_info.dart';
export '../../src/bindings/6.5/generated_bindings_push.dart' hide app_control_h, app_control_s;
export '../../src/bindings/6.5/generated_bindings_rpc_port.dart' hide bundle, Dart__time_t;
export '../../src/bindings/6.5/generated_bindings_shortcut.dart';
export '../../src/bindings/6.5/generated_bindings_storage.dart';
export '../../src/bindings/6.5/generated_bindings_stt.dart' hide stt_h;
export '../../src/bindings/6.5/generated_bindings_stt_engine.dart';
export '../../src/bindings/6.5/generated_bindings_tbm.dart';
export '../../src/bindings/6.5/generated_bindings_ttrace.dart';
export '../../src/bindings/6.5/generated_bindings_tts.dart' hide tts_h;
export '../../src/bindings/6.5/generated_bindings_tts_engine.dart';
export '../../src/bindings/6.5/generated_bindings_update_control.dart' hide tm;
export '../../src/bindings/6.5/generated_bindings_vc.dart';
export '../../src/bindings/6.5/generated_bindings_vc_engine.dart';
export '../../src/bindings/6.5/generated_bindings_vc_manager.dart' hide vc_cmd_list_h, vc_cmd_list_s, vc_supported_language_cb, vc_supported_language_cbFunction, Dartvc_supported_language_cbFunction, vc_state_e, vc_service_state_e, vc_result_event_e, vc_result_cb, vc_result_cbFunction, Dartvc_result_cbFunction, vc_state_changed_cb, vc_state_changed_cbFunction, Dartvc_state_changed_cbFunction, vc_service_state_changed_cb, vc_service_state_changed_cbFunction, Dartvc_service_state_changed_cbFunction, vc_current_language_changed_cb, vc_current_language_changed_cbFunction, Dartvc_current_language_changed_cbFunction, vc_error_cb, vc_error_cbFunction, Dartvc_error_cbFunction, vc_error_e, vc_audio_channel_e, vc_audio_type_e, vc_feedback_event_e, vc_tts_utterance_status_e, VC_COMMAND_TYPE_FOREGROUND, VC_COMMAND_TYPE_BACKGROUND, VC_RESULT_MESSAGE_NONE, VC_RESULT_MESSAGE_ERROR_TOO_LOUD;
export '../../src/bindings/6.5/generated_bindings_webrtc.dart' hide bundle, media_format_h, media_packet_h, sound_stream_info_h, sound_stream_info_s, media_format_s, media_packet_s;
export '../../src/bindings/6.5/generated_bindings_wifi_direct.dart';
export '../../src/bindings/6.5/generated_bindings_yaca.dart' hide yaca_key_s, yaca_context_s;

final _lookupProvider = LookupProvider();

S _getTizenInstance<S>(Map<String, List<String>> symbolMap,
    S Function(Pointer<T> Function<T extends NativeType>(String)) fromLookup) {
  return fromLookup(
    <T extends NativeType>(String symbolName) {
      _lookupProvider.registerSymbols(symbolMap);
      return _lookupProvider.lookup<T>(symbolName);
    },
  );
}

Tizen65AccountsSvc? _tizen65AccountsSvc;
Tizen65AccountsSvc get tizen65AccountsSvc =>
    _tizen65AccountsSvc ??= _getTizenInstance(
        accountsSvcSymbols, Tizen65AccountsSvc.fromLookup)!;

Tizen65AppControlUri? _tizen65AppControlUri;
Tizen65AppControlUri get tizen65AppControlUri =>
    _tizen65AppControlUri ??= _getTizenInstance(
        capiAppfwAppControlUriSymbols, Tizen65AppControlUri.fromLookup)!;

Tizen65AppcoreAgent? _tizen65AppcoreAgent;
Tizen65AppcoreAgent get tizen65AppcoreAgent =>
    _tizen65AppcoreAgent ??= _getTizenInstance(
        appcoreAgentSymbols, Tizen65AppcoreAgent.fromLookup)!;

Tizen65Asp? _tizen65Asp;
Tizen65Asp get tizen65Asp =>
    _tizen65Asp ??= _getTizenInstance(
        aspSymbols, Tizen65Asp.fromLookup)!;

Tizen65Badge? _tizen65Badge;
Tizen65Badge get tizen65Badge =>
    _tizen65Badge ??= _getTizenInstance(
        badgeSymbols, Tizen65Badge.fromLookup)!;

Tizen65Bundle? _tizen65Bundle;
Tizen65Bundle get tizen65Bundle =>
    _tizen65Bundle ??= _getTizenInstance(
        bundleSymbols, Tizen65Bundle.fromLookup)!;

Tizen65CalendarService2? _tizen65CalendarService2;
Tizen65CalendarService2 get tizen65CalendarService2 =>
    _tizen65CalendarService2 ??= _getTizenInstance(
        calendarService2Symbols, Tizen65CalendarService2.fromLookup)!;

Tizen65CapiAppfwAlarm? _tizen65CapiAppfwAlarm;
Tizen65CapiAppfwAlarm get tizen65CapiAppfwAlarm =>
    _tizen65CapiAppfwAlarm ??= _getTizenInstance(
        capiAppfwAlarmSymbols, Tizen65CapiAppfwAlarm.fromLookup)!;

Tizen65CapiAppfwAppCommon? _tizen65CapiAppfwAppCommon;
Tizen65CapiAppfwAppCommon get tizen65CapiAppfwAppCommon =>
    _tizen65CapiAppfwAppCommon ??= _getTizenInstance(
        capiAppfwAppCommonSymbols, Tizen65CapiAppfwAppCommon.fromLookup)!;

Tizen65CapiAppfwAppControl? _tizen65CapiAppfwAppControl;
Tizen65CapiAppfwAppControl get tizen65CapiAppfwAppControl =>
    _tizen65CapiAppfwAppControl ??= _getTizenInstance(
        capiAppfwAppControlSymbols, Tizen65CapiAppfwAppControl.fromLookup)!;

Tizen65CapiAppfwAppManager? _tizen65CapiAppfwAppManager;
Tizen65CapiAppfwAppManager get tizen65CapiAppfwAppManager =>
    _tizen65CapiAppfwAppManager ??= _getTizenInstance(
        capiAppfwAppManagerSymbols, Tizen65CapiAppfwAppManager.fromLookup)!;

Tizen65CapiAppfwApplication? _tizen65CapiAppfwApplication;
Tizen65CapiAppfwApplication get tizen65CapiAppfwApplication =>
    _tizen65CapiAppfwApplication ??= _getTizenInstance(
        capiAppfwApplicationSymbols, Tizen65CapiAppfwApplication.fromLookup)!;

Tizen65CapiAppfwEvent? _tizen65CapiAppfwEvent;
Tizen65CapiAppfwEvent get tizen65CapiAppfwEvent =>
    _tizen65CapiAppfwEvent ??= _getTizenInstance(
        capiAppfwEventSymbols, Tizen65CapiAppfwEvent.fromLookup)!;

Tizen65CapiAppfwJobScheduler? _tizen65CapiAppfwJobScheduler;
Tizen65CapiAppfwJobScheduler get tizen65CapiAppfwJobScheduler =>
    _tizen65CapiAppfwJobScheduler ??= _getTizenInstance(
        capiAppfwJobSchedulerSymbols, Tizen65CapiAppfwJobScheduler.fromLookup)!;

Tizen65CapiAppfwPackageManager? _tizen65CapiAppfwPackageManager;
Tizen65CapiAppfwPackageManager get tizen65CapiAppfwPackageManager =>
    _tizen65CapiAppfwPackageManager ??= _getTizenInstance(
        capiAppfwPackageManagerSymbols, Tizen65CapiAppfwPackageManager.fromLookup)!;

Tizen65CapiAppfwPreference? _tizen65CapiAppfwPreference;
Tizen65CapiAppfwPreference get tizen65CapiAppfwPreference =>
    _tizen65CapiAppfwPreference ??= _getTizenInstance(
        capiAppfwPreferenceSymbols, Tizen65CapiAppfwPreference.fromLookup)!;

Tizen65CapiBaseCommon? _tizen65CapiBaseCommon;
Tizen65CapiBaseCommon get tizen65CapiBaseCommon =>
    _tizen65CapiBaseCommon ??= _getTizenInstance(
        capiBaseCommonSymbols, Tizen65CapiBaseCommon.fromLookup)!;

Tizen65CapiContentMediaContent? _tizen65CapiContentMediaContent;
Tizen65CapiContentMediaContent get tizen65CapiContentMediaContent =>
    _tizen65CapiContentMediaContent ??= _getTizenInstance(
        capiContentMediaContentSymbols, Tizen65CapiContentMediaContent.fromLookup)!;

Tizen65CapiContentMimeType? _tizen65CapiContentMimeType;
Tizen65CapiContentMimeType get tizen65CapiContentMimeType =>
    _tizen65CapiContentMimeType ??= _getTizenInstance(
        capiContentMimeTypeSymbols, Tizen65CapiContentMimeType.fromLookup)!;

Tizen65CapiContext? _tizen65CapiContext;
Tizen65CapiContext get tizen65CapiContext =>
    _tizen65CapiContext ??= _getTizenInstance(
        capiContextSymbols, Tizen65CapiContext.fromLookup)!;

Tizen65CapiGeofenceManager? _tizen65CapiGeofenceManager;
Tizen65CapiGeofenceManager get tizen65CapiGeofenceManager =>
    _tizen65CapiGeofenceManager ??= _getTizenInstance(
        capiGeofenceManagerSymbols, Tizen65CapiGeofenceManager.fromLookup)!;

Tizen65CapiLocationManager? _tizen65CapiLocationManager;
Tizen65CapiLocationManager get tizen65CapiLocationManager =>
    _tizen65CapiLocationManager ??= _getTizenInstance(
        capiLocationManagerSymbols, Tizen65CapiLocationManager.fromLookup)!;

Tizen65CapiMediaAudioIo? _tizen65CapiMediaAudioIo;
Tizen65CapiMediaAudioIo get tizen65CapiMediaAudioIo =>
    _tizen65CapiMediaAudioIo ??= _getTizenInstance(
        capiMediaAudioIoSymbols, Tizen65CapiMediaAudioIo.fromLookup)!;

Tizen65CapiMediaCamera? _tizen65CapiMediaCamera;
Tizen65CapiMediaCamera get tizen65CapiMediaCamera =>
    _tizen65CapiMediaCamera ??= _getTizenInstance(
        capiMediaCameraSymbols, Tizen65CapiMediaCamera.fromLookup)!;

Tizen65CapiMediaCodec? _tizen65CapiMediaCodec;
Tizen65CapiMediaCodec get tizen65CapiMediaCodec =>
    _tizen65CapiMediaCodec ??= _getTizenInstance(
        capiMediaCodecSymbols, Tizen65CapiMediaCodec.fromLookup)!;

Tizen65CapiMediaController? _tizen65CapiMediaController;
Tizen65CapiMediaController get tizen65CapiMediaController =>
    _tizen65CapiMediaController ??= _getTizenInstance(
        capiMediaControllerSymbols, Tizen65CapiMediaController.fromLookup)!;

Tizen65CapiMediaImageUtil? _tizen65CapiMediaImageUtil;
Tizen65CapiMediaImageUtil get tizen65CapiMediaImageUtil =>
    _tizen65CapiMediaImageUtil ??= _getTizenInstance(
        capiMediaImageUtilSymbols, Tizen65CapiMediaImageUtil.fromLookup)!;

Tizen65CapiMediaMetadataEditor? _tizen65CapiMediaMetadataEditor;
Tizen65CapiMediaMetadataEditor get tizen65CapiMediaMetadataEditor =>
    _tizen65CapiMediaMetadataEditor ??= _getTizenInstance(
        capiMediaMetadataEditorSymbols, Tizen65CapiMediaMetadataEditor.fromLookup)!;

Tizen65CapiMediaMetadataExtractor? _tizen65CapiMediaMetadataExtractor;
Tizen65CapiMediaMetadataExtractor get tizen65CapiMediaMetadataExtractor =>
    _tizen65CapiMediaMetadataExtractor ??= _getTizenInstance(
        capiMediaMetadataExtractorSymbols, Tizen65CapiMediaMetadataExtractor.fromLookup)!;

Tizen65CapiMediaPlayer? _tizen65CapiMediaPlayer;
Tizen65CapiMediaPlayer get tizen65CapiMediaPlayer =>
    _tizen65CapiMediaPlayer ??= _getTizenInstance(
        capiMediaPlayerSymbols, Tizen65CapiMediaPlayer.fromLookup)!;

Tizen65CapiMediaRadio? _tizen65CapiMediaRadio;
Tizen65CapiMediaRadio get tizen65CapiMediaRadio =>
    _tizen65CapiMediaRadio ??= _getTizenInstance(
        capiMediaRadioSymbols, Tizen65CapiMediaRadio.fromLookup)!;

Tizen65CapiMediaRecorder? _tizen65CapiMediaRecorder;
Tizen65CapiMediaRecorder get tizen65CapiMediaRecorder =>
    _tizen65CapiMediaRecorder ??= _getTizenInstance(
        capiMediaRecorderSymbols, Tizen65CapiMediaRecorder.fromLookup)!;

Tizen65CapiMediaScreenMirroring? _tizen65CapiMediaScreenMirroring;
Tizen65CapiMediaScreenMirroring get tizen65CapiMediaScreenMirroring =>
    _tizen65CapiMediaScreenMirroring ??= _getTizenInstance(
        capiMediaScreenMirroringSymbols, Tizen65CapiMediaScreenMirroring.fromLookup)!;

Tizen65CapiMediaSoundManager? _tizen65CapiMediaSoundManager;
Tizen65CapiMediaSoundManager get tizen65CapiMediaSoundManager =>
    _tizen65CapiMediaSoundManager ??= _getTizenInstance(
        capiMediaSoundManagerSymbols, Tizen65CapiMediaSoundManager.fromLookup)!;

Tizen65CapiMediaSoundPool? _tizen65CapiMediaSoundPool;
Tizen65CapiMediaSoundPool get tizen65CapiMediaSoundPool =>
    _tizen65CapiMediaSoundPool ??= _getTizenInstance(
        capiMediaSoundPoolSymbols, Tizen65CapiMediaSoundPool.fromLookup)!;

Tizen65CapiMediaStreamer? _tizen65CapiMediaStreamer;
Tizen65CapiMediaStreamer get tizen65CapiMediaStreamer =>
    _tizen65CapiMediaStreamer ??= _getTizenInstance(
        capiMediaStreamerSymbols, Tizen65CapiMediaStreamer.fromLookup)!;

Tizen65CapiMediaStreamrecorder? _tizen65CapiMediaStreamrecorder;
Tizen65CapiMediaStreamrecorder get tizen65CapiMediaStreamrecorder =>
    _tizen65CapiMediaStreamrecorder ??= _getTizenInstance(
        capiMediaStreamrecorderSymbols, Tizen65CapiMediaStreamrecorder.fromLookup)!;

Tizen65CapiMediaThumbnailUtil? _tizen65CapiMediaThumbnailUtil;
Tizen65CapiMediaThumbnailUtil get tizen65CapiMediaThumbnailUtil =>
    _tizen65CapiMediaThumbnailUtil ??= _getTizenInstance(
        capiMediaThumbnailUtilSymbols, Tizen65CapiMediaThumbnailUtil.fromLookup)!;

Tizen65CapiMediaTonePlayer? _tizen65CapiMediaTonePlayer;
Tizen65CapiMediaTonePlayer get tizen65CapiMediaTonePlayer =>
    _tizen65CapiMediaTonePlayer ??= _getTizenInstance(
        capiMediaTonePlayerSymbols, Tizen65CapiMediaTonePlayer.fromLookup)!;

Tizen65CapiMediaTool? _tizen65CapiMediaTool;
Tizen65CapiMediaTool get tizen65CapiMediaTool =>
    _tizen65CapiMediaTool ??= _getTizenInstance(
        capiMediaToolSymbols, Tizen65CapiMediaTool.fromLookup)!;

Tizen65CapiMediaWavPlayer? _tizen65CapiMediaWavPlayer;
Tizen65CapiMediaWavPlayer get tizen65CapiMediaWavPlayer =>
    _tizen65CapiMediaWavPlayer ??= _getTizenInstance(
        capiMediaWavPlayerSymbols, Tizen65CapiMediaWavPlayer.fromLookup)!;

Tizen65CapiMediademuxer? _tizen65CapiMediademuxer;
Tizen65CapiMediademuxer get tizen65CapiMediademuxer =>
    _tizen65CapiMediademuxer ??= _getTizenInstance(
        capiMediademuxerSymbols, Tizen65CapiMediademuxer.fromLookup)!;

Tizen65CapiMediamuxer? _tizen65CapiMediamuxer;
Tizen65CapiMediamuxer get tizen65CapiMediamuxer =>
    _tizen65CapiMediamuxer ??= _getTizenInstance(
        capiMediamuxerSymbols, Tizen65CapiMediamuxer.fromLookup)!;

Tizen65CapiMessagingEmail? _tizen65CapiMessagingEmail;
Tizen65CapiMessagingEmail get tizen65CapiMessagingEmail =>
    _tizen65CapiMessagingEmail ??= _getTizenInstance(
        capiMessagingEmailSymbols, Tizen65CapiMessagingEmail.fromLookup)!;

Tizen65CapiNetworkBluetooth? _tizen65CapiNetworkBluetooth;
Tizen65CapiNetworkBluetooth get tizen65CapiNetworkBluetooth =>
    _tizen65CapiNetworkBluetooth ??= _getTizenInstance(
        capiNetworkBluetoothSymbols, Tizen65CapiNetworkBluetooth.fromLookup)!;

Tizen65CapiNetworkConnection? _tizen65CapiNetworkConnection;
Tizen65CapiNetworkConnection get tizen65CapiNetworkConnection =>
    _tizen65CapiNetworkConnection ??= _getTizenInstance(
        capiNetworkConnectionSymbols, Tizen65CapiNetworkConnection.fromLookup)!;

Tizen65CapiNetworkHttp? _tizen65CapiNetworkHttp;
Tizen65CapiNetworkHttp get tizen65CapiNetworkHttp =>
    _tizen65CapiNetworkHttp ??= _getTizenInstance(
        capiNetworkHttpSymbols, Tizen65CapiNetworkHttp.fromLookup)!;

Tizen65CapiNetworkInm? _tizen65CapiNetworkInm;
Tizen65CapiNetworkInm get tizen65CapiNetworkInm =>
    _tizen65CapiNetworkInm ??= _getTizenInstance(
        capiNetworkInmSymbols, Tizen65CapiNetworkInm.fromLookup)!;

Tizen65CapiNetworkSoftap? _tizen65CapiNetworkSoftap;
Tizen65CapiNetworkSoftap get tizen65CapiNetworkSoftap =>
    _tizen65CapiNetworkSoftap ??= _getTizenInstance(
        capiNetworkSoftapSymbols, Tizen65CapiNetworkSoftap.fromLookup)!;

Tizen65CapiNetworkStc? _tizen65CapiNetworkStc;
Tizen65CapiNetworkStc get tizen65CapiNetworkStc =>
    _tizen65CapiNetworkStc ??= _getTizenInstance(
        capiNetworkStcSymbols, Tizen65CapiNetworkStc.fromLookup)!;

Tizen65CapiNetworkWifiManager? _tizen65CapiNetworkWifiManager;
Tizen65CapiNetworkWifiManager get tizen65CapiNetworkWifiManager =>
    _tizen65CapiNetworkWifiManager ??= _getTizenInstance(
        capiNetworkWifiManagerSymbols, Tizen65CapiNetworkWifiManager.fromLookup)!;

Tizen65CapiPrivacyPrivilegeManager? _tizen65CapiPrivacyPrivilegeManager;
Tizen65CapiPrivacyPrivilegeManager get tizen65CapiPrivacyPrivilegeManager =>
    _tizen65CapiPrivacyPrivilegeManager ??= _getTizenInstance(
        capiPrivacyPrivilegeManagerSymbols, Tizen65CapiPrivacyPrivilegeManager.fromLookup)!;

Tizen65CapiSystemDevice? _tizen65CapiSystemDevice;
Tizen65CapiSystemDevice get tizen65CapiSystemDevice =>
    _tizen65CapiSystemDevice ??= _getTizenInstance(
        capiSystemDeviceSymbols, Tizen65CapiSystemDevice.fromLookup)!;

Tizen65CapiSystemInfo? _tizen65CapiSystemInfo;
Tizen65CapiSystemInfo get tizen65CapiSystemInfo =>
    _tizen65CapiSystemInfo ??= _getTizenInstance(
        capiSystemInfoSymbols, Tizen65CapiSystemInfo.fromLookup)!;

Tizen65CapiSystemMediaKey? _tizen65CapiSystemMediaKey;
Tizen65CapiSystemMediaKey get tizen65CapiSystemMediaKey =>
    _tizen65CapiSystemMediaKey ??= _getTizenInstance(
        capiSystemMediaKeySymbols, Tizen65CapiSystemMediaKey.fromLookup)!;

Tizen65CapiSystemPeripheralIo? _tizen65CapiSystemPeripheralIo;
Tizen65CapiSystemPeripheralIo get tizen65CapiSystemPeripheralIo =>
    _tizen65CapiSystemPeripheralIo ??= _getTizenInstance(
        capiSystemPeripheralIoSymbols, Tizen65CapiSystemPeripheralIo.fromLookup)!;

Tizen65CapiSystemRuntimeInfo? _tizen65CapiSystemRuntimeInfo;
Tizen65CapiSystemRuntimeInfo get tizen65CapiSystemRuntimeInfo =>
    _tizen65CapiSystemRuntimeInfo ??= _getTizenInstance(
        capiSystemRuntimeInfoSymbols, Tizen65CapiSystemRuntimeInfo.fromLookup)!;

Tizen65CapiSystemSensor? _tizen65CapiSystemSensor;
Tizen65CapiSystemSensor get tizen65CapiSystemSensor =>
    _tizen65CapiSystemSensor ??= _getTizenInstance(
        capiSystemSensorSymbols, Tizen65CapiSystemSensor.fromLookup)!;

Tizen65CapiSystemSystemSettings? _tizen65CapiSystemSystemSettings;
Tizen65CapiSystemSystemSettings get tizen65CapiSystemSystemSettings =>
    _tizen65CapiSystemSystemSettings ??= _getTizenInstance(
        capiSystemSystemSettingsSymbols, Tizen65CapiSystemSystemSettings.fromLookup)!;

Tizen65CapiSystemUsbhost? _tizen65CapiSystemUsbhost;
Tizen65CapiSystemUsbhost get tizen65CapiSystemUsbhost =>
    _tizen65CapiSystemUsbhost ??= _getTizenInstance(
        capiSystemUsbhostSymbols, Tizen65CapiSystemUsbhost.fromLookup)!;

Tizen65CapiUiAutofill? _tizen65CapiUiAutofill;
Tizen65CapiUiAutofill get tizen65CapiUiAutofill =>
    _tizen65CapiUiAutofill ??= _getTizenInstance(
        capiUiAutofillSymbols, Tizen65CapiUiAutofill.fromLookup)!;

Tizen65CapiUiAutofillCommon? _tizen65CapiUiAutofillCommon;
Tizen65CapiUiAutofillCommon get tizen65CapiUiAutofillCommon =>
    _tizen65CapiUiAutofillCommon ??= _getTizenInstance(
        capiUiAutofillCommonSymbols, Tizen65CapiUiAutofillCommon.fromLookup)!;

Tizen65CapiUiAutofillManager? _tizen65CapiUiAutofillManager;
Tizen65CapiUiAutofillManager get tizen65CapiUiAutofillManager =>
    _tizen65CapiUiAutofillManager ??= _getTizenInstance(
        capiUiAutofillManagerSymbols, Tizen65CapiUiAutofillManager.fromLookup)!;

Tizen65CapiUiAutofillService? _tizen65CapiUiAutofillService;
Tizen65CapiUiAutofillService get tizen65CapiUiAutofillService =>
    _tizen65CapiUiAutofillService ??= _getTizenInstance(
        capiUiAutofillServiceSymbols, Tizen65CapiUiAutofillService.fromLookup)!;

Tizen65CapiUiInputmethod? _tizen65CapiUiInputmethod;
Tizen65CapiUiInputmethod get tizen65CapiUiInputmethod =>
    _tizen65CapiUiInputmethod ??= _getTizenInstance(
        capiUiInputmethodSymbols, Tizen65CapiUiInputmethod.fromLookup)!;

Tizen65CapiUiInputmethodManager? _tizen65CapiUiInputmethodManager;
Tizen65CapiUiInputmethodManager get tizen65CapiUiInputmethodManager =>
    _tizen65CapiUiInputmethodManager ??= _getTizenInstance(
        capiUiInputmethodManagerSymbols, Tizen65CapiUiInputmethodManager.fromLookup)!;

Tizen65CapiVpnsvc? _tizen65CapiVpnsvc;
Tizen65CapiVpnsvc get tizen65CapiVpnsvc =>
    _tizen65CapiVpnsvc ??= _getTizenInstance(
        capiVpnsvcSymbols, Tizen65CapiVpnsvc.fromLookup)!;

Tizen65CapiWebUrlDownload? _tizen65CapiWebUrlDownload;
Tizen65CapiWebUrlDownload get tizen65CapiWebUrlDownload =>
    _tizen65CapiWebUrlDownload ??= _getTizenInstance(
        capiWebUrlDownloadSymbols, Tizen65CapiWebUrlDownload.fromLookup)!;

Tizen65Cbhm? _tizen65Cbhm;
Tizen65Cbhm get tizen65Cbhm =>
    _tizen65Cbhm ??= _getTizenInstance(
        cbhmSymbols, Tizen65Cbhm.fromLookup)!;

Tizen65ContactsService2? _tizen65ContactsService2;
Tizen65ContactsService2 get tizen65ContactsService2 =>
    _tizen65ContactsService2 ??= _getTizenInstance(
        contactsService2Symbols, Tizen65ContactsService2.fromLookup)!;

Tizen65CoreSyncClient? _tizen65CoreSyncClient;
Tizen65CoreSyncClient get tizen65CoreSyncClient =>
    _tizen65CoreSyncClient ??= _getTizenInstance(
        coreSyncClientSymbols, Tizen65CoreSyncClient.fromLookup)!;

Tizen65CsrClient? _tizen65CsrClient;
Tizen65CsrClient get tizen65CsrClient =>
    _tizen65CsrClient ??= _getTizenInstance(
        csrClientSymbols, Tizen65CsrClient.fromLookup)!;

Tizen65DataControl? _tizen65DataControl;
Tizen65DataControl get tizen65DataControl =>
    _tizen65DataControl ??= _getTizenInstance(
        dataControlSymbols, Tizen65DataControl.fromLookup)!;

Tizen65DeviceCertificateManager? _tizen65DeviceCertificateManager;
Tizen65DeviceCertificateManager get tizen65DeviceCertificateManager =>
    _tizen65DeviceCertificateManager ??= _getTizenInstance(
        deviceCertificateManagerSymbols, Tizen65DeviceCertificateManager.fromLookup)!;

Tizen65Diagnostics? _tizen65Diagnostics;
Tizen65Diagnostics get tizen65Diagnostics =>
    _tizen65Diagnostics ??= _getTizenInstance(
        diagnosticsSymbols, Tizen65Diagnostics.fromLookup)!;

Tizen65Dlog? _tizen65Dlog;
Tizen65Dlog get tizen65Dlog =>
    _tizen65Dlog ??= _getTizenInstance(
        dlogSymbols, Tizen65Dlog.fromLookup)!;

Tizen65Dpm? _tizen65Dpm;
Tizen65Dpm get tizen65Dpm =>
    _tizen65Dpm ??= _getTizenInstance(
        dpmSymbols, Tizen65Dpm.fromLookup)!;

Tizen65Eom? _tizen65Eom;
Tizen65Eom get tizen65Eom =>
    _tizen65Eom ??= _getTizenInstance(
        eomSymbols, Tizen65Eom.fromLookup)!;

Tizen65Feedback? _tizen65Feedback;
Tizen65Feedback get tizen65Feedback =>
    _tizen65Feedback ??= _getTizenInstance(
        feedbackSymbols, Tizen65Feedback.fromLookup)!;

Tizen65FidoClient? _tizen65FidoClient;
Tizen65FidoClient get tizen65FidoClient =>
    _tizen65FidoClient ??= _getTizenInstance(
        fidoClientSymbols, Tizen65FidoClient.fromLookup)!;

Tizen65Iotcon? _tizen65Iotcon;
Tizen65Iotcon get tizen65Iotcon =>
    _tizen65Iotcon ??= _getTizenInstance(
        iotconSymbols, Tizen65Iotcon.fromLookup)!;

Tizen65KeyManagerClient? _tizen65KeyManagerClient;
Tizen65KeyManagerClient get tizen65KeyManagerClient =>
    _tizen65KeyManagerClient ??= _getTizenInstance(
        keyManagerClientSymbols, Tizen65KeyManagerClient.fromLookup)!;

Tizen65Ma? _tizen65Ma;
Tizen65Ma get tizen65Ma =>
    _tizen65Ma ??= _getTizenInstance(
        maSymbols, Tizen65Ma.fromLookup)!;

Tizen65MessagePort? _tizen65MessagePort;
Tizen65MessagePort get tizen65MessagePort =>
    _tizen65MessagePort ??= _getTizenInstance(
        messagePortSymbols, Tizen65MessagePort.fromLookup)!;

Tizen65Mv_Common? _tizen65MvCommon;
Tizen65Mv_Common get tizen65MvCommon =>
    _tizen65MvCommon ??= _getTizenInstance(
        mv_commonSymbols, Tizen65Mv_Common.fromLookup)!;

Tizen65Mv_Face? _tizen65MvFace;
Tizen65Mv_Face get tizen65MvFace =>
    _tizen65MvFace ??= _getTizenInstance(
        mv_faceSymbols, Tizen65Mv_Face.fromLookup)!;

Tizen65Mv_Image? _tizen65MvImage;
Tizen65Mv_Image get tizen65MvImage =>
    _tizen65MvImage ??= _getTizenInstance(
        mv_imageSymbols, Tizen65Mv_Image.fromLookup)!;

Tizen65Mv_Inference? _tizen65MvInference;
Tizen65Mv_Inference get tizen65MvInference =>
    _tizen65MvInference ??= _getTizenInstance(
        mv_inferenceSymbols, Tizen65Mv_Inference.fromLookup)!;

Tizen65Mv_Surveillance? _tizen65MvSurveillance;
Tizen65Mv_Surveillance get tizen65MvSurveillance =>
    _tizen65MvSurveillance ??= _getTizenInstance(
        mv_surveillanceSymbols, Tizen65Mv_Surveillance.fromLookup)!;

Tizen65Nnstreamer? _tizen65Nnstreamer;
Tizen65Nnstreamer get tizen65Nnstreamer =>
    _tizen65Nnstreamer ??= _getTizenInstance(
        capiNnstreamerSymbols, Tizen65Nnstreamer.fromLookup)!;

Tizen65NnstreamerSingle? _tizen65NnstreamerSingle;
Tizen65NnstreamerSingle get tizen65NnstreamerSingle =>
    _tizen65NnstreamerSingle ??= _getTizenInstance(
        capiNnstreamerSymbols, Tizen65NnstreamerSingle.fromLookup)!;

Tizen65Nntrainer? _tizen65Nntrainer;
Tizen65Nntrainer get tizen65Nntrainer =>
    _tizen65Nntrainer ??= _getTizenInstance(
        capiNntrainerSymbols, Tizen65Nntrainer.fromLookup)!;

Tizen65Notification? _tizen65Notification;
Tizen65Notification get tizen65Notification =>
    _tizen65Notification ??= _getTizenInstance(
        notificationSymbols, Tizen65Notification.fromLookup)!;

Tizen65NotificationEx? _tizen65NotificationEx;
Tizen65NotificationEx get tizen65NotificationEx =>
    _tizen65NotificationEx ??= _getTizenInstance(
        notificationExSymbols, Tizen65NotificationEx.fromLookup)!;

Tizen65NsdDnsSd? _tizen65NsdDnsSd;
Tizen65NsdDnsSd get tizen65NsdDnsSd =>
    _tizen65NsdDnsSd ??= _getTizenInstance(
        nsdDnsSdSymbols, Tizen65NsdDnsSd.fromLookup)!;

Tizen65NsdSsdp? _tizen65NsdSsdp;
Tizen65NsdSsdp get tizen65NsdSsdp =>
    _tizen65NsdSsdp ??= _getTizenInstance(
        nsdSsdpSymbols, Tizen65NsdSsdp.fromLookup)!;

Tizen65Oauth2? _tizen65Oauth2;
Tizen65Oauth2 get tizen65Oauth2 =>
    _tizen65Oauth2 ??= _getTizenInstance(
        oauth2Symbols, Tizen65Oauth2.fromLookup)!;

Tizen65PhonenumberUtils? _tizen65PhonenumberUtils;
Tizen65PhonenumberUtils get tizen65PhonenumberUtils =>
    _tizen65PhonenumberUtils ??= _getTizenInstance(
        phonenumberUtilsSymbols, Tizen65PhonenumberUtils.fromLookup)!;

Tizen65PrivilegeInfo? _tizen65PrivilegeInfo;
Tizen65PrivilegeInfo get tizen65PrivilegeInfo =>
    _tizen65PrivilegeInfo ??= _getTizenInstance(
        privilegeInfoSymbols, Tizen65PrivilegeInfo.fromLookup)!;

Tizen65Push? _tizen65Push;
Tizen65Push get tizen65Push =>
    _tizen65Push ??= _getTizenInstance(
        pushSymbols, Tizen65Push.fromLookup)!;

Tizen65RpcPort? _tizen65RpcPort;
Tizen65RpcPort get tizen65RpcPort =>
    _tizen65RpcPort ??= _getTizenInstance(
        rpcPortSymbols, Tizen65RpcPort.fromLookup)!;

Tizen65Shortcut? _tizen65Shortcut;
Tizen65Shortcut get tizen65Shortcut =>
    _tizen65Shortcut ??= _getTizenInstance(
        shortcutSymbols, Tizen65Shortcut.fromLookup)!;

Tizen65Storage? _tizen65Storage;
Tizen65Storage get tizen65Storage =>
    _tizen65Storage ??= _getTizenInstance(
        storageSymbols, Tizen65Storage.fromLookup)!;

Tizen65Stt? _tizen65Stt;
Tizen65Stt get tizen65Stt =>
    _tizen65Stt ??= _getTizenInstance(
        sttSymbols, Tizen65Stt.fromLookup)!;

Tizen65SttEngine? _tizen65SttEngine;
Tizen65SttEngine get tizen65SttEngine =>
    _tizen65SttEngine ??= _getTizenInstance(
        stt_engineSymbols, Tizen65SttEngine.fromLookup)!;

Tizen65Tbm? _tizen65Tbm;
Tizen65Tbm get tizen65Tbm =>
    _tizen65Tbm ??= _getTizenInstance(
        tbmSymbols, Tizen65Tbm.fromLookup)!;

Tizen65Ttrace? _tizen65Ttrace;
Tizen65Ttrace get tizen65Ttrace =>
    _tizen65Ttrace ??= _getTizenInstance(
        ttraceSymbols, Tizen65Ttrace.fromLookup)!;

Tizen65Tts? _tizen65Tts;
Tizen65Tts get tizen65Tts =>
    _tizen65Tts ??= _getTizenInstance(
        ttsSymbols, Tizen65Tts.fromLookup)!;

Tizen65TtsEngine? _tizen65TtsEngine;
Tizen65TtsEngine get tizen65TtsEngine =>
    _tizen65TtsEngine ??= _getTizenInstance(
        tts_engineSymbols, Tizen65TtsEngine.fromLookup)!;

Tizen65UpdateControl? _tizen65UpdateControl;
Tizen65UpdateControl get tizen65UpdateControl =>
    _tizen65UpdateControl ??= _getTizenInstance(
        updateControlSymbols, Tizen65UpdateControl.fromLookup)!;

Tizen65Vc? _tizen65Vc;
Tizen65Vc get tizen65Vc =>
    _tizen65Vc ??= _getTizenInstance(
        vcSymbols, Tizen65Vc.fromLookup)!;

Tizen65Vc_Engine? _tizen65VcEngine;
Tizen65Vc_Engine get tizen65VcEngine =>
    _tizen65VcEngine ??= _getTizenInstance(
        vc_engineSymbols, Tizen65Vc_Engine.fromLookup)!;

Tizen65Vc_Manager? _tizen65VcManager;
Tizen65Vc_Manager get tizen65VcManager =>
    _tizen65VcManager ??= _getTizenInstance(
        vc_managerSymbols, Tizen65Vc_Manager.fromLookup)!;

Tizen65Webrtc? _tizen65Webrtc;
Tizen65Webrtc get tizen65Webrtc =>
    _tizen65Webrtc ??= _getTizenInstance(
        capiMediaWebrtcSymbols, Tizen65Webrtc.fromLookup)!;

Tizen65WifiDirect? _tizen65WifiDirect;
Tizen65WifiDirect get tizen65WifiDirect =>
    _tizen65WifiDirect ??= _getTizenInstance(
        wifiDirectSymbols, Tizen65WifiDirect.fromLookup)!;

Tizen65Yaca? _tizen65Yaca;
Tizen65Yaca get tizen65Yaca =>
    _tizen65Yaca ??= _getTizenInstance(
        yacaSymbols, Tizen65Yaca.fromLookup)!;
