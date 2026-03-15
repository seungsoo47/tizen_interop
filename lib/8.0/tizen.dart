library tizen_interop;

import 'dart:ffi';

import '../../src/bindings/8.0/generated_symbols.dart';
import '../../src/bindings/8.0/generated_bindings_accounts_svc.dart';
import '../../src/bindings/8.0/generated_bindings_app_control_uri.dart';
import '../../src/bindings/8.0/generated_bindings_appcore_agent.dart';
import '../../src/bindings/8.0/generated_bindings_asp.dart';
import '../../src/bindings/8.0/generated_bindings_badge.dart';
import '../../src/bindings/8.0/generated_bindings_bundle.dart';
import '../../src/bindings/8.0/generated_bindings_calendar_service2.dart';
import '../../src/bindings/8.0/generated_bindings_capi_appfw_alarm.dart';
import '../../src/bindings/8.0/generated_bindings_capi_appfw_app_common.dart';
import '../../src/bindings/8.0/generated_bindings_capi_appfw_app_control.dart';
import '../../src/bindings/8.0/generated_bindings_capi_appfw_app_manager.dart';
import '../../src/bindings/8.0/generated_bindings_capi_appfw_application.dart';
import '../../src/bindings/8.0/generated_bindings_capi_appfw_event.dart';
import '../../src/bindings/8.0/generated_bindings_capi_appfw_job_scheduler.dart';
import '../../src/bindings/8.0/generated_bindings_capi_appfw_package_manager.dart';
import '../../src/bindings/8.0/generated_bindings_capi_appfw_preference.dart';
import '../../src/bindings/8.0/generated_bindings_capi_base_common.dart';
import '../../src/bindings/8.0/generated_bindings_capi_content_media_content.dart';
import '../../src/bindings/8.0/generated_bindings_capi_content_mime_type.dart';
import '../../src/bindings/8.0/generated_bindings_capi_context.dart';
import '../../src/bindings/8.0/generated_bindings_capi_geofence_manager.dart';
import '../../src/bindings/8.0/generated_bindings_capi_location_manager.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_audio_io.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_camera.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_codec.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_controller.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_image_util.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_metadata_editor.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_metadata_extractor.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_player.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_radio.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_recorder.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_screen_mirroring.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_sound_manager.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_sound_pool.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_streamer.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_streamrecorder.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_thumbnail_util.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_tone_player.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_tool.dart';
import '../../src/bindings/8.0/generated_bindings_capi_media_wav_player.dart';
import '../../src/bindings/8.0/generated_bindings_capi_mediademuxer.dart';
import '../../src/bindings/8.0/generated_bindings_capi_mediamuxer.dart';
import '../../src/bindings/8.0/generated_bindings_capi_messaging_email.dart';
import '../../src/bindings/8.0/generated_bindings_capi_network_bluetooth.dart';
import '../../src/bindings/8.0/generated_bindings_capi_network_connection.dart';
import '../../src/bindings/8.0/generated_bindings_capi_network_http.dart';
import '../../src/bindings/8.0/generated_bindings_capi_network_inm.dart';
import '../../src/bindings/8.0/generated_bindings_capi_network_softap.dart';
import '../../src/bindings/8.0/generated_bindings_capi_network_stc.dart';
import '../../src/bindings/8.0/generated_bindings_capi_network_wifi_manager.dart';
import '../../src/bindings/8.0/generated_bindings_capi_privacy_privilege_manager.dart';
import '../../src/bindings/8.0/generated_bindings_capi_system_device.dart';
import '../../src/bindings/8.0/generated_bindings_capi_system_info.dart';
import '../../src/bindings/8.0/generated_bindings_capi_system_media_key.dart';
import '../../src/bindings/8.0/generated_bindings_capi_system_peripheral_io.dart';
import '../../src/bindings/8.0/generated_bindings_capi_system_runtime_info.dart';
import '../../src/bindings/8.0/generated_bindings_capi_system_sensor.dart';
import '../../src/bindings/8.0/generated_bindings_capi_system_system_settings.dart';
import '../../src/bindings/8.0/generated_bindings_capi_system_usbhost.dart';
import '../../src/bindings/8.0/generated_bindings_capi_ui_autofill.dart';
import '../../src/bindings/8.0/generated_bindings_capi_ui_autofill_common.dart';
import '../../src/bindings/8.0/generated_bindings_capi_ui_autofill_manager.dart';
import '../../src/bindings/8.0/generated_bindings_capi_ui_autofill_service.dart';
import '../../src/bindings/8.0/generated_bindings_capi_ui_inputmethod.dart';
import '../../src/bindings/8.0/generated_bindings_capi_ui_inputmethod_manager.dart';
import '../../src/bindings/8.0/generated_bindings_capi_vpnsvc.dart';
import '../../src/bindings/8.0/generated_bindings_capi_web_url_download.dart';
import '../../src/bindings/8.0/generated_bindings_contacts_service2.dart';
import '../../src/bindings/8.0/generated_bindings_core_sync_client.dart';
import '../../src/bindings/8.0/generated_bindings_csr_client.dart';
import '../../src/bindings/8.0/generated_bindings_data_control.dart';
import '../../src/bindings/8.0/generated_bindings_device_certificate_manager.dart';
import '../../src/bindings/8.0/generated_bindings_diagnostics.dart';
import '../../src/bindings/8.0/generated_bindings_dlog.dart';
import '../../src/bindings/8.0/generated_bindings_dpm.dart';
import '../../src/bindings/8.0/generated_bindings_eom.dart';
import '../../src/bindings/8.0/generated_bindings_feedback.dart';
import '../../src/bindings/8.0/generated_bindings_fido_client.dart';
import '../../src/bindings/8.0/generated_bindings_iotcon.dart';
import '../../src/bindings/8.0/generated_bindings_key_manager_client.dart';
import '../../src/bindings/8.0/generated_bindings_ma.dart';
import '../../src/bindings/8.0/generated_bindings_media_editor.dart';
import '../../src/bindings/8.0/generated_bindings_message_port.dart';
import '../../src/bindings/8.0/generated_bindings_ml_api_service.dart';
import '../../src/bindings/8.0/generated_bindings_mv_3d.dart';
import '../../src/bindings/8.0/generated_bindings_mv_common.dart';
import '../../src/bindings/8.0/generated_bindings_mv_face.dart';
import '../../src/bindings/8.0/generated_bindings_mv_face_recognition.dart';
import '../../src/bindings/8.0/generated_bindings_mv_image.dart';
import '../../src/bindings/8.0/generated_bindings_mv_inference.dart';
import '../../src/bindings/8.0/generated_bindings_mv_roi_tracker.dart';
import '../../src/bindings/8.0/generated_bindings_mv_surveillance.dart';
import '../../src/bindings/8.0/generated_bindings_nnstreamer.dart';
import '../../src/bindings/8.0/generated_bindings_nnstreamer_single.dart';
import '../../src/bindings/8.0/generated_bindings_nntrainer.dart';
import '../../src/bindings/8.0/generated_bindings_notification.dart';
import '../../src/bindings/8.0/generated_bindings_notification_ex.dart';
import '../../src/bindings/8.0/generated_bindings_nsd_dns_sd.dart';
import '../../src/bindings/8.0/generated_bindings_nsd_ssdp.dart';
import '../../src/bindings/8.0/generated_bindings_oauth2.dart';
import '../../src/bindings/8.0/generated_bindings_phonenumber_utils.dart';
import '../../src/bindings/8.0/generated_bindings_privilege_info.dart';
import '../../src/bindings/8.0/generated_bindings_push.dart';
import '../../src/bindings/8.0/generated_bindings_resource_monitor.dart';
import '../../src/bindings/8.0/generated_bindings_rpc_port.dart';
import '../../src/bindings/8.0/generated_bindings_storage.dart';
import '../../src/bindings/8.0/generated_bindings_stt.dart';
import '../../src/bindings/8.0/generated_bindings_stt_engine.dart';
import '../../src/bindings/8.0/generated_bindings_tbm.dart';
import '../../src/bindings/8.0/generated_bindings_ttrace.dart';
import '../../src/bindings/8.0/generated_bindings_tts.dart';
import '../../src/bindings/8.0/generated_bindings_tts_engine.dart';
import '../../src/bindings/8.0/generated_bindings_update_control.dart';
import '../../src/bindings/8.0/generated_bindings_vc.dart';
import '../../src/bindings/8.0/generated_bindings_vc_engine.dart';
import '../../src/bindings/8.0/generated_bindings_vc_manager.dart';
import '../../src/bindings/8.0/generated_bindings_webrtc.dart';
import '../../src/bindings/8.0/generated_bindings_wifi_direct.dart';
import '../../src/bindings/8.0/generated_bindings_yaca.dart';
import '../../src/lookup_provider.dart';

export '../../src/extensions.dart';
export '../../src/bindings/8.0/generated_bindings_accounts_svc.dart';
export '../../src/bindings/8.0/generated_bindings_app_control_uri.dart';
export '../../src/bindings/8.0/generated_bindings_appcore_agent.dart';
export '../../src/bindings/8.0/generated_bindings_asp.dart';
export '../../src/bindings/8.0/generated_bindings_badge.dart';
export '../../src/bindings/8.0/generated_bindings_bundle.dart';
export '../../src/bindings/8.0/generated_bindings_calendar_service2.dart';
export '../../src/bindings/8.0/generated_bindings_capi_appfw_alarm.dart' hide app_control_h, app_control_s;
export '../../src/bindings/8.0/generated_bindings_capi_appfw_app_common.dart' hide app_event_type_e, app_event_handler, app_event_info, app_event_info_h;
export '../../src/bindings/8.0/generated_bindings_capi_appfw_app_control.dart' hide app_control_s, app_control_h, app_control_uri_h;
export '../../src/bindings/8.0/generated_bindings_capi_appfw_app_manager.dart';
export '../../src/bindings/8.0/generated_bindings_capi_appfw_application.dart' hide app_control_h, app_control_s, app_device_orientation_e, app_event_handler_h, app_event_handler, app_event_type_e, app_event_cb, app_event_cbFunction, Dartapp_event_cbFunction, app_event_info_h, app_event_info;
export '../../src/bindings/8.0/generated_bindings_capi_appfw_event.dart' hide bundle;
export '../../src/bindings/8.0/generated_bindings_capi_appfw_job_scheduler.dart';
export '../../src/bindings/8.0/generated_bindings_capi_appfw_package_manager.dart';
export '../../src/bindings/8.0/generated_bindings_capi_appfw_preference.dart';
export '../../src/bindings/8.0/generated_bindings_capi_base_common.dart';
export '../../src/bindings/8.0/generated_bindings_capi_content_media_content.dart';
export '../../src/bindings/8.0/generated_bindings_capi_content_mime_type.dart';
export '../../src/bindings/8.0/generated_bindings_capi_context.dart' hide app_control_h, app_control_s;
export '../../src/bindings/8.0/generated_bindings_capi_geofence_manager.dart';
export '../../src/bindings/8.0/generated_bindings_capi_location_manager.dart' hide time_t, Dart__time_t;
export '../../src/bindings/8.0/generated_bindings_capi_media_audio_io.dart';
export '../../src/bindings/8.0/generated_bindings_capi_media_camera.dart' hide UnnamedUnion1, UnnamedStruct1, media_packet_h, media_packet_s;
export '../../src/bindings/8.0/generated_bindings_capi_media_codec.dart';
export '../../src/bindings/8.0/generated_bindings_capi_media_controller.dart' hide bundle;
export '../../src/bindings/8.0/generated_bindings_capi_media_image_util.dart' hide media_packet_h, media_packet_s;
export '../../src/bindings/8.0/generated_bindings_capi_media_metadata_editor.dart';
export '../../src/bindings/8.0/generated_bindings_capi_media_metadata_extractor.dart';
export '../../src/bindings/8.0/generated_bindings_capi_media_player.dart' hide sound_stream_info_h, sound_stream_info_s, media_packet_h, media_packet_s, media_format_h, media_format_s;
export '../../src/bindings/8.0/generated_bindings_capi_media_radio.dart';
export '../../src/bindings/8.0/generated_bindings_capi_media_recorder.dart' hide sound_stream_info_h, sound_stream_info_s, audio_sample_type_e, camera_preview_data_s, camera_h, camera_cli_s, camera_pixel_format_e, UnnamedUnion1, UnnamedStruct1, UnnamedStruct2, UnnamedStruct3, UnnamedStruct4, UnnamedStruct5, UnnamedStruct6;
export '../../src/bindings/8.0/generated_bindings_capi_media_screen_mirroring.dart';
export '../../src/bindings/8.0/generated_bindings_capi_media_sound_manager.dart' hide sound_type_e, sound_stream_info_s, sound_stream_info_h;
export '../../src/bindings/8.0/generated_bindings_capi_media_sound_pool.dart';
export '../../src/bindings/8.0/generated_bindings_capi_media_streamer.dart' hide media_packet_h, media_packet_s, media_format_h, media_format_s, bundle;
export '../../src/bindings/8.0/generated_bindings_capi_media_streamrecorder.dart' hide media_packet_h, media_packet_s;
export '../../src/bindings/8.0/generated_bindings_capi_media_thumbnail_util.dart';
export '../../src/bindings/8.0/generated_bindings_capi_media_tone_player.dart' hide sound_stream_info_h, sound_stream_info_s;
export '../../src/bindings/8.0/generated_bindings_capi_media_tool.dart' hide media_format_s, media_format_h, media_packet_s, media_packet_h, tbm_surface_h, media_format_mimetype_e;
export '../../src/bindings/8.0/generated_bindings_capi_media_wav_player.dart' hide sound_stream_info_h, sound_stream_info_s;
export '../../src/bindings/8.0/generated_bindings_capi_mediademuxer.dart' hide media_format_h, media_format_s, media_packet_h, media_packet_s;
export '../../src/bindings/8.0/generated_bindings_capi_mediamuxer.dart' hide media_format_h, media_format_s, media_packet_h, media_packet_s;
export '../../src/bindings/8.0/generated_bindings_capi_messaging_email.dart';
export '../../src/bindings/8.0/generated_bindings_capi_network_bluetooth.dart';
export '../../src/bindings/8.0/generated_bindings_capi_network_connection.dart';
export '../../src/bindings/8.0/generated_bindings_capi_network_http.dart';
export '../../src/bindings/8.0/generated_bindings_capi_network_inm.dart';
export '../../src/bindings/8.0/generated_bindings_capi_network_softap.dart' hide time_t, Dart__time_t;
export '../../src/bindings/8.0/generated_bindings_capi_network_stc.dart' hide time_t, Dart__time_t;
export '../../src/bindings/8.0/generated_bindings_capi_network_wifi_manager.dart';
export '../../src/bindings/8.0/generated_bindings_capi_privacy_privilege_manager.dart';
export '../../src/bindings/8.0/generated_bindings_capi_system_device.dart';
export '../../src/bindings/8.0/generated_bindings_capi_system_info.dart';
export '../../src/bindings/8.0/generated_bindings_capi_system_media_key.dart';
export '../../src/bindings/8.0/generated_bindings_capi_system_peripheral_io.dart';
export '../../src/bindings/8.0/generated_bindings_capi_system_runtime_info.dart';
export '../../src/bindings/8.0/generated_bindings_capi_system_sensor.dart' hide sensor_h, time_t, Dart__time_t;
export '../../src/bindings/8.0/generated_bindings_capi_system_system_settings.dart';
export '../../src/bindings/8.0/generated_bindings_capi_system_usbhost.dart';
export '../../src/bindings/8.0/generated_bindings_capi_ui_autofill.dart';
export '../../src/bindings/8.0/generated_bindings_capi_ui_autofill_common.dart' hide autofill_auth_info_s, autofill_view_info_s, autofill_fill_response_s, autofill_save_view_info_s, autofill_error_info_s, autofill_auth_info_h, autofill_view_info_h, autofill_save_view_info_h, autofill_fill_response_h, autofill_error_info_h;
export '../../src/bindings/8.0/generated_bindings_capi_ui_autofill_manager.dart';
export '../../src/bindings/8.0/generated_bindings_capi_ui_autofill_service.dart' hide autofill_view_info_h, autofill_view_info_s, autofill_auth_info_h, autofill_auth_info_s, autofill_fill_response_h, autofill_fill_response_s, autofill_save_view_info_h, autofill_save_view_info_s, autofill_error_info_h, autofill_error_info_s;
export '../../src/bindings/8.0/generated_bindings_capi_ui_inputmethod.dart';
export '../../src/bindings/8.0/generated_bindings_capi_ui_inputmethod_manager.dart';
export '../../src/bindings/8.0/generated_bindings_capi_vpnsvc.dart';
export '../../src/bindings/8.0/generated_bindings_capi_web_url_download.dart' hide app_control_h, app_control_s;
export '../../src/bindings/8.0/generated_bindings_contacts_service2.dart';
export '../../src/bindings/8.0/generated_bindings_core_sync_client.dart' hide account_h, account_s, bundle;
export '../../src/bindings/8.0/generated_bindings_csr_client.dart' hide time_t, Dart__time_t;
export '../../src/bindings/8.0/generated_bindings_data_control.dart' hide bundle;
export '../../src/bindings/8.0/generated_bindings_device_certificate_manager.dart';
export '../../src/bindings/8.0/generated_bindings_diagnostics.dart' hide bundle;
export '../../src/bindings/8.0/generated_bindings_dlog.dart';
export '../../src/bindings/8.0/generated_bindings_dpm.dart';
export '../../src/bindings/8.0/generated_bindings_eom.dart' hide Evas_Object, Efl_Canvas_Object, Eo;
export '../../src/bindings/8.0/generated_bindings_feedback.dart';
export '../../src/bindings/8.0/generated_bindings_fido_client.dart';
export '../../src/bindings/8.0/generated_bindings_iotcon.dart';
export '../../src/bindings/8.0/generated_bindings_key_manager_client.dart';
export '../../src/bindings/8.0/generated_bindings_ma.dart';
export '../../src/bindings/8.0/generated_bindings_media_editor.dart';
export '../../src/bindings/8.0/generated_bindings_message_port.dart' hide bundle;
export '../../src/bindings/8.0/generated_bindings_ml_api_service.dart';
export '../../src/bindings/8.0/generated_bindings_mv_3d.dart' hide mv_source_h, mv_engine_config_h;
export '../../src/bindings/8.0/generated_bindings_mv_common.dart' hide media_packet_h, media_packet_s;
export '../../src/bindings/8.0/generated_bindings_mv_face.dart' hide mv_source_h, mv_engine_config_h, mv_rectangle_s, mv_point_s, mv_quadrangle_s;
export '../../src/bindings/8.0/generated_bindings_mv_face_recognition.dart' hide mv_source_h;
export '../../src/bindings/8.0/generated_bindings_mv_image.dart' hide mv_source_h, mv_engine_config_h, mv_rectangle_s, mv_point_s, mv_quadrangle_s;
export '../../src/bindings/8.0/generated_bindings_mv_inference.dart' hide mv_source_h, mv_engine_config_h, mv_rectangle_s, mv_point_s;
export '../../src/bindings/8.0/generated_bindings_mv_roi_tracker.dart' hide mv_source_h, mv_engine_config_h, mv_rectangle_s, mv_point_s;
export '../../src/bindings/8.0/generated_bindings_mv_surveillance.dart' hide mv_source_h, mv_engine_config_h, mv_point_s;
export '../../src/bindings/8.0/generated_bindings_nnstreamer.dart' hide ml_tensors_info_h, ml_nnfw_type_e, ml_nnfw_hw_e, ml_tensors_data_h, ml_pipeline_state_e;
export '../../src/bindings/8.0/generated_bindings_nnstreamer_single.dart' hide ml_tensors_info_h, ml_nnfw_type_e, ml_nnfw_hw_e, ml_tensors_data_h, ml_option_h;
export '../../src/bindings/8.0/generated_bindings_nntrainer.dart' hide ml_tensors_info_h, ml_tensors_data_h;
export '../../src/bindings/8.0/generated_bindings_notification.dart' hide time_t, Dart__time_t, app_control_h, app_control_s, notification_h;
export '../../src/bindings/8.0/generated_bindings_notification_ex.dart' hide time_t, Dart__time_t, app_control_h, app_control_s, bundle;
export '../../src/bindings/8.0/generated_bindings_nsd_dns_sd.dart';
export '../../src/bindings/8.0/generated_bindings_nsd_ssdp.dart';
export '../../src/bindings/8.0/generated_bindings_oauth2.dart';
export '../../src/bindings/8.0/generated_bindings_phonenumber_utils.dart';
export '../../src/bindings/8.0/generated_bindings_privilege_info.dart';
export '../../src/bindings/8.0/generated_bindings_push.dart' hide app_control_h, app_control_s;
export '../../src/bindings/8.0/generated_bindings_resource_monitor.dart';
export '../../src/bindings/8.0/generated_bindings_rpc_port.dart' hide bundle, Dart__time_t;
export '../../src/bindings/8.0/generated_bindings_storage.dart';
export '../../src/bindings/8.0/generated_bindings_stt.dart' hide stt_h;
export '../../src/bindings/8.0/generated_bindings_stt_engine.dart';
export '../../src/bindings/8.0/generated_bindings_tbm.dart';
export '../../src/bindings/8.0/generated_bindings_ttrace.dart';
export '../../src/bindings/8.0/generated_bindings_tts.dart' hide tts_h;
export '../../src/bindings/8.0/generated_bindings_tts_engine.dart';
export '../../src/bindings/8.0/generated_bindings_update_control.dart' hide tm;
export '../../src/bindings/8.0/generated_bindings_vc.dart';
export '../../src/bindings/8.0/generated_bindings_vc_engine.dart';
export '../../src/bindings/8.0/generated_bindings_vc_manager.dart' hide vc_cmd_list_h, vc_cmd_list_s, vc_supported_language_cb, vc_supported_language_cbFunction, Dartvc_supported_language_cbFunction, vc_state_e, vc_service_state_e, vc_result_event_e, vc_result_cb, vc_result_cbFunction, Dartvc_result_cbFunction, vc_state_changed_cb, vc_state_changed_cbFunction, Dartvc_state_changed_cbFunction, vc_service_state_changed_cb, vc_service_state_changed_cbFunction, Dartvc_service_state_changed_cbFunction, vc_current_language_changed_cb, vc_current_language_changed_cbFunction, Dartvc_current_language_changed_cbFunction, vc_error_cb, vc_error_cbFunction, Dartvc_error_cbFunction, vc_error_e, vc_audio_channel_e, vc_audio_type_e, vc_feedback_event_e, vc_tts_utterance_status_e, VC_COMMAND_TYPE_FOREGROUND, VC_COMMAND_TYPE_BACKGROUND, VC_RESULT_MESSAGE_NONE, VC_RESULT_MESSAGE_ERROR_TOO_LOUD;
export '../../src/bindings/8.0/generated_bindings_webrtc.dart' hide bundle, media_format_h, media_packet_h, sound_stream_info_h, sound_stream_info_s, media_format_s, media_packet_s, UnnamedUnion1;
export '../../src/bindings/8.0/generated_bindings_wifi_direct.dart';
export '../../src/bindings/8.0/generated_bindings_yaca.dart' hide yaca_key_s, yaca_context_s;

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

Tizen80AccountsSvc? _tizen80AccountsSvc;
Tizen80AccountsSvc get tizen80AccountsSvc =>
    _tizen80AccountsSvc ??= _getTizenInstance(
        accountsSvcSymbols, Tizen80AccountsSvc.fromLookup)!;

Tizen80AppControlUri? _tizen80AppControlUri;
Tizen80AppControlUri get tizen80AppControlUri =>
    _tizen80AppControlUri ??= _getTizenInstance(
        capiAppfwAppControlUriSymbols, Tizen80AppControlUri.fromLookup)!;

Tizen80AppcoreAgent? _tizen80AppcoreAgent;
Tizen80AppcoreAgent get tizen80AppcoreAgent =>
    _tizen80AppcoreAgent ??= _getTizenInstance(
        appcoreAgentSymbols, Tizen80AppcoreAgent.fromLookup)!;

Tizen80Asp? _tizen80Asp;
Tizen80Asp get tizen80Asp =>
    _tizen80Asp ??= _getTizenInstance(
        aspSymbols, Tizen80Asp.fromLookup)!;

Tizen80Badge? _tizen80Badge;
Tizen80Badge get tizen80Badge =>
    _tizen80Badge ??= _getTizenInstance(
        badgeSymbols, Tizen80Badge.fromLookup)!;

Tizen80Bundle? _tizen80Bundle;
Tizen80Bundle get tizen80Bundle =>
    _tizen80Bundle ??= _getTizenInstance(
        bundleSymbols, Tizen80Bundle.fromLookup)!;

Tizen80CalendarService2? _tizen80CalendarService2;
Tizen80CalendarService2 get tizen80CalendarService2 =>
    _tizen80CalendarService2 ??= _getTizenInstance(
        calendarService2Symbols, Tizen80CalendarService2.fromLookup)!;

Tizen80CapiAppfwAlarm? _tizen80CapiAppfwAlarm;
Tizen80CapiAppfwAlarm get tizen80CapiAppfwAlarm =>
    _tizen80CapiAppfwAlarm ??= _getTizenInstance(
        capiAppfwAlarmSymbols, Tizen80CapiAppfwAlarm.fromLookup)!;

Tizen80CapiAppfwAppCommon? _tizen80CapiAppfwAppCommon;
Tizen80CapiAppfwAppCommon get tizen80CapiAppfwAppCommon =>
    _tizen80CapiAppfwAppCommon ??= _getTizenInstance(
        capiAppfwAppCommonSymbols, Tizen80CapiAppfwAppCommon.fromLookup)!;

Tizen80CapiAppfwAppControl? _tizen80CapiAppfwAppControl;
Tizen80CapiAppfwAppControl get tizen80CapiAppfwAppControl =>
    _tizen80CapiAppfwAppControl ??= _getTizenInstance(
        capiAppfwAppControlSymbols, Tizen80CapiAppfwAppControl.fromLookup)!;

Tizen80CapiAppfwAppManager? _tizen80CapiAppfwAppManager;
Tizen80CapiAppfwAppManager get tizen80CapiAppfwAppManager =>
    _tizen80CapiAppfwAppManager ??= _getTizenInstance(
        capiAppfwAppManagerSymbols, Tizen80CapiAppfwAppManager.fromLookup)!;

Tizen80CapiAppfwApplication? _tizen80CapiAppfwApplication;
Tizen80CapiAppfwApplication get tizen80CapiAppfwApplication =>
    _tizen80CapiAppfwApplication ??= _getTizenInstance(
        capiAppfwApplicationSymbols, Tizen80CapiAppfwApplication.fromLookup)!;

Tizen80CapiAppfwEvent? _tizen80CapiAppfwEvent;
Tizen80CapiAppfwEvent get tizen80CapiAppfwEvent =>
    _tizen80CapiAppfwEvent ??= _getTizenInstance(
        capiAppfwEventSymbols, Tizen80CapiAppfwEvent.fromLookup)!;

Tizen80CapiAppfwJobScheduler? _tizen80CapiAppfwJobScheduler;
Tizen80CapiAppfwJobScheduler get tizen80CapiAppfwJobScheduler =>
    _tizen80CapiAppfwJobScheduler ??= _getTizenInstance(
        capiAppfwJobSchedulerSymbols, Tizen80CapiAppfwJobScheduler.fromLookup)!;

Tizen80CapiAppfwPackageManager? _tizen80CapiAppfwPackageManager;
Tizen80CapiAppfwPackageManager get tizen80CapiAppfwPackageManager =>
    _tizen80CapiAppfwPackageManager ??= _getTizenInstance(
        capiAppfwPackageManagerSymbols, Tizen80CapiAppfwPackageManager.fromLookup)!;

Tizen80CapiAppfwPreference? _tizen80CapiAppfwPreference;
Tizen80CapiAppfwPreference get tizen80CapiAppfwPreference =>
    _tizen80CapiAppfwPreference ??= _getTizenInstance(
        capiAppfwPreferenceSymbols, Tizen80CapiAppfwPreference.fromLookup)!;

Tizen80CapiBaseCommon? _tizen80CapiBaseCommon;
Tizen80CapiBaseCommon get tizen80CapiBaseCommon =>
    _tizen80CapiBaseCommon ??= _getTizenInstance(
        capiBaseCommonSymbols, Tizen80CapiBaseCommon.fromLookup)!;

Tizen80CapiContentMediaContent? _tizen80CapiContentMediaContent;
Tizen80CapiContentMediaContent get tizen80CapiContentMediaContent =>
    _tizen80CapiContentMediaContent ??= _getTizenInstance(
        capiContentMediaContentSymbols, Tizen80CapiContentMediaContent.fromLookup)!;

Tizen80CapiContentMimeType? _tizen80CapiContentMimeType;
Tizen80CapiContentMimeType get tizen80CapiContentMimeType =>
    _tizen80CapiContentMimeType ??= _getTizenInstance(
        capiContentMimeTypeSymbols, Tizen80CapiContentMimeType.fromLookup)!;

Tizen80CapiContext? _tizen80CapiContext;
Tizen80CapiContext get tizen80CapiContext =>
    _tizen80CapiContext ??= _getTizenInstance(
        capiContextSymbols, Tizen80CapiContext.fromLookup)!;

Tizen80CapiGeofenceManager? _tizen80CapiGeofenceManager;
Tizen80CapiGeofenceManager get tizen80CapiGeofenceManager =>
    _tizen80CapiGeofenceManager ??= _getTizenInstance(
        capiGeofenceManagerSymbols, Tizen80CapiGeofenceManager.fromLookup)!;

Tizen80CapiLocationManager? _tizen80CapiLocationManager;
Tizen80CapiLocationManager get tizen80CapiLocationManager =>
    _tizen80CapiLocationManager ??= _getTizenInstance(
        capiLocationManagerSymbols, Tizen80CapiLocationManager.fromLookup)!;

Tizen80CapiMediaAudioIo? _tizen80CapiMediaAudioIo;
Tizen80CapiMediaAudioIo get tizen80CapiMediaAudioIo =>
    _tizen80CapiMediaAudioIo ??= _getTizenInstance(
        capiMediaAudioIoSymbols, Tizen80CapiMediaAudioIo.fromLookup)!;

Tizen80CapiMediaCamera? _tizen80CapiMediaCamera;
Tizen80CapiMediaCamera get tizen80CapiMediaCamera =>
    _tizen80CapiMediaCamera ??= _getTizenInstance(
        capiMediaCameraSymbols, Tizen80CapiMediaCamera.fromLookup)!;

Tizen80CapiMediaCodec? _tizen80CapiMediaCodec;
Tizen80CapiMediaCodec get tizen80CapiMediaCodec =>
    _tizen80CapiMediaCodec ??= _getTizenInstance(
        capiMediaCodecSymbols, Tizen80CapiMediaCodec.fromLookup)!;

Tizen80CapiMediaController? _tizen80CapiMediaController;
Tizen80CapiMediaController get tizen80CapiMediaController =>
    _tizen80CapiMediaController ??= _getTizenInstance(
        capiMediaControllerSymbols, Tizen80CapiMediaController.fromLookup)!;

Tizen80CapiMediaImageUtil? _tizen80CapiMediaImageUtil;
Tizen80CapiMediaImageUtil get tizen80CapiMediaImageUtil =>
    _tizen80CapiMediaImageUtil ??= _getTizenInstance(
        capiMediaImageUtilSymbols, Tizen80CapiMediaImageUtil.fromLookup)!;

Tizen80CapiMediaMetadataEditor? _tizen80CapiMediaMetadataEditor;
Tizen80CapiMediaMetadataEditor get tizen80CapiMediaMetadataEditor =>
    _tizen80CapiMediaMetadataEditor ??= _getTizenInstance(
        capiMediaMetadataEditorSymbols, Tizen80CapiMediaMetadataEditor.fromLookup)!;

Tizen80CapiMediaMetadataExtractor? _tizen80CapiMediaMetadataExtractor;
Tizen80CapiMediaMetadataExtractor get tizen80CapiMediaMetadataExtractor =>
    _tizen80CapiMediaMetadataExtractor ??= _getTizenInstance(
        capiMediaMetadataExtractorSymbols, Tizen80CapiMediaMetadataExtractor.fromLookup)!;

Tizen80CapiMediaPlayer? _tizen80CapiMediaPlayer;
Tizen80CapiMediaPlayer get tizen80CapiMediaPlayer =>
    _tizen80CapiMediaPlayer ??= _getTizenInstance(
        capiMediaPlayerSymbols, Tizen80CapiMediaPlayer.fromLookup)!;

Tizen80CapiMediaRadio? _tizen80CapiMediaRadio;
Tizen80CapiMediaRadio get tizen80CapiMediaRadio =>
    _tizen80CapiMediaRadio ??= _getTizenInstance(
        capiMediaRadioSymbols, Tizen80CapiMediaRadio.fromLookup)!;

Tizen80CapiMediaRecorder? _tizen80CapiMediaRecorder;
Tizen80CapiMediaRecorder get tizen80CapiMediaRecorder =>
    _tizen80CapiMediaRecorder ??= _getTizenInstance(
        capiMediaRecorderSymbols, Tizen80CapiMediaRecorder.fromLookup)!;

Tizen80CapiMediaScreenMirroring? _tizen80CapiMediaScreenMirroring;
Tizen80CapiMediaScreenMirroring get tizen80CapiMediaScreenMirroring =>
    _tizen80CapiMediaScreenMirroring ??= _getTizenInstance(
        capiMediaScreenMirroringSymbols, Tizen80CapiMediaScreenMirroring.fromLookup)!;

Tizen80CapiMediaSoundManager? _tizen80CapiMediaSoundManager;
Tizen80CapiMediaSoundManager get tizen80CapiMediaSoundManager =>
    _tizen80CapiMediaSoundManager ??= _getTizenInstance(
        capiMediaSoundManagerSymbols, Tizen80CapiMediaSoundManager.fromLookup)!;

Tizen80CapiMediaSoundPool? _tizen80CapiMediaSoundPool;
Tizen80CapiMediaSoundPool get tizen80CapiMediaSoundPool =>
    _tizen80CapiMediaSoundPool ??= _getTizenInstance(
        capiMediaSoundPoolSymbols, Tizen80CapiMediaSoundPool.fromLookup)!;

Tizen80CapiMediaStreamer? _tizen80CapiMediaStreamer;
Tizen80CapiMediaStreamer get tizen80CapiMediaStreamer =>
    _tizen80CapiMediaStreamer ??= _getTizenInstance(
        capiMediaStreamerSymbols, Tizen80CapiMediaStreamer.fromLookup)!;

Tizen80CapiMediaStreamrecorder? _tizen80CapiMediaStreamrecorder;
Tizen80CapiMediaStreamrecorder get tizen80CapiMediaStreamrecorder =>
    _tizen80CapiMediaStreamrecorder ??= _getTizenInstance(
        capiMediaStreamrecorderSymbols, Tizen80CapiMediaStreamrecorder.fromLookup)!;

Tizen80CapiMediaThumbnailUtil? _tizen80CapiMediaThumbnailUtil;
Tizen80CapiMediaThumbnailUtil get tizen80CapiMediaThumbnailUtil =>
    _tizen80CapiMediaThumbnailUtil ??= _getTizenInstance(
        capiMediaThumbnailUtilSymbols, Tizen80CapiMediaThumbnailUtil.fromLookup)!;

Tizen80CapiMediaTonePlayer? _tizen80CapiMediaTonePlayer;
Tizen80CapiMediaTonePlayer get tizen80CapiMediaTonePlayer =>
    _tizen80CapiMediaTonePlayer ??= _getTizenInstance(
        capiMediaTonePlayerSymbols, Tizen80CapiMediaTonePlayer.fromLookup)!;

Tizen80CapiMediaTool? _tizen80CapiMediaTool;
Tizen80CapiMediaTool get tizen80CapiMediaTool =>
    _tizen80CapiMediaTool ??= _getTizenInstance(
        capiMediaToolSymbols, Tizen80CapiMediaTool.fromLookup)!;

Tizen80CapiMediaWavPlayer? _tizen80CapiMediaWavPlayer;
Tizen80CapiMediaWavPlayer get tizen80CapiMediaWavPlayer =>
    _tizen80CapiMediaWavPlayer ??= _getTizenInstance(
        capiMediaWavPlayerSymbols, Tizen80CapiMediaWavPlayer.fromLookup)!;

Tizen80CapiMediademuxer? _tizen80CapiMediademuxer;
Tizen80CapiMediademuxer get tizen80CapiMediademuxer =>
    _tizen80CapiMediademuxer ??= _getTizenInstance(
        capiMediademuxerSymbols, Tizen80CapiMediademuxer.fromLookup)!;

Tizen80CapiMediamuxer? _tizen80CapiMediamuxer;
Tizen80CapiMediamuxer get tizen80CapiMediamuxer =>
    _tizen80CapiMediamuxer ??= _getTizenInstance(
        capiMediamuxerSymbols, Tizen80CapiMediamuxer.fromLookup)!;

Tizen80CapiMessagingEmail? _tizen80CapiMessagingEmail;
Tizen80CapiMessagingEmail get tizen80CapiMessagingEmail =>
    _tizen80CapiMessagingEmail ??= _getTizenInstance(
        capiMessagingEmailSymbols, Tizen80CapiMessagingEmail.fromLookup)!;

Tizen80CapiNetworkBluetooth? _tizen80CapiNetworkBluetooth;
Tizen80CapiNetworkBluetooth get tizen80CapiNetworkBluetooth =>
    _tizen80CapiNetworkBluetooth ??= _getTizenInstance(
        capiNetworkBluetoothSymbols, Tizen80CapiNetworkBluetooth.fromLookup)!;

Tizen80CapiNetworkConnection? _tizen80CapiNetworkConnection;
Tizen80CapiNetworkConnection get tizen80CapiNetworkConnection =>
    _tizen80CapiNetworkConnection ??= _getTizenInstance(
        capiNetworkConnectionSymbols, Tizen80CapiNetworkConnection.fromLookup)!;

Tizen80CapiNetworkHttp? _tizen80CapiNetworkHttp;
Tizen80CapiNetworkHttp get tizen80CapiNetworkHttp =>
    _tizen80CapiNetworkHttp ??= _getTizenInstance(
        capiNetworkHttpSymbols, Tizen80CapiNetworkHttp.fromLookup)!;

Tizen80CapiNetworkInm? _tizen80CapiNetworkInm;
Tizen80CapiNetworkInm get tizen80CapiNetworkInm =>
    _tizen80CapiNetworkInm ??= _getTizenInstance(
        capiNetworkInmSymbols, Tizen80CapiNetworkInm.fromLookup)!;

Tizen80CapiNetworkSoftap? _tizen80CapiNetworkSoftap;
Tizen80CapiNetworkSoftap get tizen80CapiNetworkSoftap =>
    _tizen80CapiNetworkSoftap ??= _getTizenInstance(
        capiNetworkSoftapSymbols, Tizen80CapiNetworkSoftap.fromLookup)!;

Tizen80CapiNetworkStc? _tizen80CapiNetworkStc;
Tizen80CapiNetworkStc get tizen80CapiNetworkStc =>
    _tizen80CapiNetworkStc ??= _getTizenInstance(
        capiNetworkStcSymbols, Tizen80CapiNetworkStc.fromLookup)!;

Tizen80CapiNetworkWifiManager? _tizen80CapiNetworkWifiManager;
Tizen80CapiNetworkWifiManager get tizen80CapiNetworkWifiManager =>
    _tizen80CapiNetworkWifiManager ??= _getTizenInstance(
        capiNetworkWifiManagerSymbols, Tizen80CapiNetworkWifiManager.fromLookup)!;

Tizen80CapiPrivacyPrivilegeManager? _tizen80CapiPrivacyPrivilegeManager;
Tizen80CapiPrivacyPrivilegeManager get tizen80CapiPrivacyPrivilegeManager =>
    _tizen80CapiPrivacyPrivilegeManager ??= _getTizenInstance(
        capiPrivacyPrivilegeManagerSymbols, Tizen80CapiPrivacyPrivilegeManager.fromLookup)!;

Tizen80CapiSystemDevice? _tizen80CapiSystemDevice;
Tizen80CapiSystemDevice get tizen80CapiSystemDevice =>
    _tizen80CapiSystemDevice ??= _getTizenInstance(
        capiSystemDeviceSymbols, Tizen80CapiSystemDevice.fromLookup)!;

Tizen80CapiSystemInfo? _tizen80CapiSystemInfo;
Tizen80CapiSystemInfo get tizen80CapiSystemInfo =>
    _tizen80CapiSystemInfo ??= _getTizenInstance(
        capiSystemInfoSymbols, Tizen80CapiSystemInfo.fromLookup)!;

Tizen80CapiSystemMediaKey? _tizen80CapiSystemMediaKey;
Tizen80CapiSystemMediaKey get tizen80CapiSystemMediaKey =>
    _tizen80CapiSystemMediaKey ??= _getTizenInstance(
        capiSystemMediaKeySymbols, Tizen80CapiSystemMediaKey.fromLookup)!;

Tizen80CapiSystemPeripheralIo? _tizen80CapiSystemPeripheralIo;
Tizen80CapiSystemPeripheralIo get tizen80CapiSystemPeripheralIo =>
    _tizen80CapiSystemPeripheralIo ??= _getTizenInstance(
        capiSystemPeripheralIoSymbols, Tizen80CapiSystemPeripheralIo.fromLookup)!;

Tizen80CapiSystemRuntimeInfo? _tizen80CapiSystemRuntimeInfo;
Tizen80CapiSystemRuntimeInfo get tizen80CapiSystemRuntimeInfo =>
    _tizen80CapiSystemRuntimeInfo ??= _getTizenInstance(
        capiSystemRuntimeInfoSymbols, Tizen80CapiSystemRuntimeInfo.fromLookup)!;

Tizen80CapiSystemSensor? _tizen80CapiSystemSensor;
Tizen80CapiSystemSensor get tizen80CapiSystemSensor =>
    _tizen80CapiSystemSensor ??= _getTizenInstance(
        capiSystemSensorSymbols, Tizen80CapiSystemSensor.fromLookup)!;

Tizen80CapiSystemSystemSettings? _tizen80CapiSystemSystemSettings;
Tizen80CapiSystemSystemSettings get tizen80CapiSystemSystemSettings =>
    _tizen80CapiSystemSystemSettings ??= _getTizenInstance(
        capiSystemSystemSettingsSymbols, Tizen80CapiSystemSystemSettings.fromLookup)!;

Tizen80CapiSystemUsbhost? _tizen80CapiSystemUsbhost;
Tizen80CapiSystemUsbhost get tizen80CapiSystemUsbhost =>
    _tizen80CapiSystemUsbhost ??= _getTizenInstance(
        capiSystemUsbhostSymbols, Tizen80CapiSystemUsbhost.fromLookup)!;

Tizen80CapiUiAutofill? _tizen80CapiUiAutofill;
Tizen80CapiUiAutofill get tizen80CapiUiAutofill =>
    _tizen80CapiUiAutofill ??= _getTizenInstance(
        capiUiAutofillSymbols, Tizen80CapiUiAutofill.fromLookup)!;

Tizen80CapiUiAutofillCommon? _tizen80CapiUiAutofillCommon;
Tizen80CapiUiAutofillCommon get tizen80CapiUiAutofillCommon =>
    _tizen80CapiUiAutofillCommon ??= _getTizenInstance(
        capiUiAutofillCommonSymbols, Tizen80CapiUiAutofillCommon.fromLookup)!;

Tizen80CapiUiAutofillManager? _tizen80CapiUiAutofillManager;
Tizen80CapiUiAutofillManager get tizen80CapiUiAutofillManager =>
    _tizen80CapiUiAutofillManager ??= _getTizenInstance(
        capiUiAutofillManagerSymbols, Tizen80CapiUiAutofillManager.fromLookup)!;

Tizen80CapiUiAutofillService? _tizen80CapiUiAutofillService;
Tizen80CapiUiAutofillService get tizen80CapiUiAutofillService =>
    _tizen80CapiUiAutofillService ??= _getTizenInstance(
        capiUiAutofillServiceSymbols, Tizen80CapiUiAutofillService.fromLookup)!;

Tizen80CapiUiInputmethod? _tizen80CapiUiInputmethod;
Tizen80CapiUiInputmethod get tizen80CapiUiInputmethod =>
    _tizen80CapiUiInputmethod ??= _getTizenInstance(
        capiUiInputmethodSymbols, Tizen80CapiUiInputmethod.fromLookup)!;

Tizen80CapiUiInputmethodManager? _tizen80CapiUiInputmethodManager;
Tizen80CapiUiInputmethodManager get tizen80CapiUiInputmethodManager =>
    _tizen80CapiUiInputmethodManager ??= _getTizenInstance(
        capiUiInputmethodManagerSymbols, Tizen80CapiUiInputmethodManager.fromLookup)!;

Tizen80CapiVpnsvc? _tizen80CapiVpnsvc;
Tizen80CapiVpnsvc get tizen80CapiVpnsvc =>
    _tizen80CapiVpnsvc ??= _getTizenInstance(
        capiVpnsvcSymbols, Tizen80CapiVpnsvc.fromLookup)!;

Tizen80CapiWebUrlDownload? _tizen80CapiWebUrlDownload;
Tizen80CapiWebUrlDownload get tizen80CapiWebUrlDownload =>
    _tizen80CapiWebUrlDownload ??= _getTizenInstance(
        capiWebUrlDownloadSymbols, Tizen80CapiWebUrlDownload.fromLookup)!;

Tizen80ContactsService2? _tizen80ContactsService2;
Tizen80ContactsService2 get tizen80ContactsService2 =>
    _tizen80ContactsService2 ??= _getTizenInstance(
        contactsService2Symbols, Tizen80ContactsService2.fromLookup)!;

Tizen80CoreSyncClient? _tizen80CoreSyncClient;
Tizen80CoreSyncClient get tizen80CoreSyncClient =>
    _tizen80CoreSyncClient ??= _getTizenInstance(
        coreSyncClientSymbols, Tizen80CoreSyncClient.fromLookup)!;

Tizen80CsrClient? _tizen80CsrClient;
Tizen80CsrClient get tizen80CsrClient =>
    _tizen80CsrClient ??= _getTizenInstance(
        csrClientSymbols, Tizen80CsrClient.fromLookup)!;

Tizen80DataControl? _tizen80DataControl;
Tizen80DataControl get tizen80DataControl =>
    _tizen80DataControl ??= _getTizenInstance(
        dataControlSymbols, Tizen80DataControl.fromLookup)!;

Tizen80DeviceCertificateManager? _tizen80DeviceCertificateManager;
Tizen80DeviceCertificateManager get tizen80DeviceCertificateManager =>
    _tizen80DeviceCertificateManager ??= _getTizenInstance(
        deviceCertificateManagerSymbols, Tizen80DeviceCertificateManager.fromLookup)!;

Tizen80Diagnostics? _tizen80Diagnostics;
Tizen80Diagnostics get tizen80Diagnostics =>
    _tizen80Diagnostics ??= _getTizenInstance(
        diagnosticsSymbols, Tizen80Diagnostics.fromLookup)!;

Tizen80Dlog? _tizen80Dlog;
Tizen80Dlog get tizen80Dlog =>
    _tizen80Dlog ??= _getTizenInstance(
        dlogSymbols, Tizen80Dlog.fromLookup)!;

Tizen80Dpm? _tizen80Dpm;
Tizen80Dpm get tizen80Dpm =>
    _tizen80Dpm ??= _getTizenInstance(
        dpmSymbols, Tizen80Dpm.fromLookup)!;

Tizen80Eom? _tizen80Eom;
Tizen80Eom get tizen80Eom =>
    _tizen80Eom ??= _getTizenInstance(
        eomSymbols, Tizen80Eom.fromLookup)!;

Tizen80Feedback? _tizen80Feedback;
Tizen80Feedback get tizen80Feedback =>
    _tizen80Feedback ??= _getTizenInstance(
        feedbackSymbols, Tizen80Feedback.fromLookup)!;

Tizen80FidoClient? _tizen80FidoClient;
Tizen80FidoClient get tizen80FidoClient =>
    _tizen80FidoClient ??= _getTizenInstance(
        fidoClientSymbols, Tizen80FidoClient.fromLookup)!;

Tizen80Iotcon? _tizen80Iotcon;
Tizen80Iotcon get tizen80Iotcon =>
    _tizen80Iotcon ??= _getTizenInstance(
        iotconSymbols, Tizen80Iotcon.fromLookup)!;

Tizen80KeyManagerClient? _tizen80KeyManagerClient;
Tizen80KeyManagerClient get tizen80KeyManagerClient =>
    _tizen80KeyManagerClient ??= _getTizenInstance(
        keyManagerClientSymbols, Tizen80KeyManagerClient.fromLookup)!;

Tizen80Ma? _tizen80Ma;
Tizen80Ma get tizen80Ma =>
    _tizen80Ma ??= _getTizenInstance(
        maSymbols, Tizen80Ma.fromLookup)!;

Tizen80MediaEditor? _tizen80MediaEditor;
Tizen80MediaEditor get tizen80MediaEditor =>
    _tizen80MediaEditor ??= _getTizenInstance(
        capiMediaEditorSymbols, Tizen80MediaEditor.fromLookup)!;

Tizen80MessagePort? _tizen80MessagePort;
Tizen80MessagePort get tizen80MessagePort =>
    _tizen80MessagePort ??= _getTizenInstance(
        messagePortSymbols, Tizen80MessagePort.fromLookup)!;

Tizen80MlApiService? _tizen80MlApiService;
Tizen80MlApiService get tizen80MlApiService =>
    _tizen80MlApiService ??= _getTizenInstance(
        capiMlServiceSymbols, Tizen80MlApiService.fromLookup)!;

Tizen80Mv3D? _tizen80Mv3D;
Tizen80Mv3D get tizen80Mv3D =>
    _tizen80Mv3D ??= _getTizenInstance(
        mv_3dSymbols, Tizen80Mv3D.fromLookup)!;

Tizen80Mv_Common? _tizen80MvCommon;
Tizen80Mv_Common get tizen80MvCommon =>
    _tizen80MvCommon ??= _getTizenInstance(
        mv_commonSymbols, Tizen80Mv_Common.fromLookup)!;

Tizen80Mv_Face? _tizen80MvFace;
Tizen80Mv_Face get tizen80MvFace =>
    _tizen80MvFace ??= _getTizenInstance(
        mv_faceSymbols, Tizen80Mv_Face.fromLookup)!;

Tizen80MvFaceRecognition? _tizen80MvFaceRecognition;
Tizen80MvFaceRecognition get tizen80MvFaceRecognition =>
    _tizen80MvFaceRecognition ??= _getTizenInstance(
        mv_face_recognitionSymbols, Tizen80MvFaceRecognition.fromLookup)!;

Tizen80Mv_Image? _tizen80MvImage;
Tizen80Mv_Image get tizen80MvImage =>
    _tizen80MvImage ??= _getTizenInstance(
        mv_imageSymbols, Tizen80Mv_Image.fromLookup)!;

Tizen80Mv_Inference? _tizen80MvInference;
Tizen80Mv_Inference get tizen80MvInference =>
    _tizen80MvInference ??= _getTizenInstance(
        mv_inferenceSymbols, Tizen80Mv_Inference.fromLookup)!;

Tizen80MvRoiTracker? _tizen80MvRoiTracker;
Tizen80MvRoiTracker get tizen80MvRoiTracker =>
    _tizen80MvRoiTracker ??= _getTizenInstance(
        mv_roi_trackerSymbols, Tizen80MvRoiTracker.fromLookup)!;

Tizen80Mv_Surveillance? _tizen80MvSurveillance;
Tizen80Mv_Surveillance get tizen80MvSurveillance =>
    _tizen80MvSurveillance ??= _getTizenInstance(
        mv_surveillanceSymbols, Tizen80Mv_Surveillance.fromLookup)!;

Tizen80Nnstreamer? _tizen80Nnstreamer;
Tizen80Nnstreamer get tizen80Nnstreamer =>
    _tizen80Nnstreamer ??= _getTizenInstance(
        capiNnstreamerSymbols, Tizen80Nnstreamer.fromLookup)!;

Tizen80NnstreamerSingle? _tizen80NnstreamerSingle;
Tizen80NnstreamerSingle get tizen80NnstreamerSingle =>
    _tizen80NnstreamerSingle ??= _getTizenInstance(
        capiNnstreamerSymbols, Tizen80NnstreamerSingle.fromLookup)!;

Tizen80Nntrainer? _tizen80Nntrainer;
Tizen80Nntrainer get tizen80Nntrainer =>
    _tizen80Nntrainer ??= _getTizenInstance(
        capiNntrainerSymbols, Tizen80Nntrainer.fromLookup)!;

Tizen80Notification? _tizen80Notification;
Tizen80Notification get tizen80Notification =>
    _tizen80Notification ??= _getTizenInstance(
        notificationSymbols, Tizen80Notification.fromLookup)!;

Tizen80NotificationEx? _tizen80NotificationEx;
Tizen80NotificationEx get tizen80NotificationEx =>
    _tizen80NotificationEx ??= _getTizenInstance(
        notificationExSymbols, Tizen80NotificationEx.fromLookup)!;

Tizen80NsdDnsSd? _tizen80NsdDnsSd;
Tizen80NsdDnsSd get tizen80NsdDnsSd =>
    _tizen80NsdDnsSd ??= _getTizenInstance(
        nsdDnsSdSymbols, Tizen80NsdDnsSd.fromLookup)!;

Tizen80NsdSsdp? _tizen80NsdSsdp;
Tizen80NsdSsdp get tizen80NsdSsdp =>
    _tizen80NsdSsdp ??= _getTizenInstance(
        nsdSsdpSymbols, Tizen80NsdSsdp.fromLookup)!;

Tizen80Oauth2? _tizen80Oauth2;
Tizen80Oauth2 get tizen80Oauth2 =>
    _tizen80Oauth2 ??= _getTizenInstance(
        oauth2Symbols, Tizen80Oauth2.fromLookup)!;

Tizen80PhonenumberUtils? _tizen80PhonenumberUtils;
Tizen80PhonenumberUtils get tizen80PhonenumberUtils =>
    _tizen80PhonenumberUtils ??= _getTizenInstance(
        phonenumberUtilsSymbols, Tizen80PhonenumberUtils.fromLookup)!;

Tizen80PrivilegeInfo? _tizen80PrivilegeInfo;
Tizen80PrivilegeInfo get tizen80PrivilegeInfo =>
    _tizen80PrivilegeInfo ??= _getTizenInstance(
        privilegeInfoSymbols, Tizen80PrivilegeInfo.fromLookup)!;

Tizen80Push? _tizen80Push;
Tizen80Push get tizen80Push =>
    _tizen80Push ??= _getTizenInstance(
        pushSymbols, Tizen80Push.fromLookup)!;

Tizen80ResourceMonitor? _tizen80ResourceMonitor;
Tizen80ResourceMonitor get tizen80ResourceMonitor =>
    _tizen80ResourceMonitor ??= _getTizenInstance(
        capiSystemResourceMonitorSymbols, Tizen80ResourceMonitor.fromLookup)!;

Tizen80RpcPort? _tizen80RpcPort;
Tizen80RpcPort get tizen80RpcPort =>
    _tizen80RpcPort ??= _getTizenInstance(
        rpcPortSymbols, Tizen80RpcPort.fromLookup)!;

Tizen80Storage? _tizen80Storage;
Tizen80Storage get tizen80Storage =>
    _tizen80Storage ??= _getTizenInstance(
        storageSymbols, Tizen80Storage.fromLookup)!;

Tizen80Stt? _tizen80Stt;
Tizen80Stt get tizen80Stt =>
    _tizen80Stt ??= _getTizenInstance(
        sttSymbols, Tizen80Stt.fromLookup)!;

Tizen80SttEngine? _tizen80SttEngine;
Tizen80SttEngine get tizen80SttEngine =>
    _tizen80SttEngine ??= _getTizenInstance(
        stt_engineSymbols, Tizen80SttEngine.fromLookup)!;

Tizen80Tbm? _tizen80Tbm;
Tizen80Tbm get tizen80Tbm =>
    _tizen80Tbm ??= _getTizenInstance(
        tbmSymbols, Tizen80Tbm.fromLookup)!;

Tizen80Ttrace? _tizen80Ttrace;
Tizen80Ttrace get tizen80Ttrace =>
    _tizen80Ttrace ??= _getTizenInstance(
        ttraceSymbols, Tizen80Ttrace.fromLookup)!;

Tizen80Tts? _tizen80Tts;
Tizen80Tts get tizen80Tts =>
    _tizen80Tts ??= _getTizenInstance(
        ttsSymbols, Tizen80Tts.fromLookup)!;

Tizen80TtsEngine? _tizen80TtsEngine;
Tizen80TtsEngine get tizen80TtsEngine =>
    _tizen80TtsEngine ??= _getTizenInstance(
        tts_engineSymbols, Tizen80TtsEngine.fromLookup)!;

Tizen80UpdateControl? _tizen80UpdateControl;
Tizen80UpdateControl get tizen80UpdateControl =>
    _tizen80UpdateControl ??= _getTizenInstance(
        updateControlSymbols, Tizen80UpdateControl.fromLookup)!;

Tizen80Vc? _tizen80Vc;
Tizen80Vc get tizen80Vc =>
    _tizen80Vc ??= _getTizenInstance(
        vcSymbols, Tizen80Vc.fromLookup)!;

Tizen80Vc_Engine? _tizen80VcEngine;
Tizen80Vc_Engine get tizen80VcEngine =>
    _tizen80VcEngine ??= _getTizenInstance(
        vc_engineSymbols, Tizen80Vc_Engine.fromLookup)!;

Tizen80Vc_Manager? _tizen80VcManager;
Tizen80Vc_Manager get tizen80VcManager =>
    _tizen80VcManager ??= _getTizenInstance(
        vc_managerSymbols, Tizen80Vc_Manager.fromLookup)!;

Tizen80Webrtc? _tizen80Webrtc;
Tizen80Webrtc get tizen80Webrtc =>
    _tizen80Webrtc ??= _getTizenInstance(
        capiMediaWebrtcSymbols, Tizen80Webrtc.fromLookup)!;

Tizen80WifiDirect? _tizen80WifiDirect;
Tizen80WifiDirect get tizen80WifiDirect =>
    _tizen80WifiDirect ??= _getTizenInstance(
        wifiDirectSymbols, Tizen80WifiDirect.fromLookup)!;

Tizen80Yaca? _tizen80Yaca;
Tizen80Yaca get tizen80Yaca =>
    _tizen80Yaca ??= _getTizenInstance(
        yacaSymbols, Tizen80Yaca.fromLookup)!;
