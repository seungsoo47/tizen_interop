library tizen_interop;

import 'dart:ffi';

import '../../src/bindings/7.0/generated_symbols.dart';
import '../../src/bindings/7.0/generated_bindings_accounts_svc.dart';
import '../../src/bindings/7.0/generated_bindings_app_control_uri.dart';
import '../../src/bindings/7.0/generated_bindings_appcore_agent.dart';
import '../../src/bindings/7.0/generated_bindings_asp.dart';
import '../../src/bindings/7.0/generated_bindings_badge.dart';
import '../../src/bindings/7.0/generated_bindings_bundle.dart';
import '../../src/bindings/7.0/generated_bindings_calendar_service2.dart';
import '../../src/bindings/7.0/generated_bindings_capi_appfw_alarm.dart';
import '../../src/bindings/7.0/generated_bindings_capi_appfw_app_common.dart';
import '../../src/bindings/7.0/generated_bindings_capi_appfw_app_control.dart';
import '../../src/bindings/7.0/generated_bindings_capi_appfw_app_manager.dart';
import '../../src/bindings/7.0/generated_bindings_capi_appfw_application.dart';
import '../../src/bindings/7.0/generated_bindings_capi_appfw_event.dart';
import '../../src/bindings/7.0/generated_bindings_capi_appfw_job_scheduler.dart';
import '../../src/bindings/7.0/generated_bindings_capi_appfw_package_manager.dart';
import '../../src/bindings/7.0/generated_bindings_capi_appfw_preference.dart';
import '../../src/bindings/7.0/generated_bindings_capi_base_common.dart';
import '../../src/bindings/7.0/generated_bindings_capi_content_media_content.dart';
import '../../src/bindings/7.0/generated_bindings_capi_content_mime_type.dart';
import '../../src/bindings/7.0/generated_bindings_capi_context.dart';
import '../../src/bindings/7.0/generated_bindings_capi_geofence_manager.dart';
import '../../src/bindings/7.0/generated_bindings_capi_location_manager.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_audio_io.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_camera.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_codec.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_controller.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_image_util.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_metadata_editor.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_metadata_extractor.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_player.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_radio.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_recorder.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_screen_mirroring.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_sound_manager.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_sound_pool.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_streamer.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_streamrecorder.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_thumbnail_util.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_tone_player.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_tool.dart';
import '../../src/bindings/7.0/generated_bindings_capi_media_wav_player.dart';
import '../../src/bindings/7.0/generated_bindings_capi_mediademuxer.dart';
import '../../src/bindings/7.0/generated_bindings_capi_mediamuxer.dart';
import '../../src/bindings/7.0/generated_bindings_capi_messaging_email.dart';
import '../../src/bindings/7.0/generated_bindings_capi_network_bluetooth.dart';
import '../../src/bindings/7.0/generated_bindings_capi_network_connection.dart';
import '../../src/bindings/7.0/generated_bindings_capi_network_http.dart';
import '../../src/bindings/7.0/generated_bindings_capi_network_inm.dart';
import '../../src/bindings/7.0/generated_bindings_capi_network_softap.dart';
import '../../src/bindings/7.0/generated_bindings_capi_network_stc.dart';
import '../../src/bindings/7.0/generated_bindings_capi_network_wifi_manager.dart';
import '../../src/bindings/7.0/generated_bindings_capi_privacy_privilege_manager.dart';
import '../../src/bindings/7.0/generated_bindings_capi_system_device.dart';
import '../../src/bindings/7.0/generated_bindings_capi_system_info.dart';
import '../../src/bindings/7.0/generated_bindings_capi_system_media_key.dart';
import '../../src/bindings/7.0/generated_bindings_capi_system_peripheral_io.dart';
import '../../src/bindings/7.0/generated_bindings_capi_system_runtime_info.dart';
import '../../src/bindings/7.0/generated_bindings_capi_system_sensor.dart';
import '../../src/bindings/7.0/generated_bindings_capi_system_system_settings.dart';
import '../../src/bindings/7.0/generated_bindings_capi_system_usbhost.dart';
import '../../src/bindings/7.0/generated_bindings_capi_ui_autofill.dart';
import '../../src/bindings/7.0/generated_bindings_capi_ui_autofill_common.dart';
import '../../src/bindings/7.0/generated_bindings_capi_ui_autofill_manager.dart';
import '../../src/bindings/7.0/generated_bindings_capi_ui_autofill_service.dart';
import '../../src/bindings/7.0/generated_bindings_capi_ui_inputmethod.dart';
import '../../src/bindings/7.0/generated_bindings_capi_ui_inputmethod_manager.dart';
import '../../src/bindings/7.0/generated_bindings_capi_vpnsvc.dart';
import '../../src/bindings/7.0/generated_bindings_capi_web_url_download.dart';
import '../../src/bindings/7.0/generated_bindings_cbhm.dart';
import '../../src/bindings/7.0/generated_bindings_contacts_service2.dart';
import '../../src/bindings/7.0/generated_bindings_core_sync_client.dart';
import '../../src/bindings/7.0/generated_bindings_csr_client.dart';
import '../../src/bindings/7.0/generated_bindings_data_control.dart';
import '../../src/bindings/7.0/generated_bindings_device_certificate_manager.dart';
import '../../src/bindings/7.0/generated_bindings_diagnostics.dart';
import '../../src/bindings/7.0/generated_bindings_dlog.dart';
import '../../src/bindings/7.0/generated_bindings_dpm.dart';
import '../../src/bindings/7.0/generated_bindings_eom.dart';
import '../../src/bindings/7.0/generated_bindings_feedback.dart';
import '../../src/bindings/7.0/generated_bindings_fido_client.dart';
import '../../src/bindings/7.0/generated_bindings_iotcon.dart';
import '../../src/bindings/7.0/generated_bindings_key_manager_client.dart';
import '../../src/bindings/7.0/generated_bindings_ma.dart';
import '../../src/bindings/7.0/generated_bindings_media_editor.dart';
import '../../src/bindings/7.0/generated_bindings_message_port.dart';
import '../../src/bindings/7.0/generated_bindings_ml_api_service.dart';
import '../../src/bindings/7.0/generated_bindings_mv_3d.dart';
import '../../src/bindings/7.0/generated_bindings_mv_common.dart';
import '../../src/bindings/7.0/generated_bindings_mv_face.dart';
import '../../src/bindings/7.0/generated_bindings_mv_face_recognition.dart';
import '../../src/bindings/7.0/generated_bindings_mv_image.dart';
import '../../src/bindings/7.0/generated_bindings_mv_inference.dart';
import '../../src/bindings/7.0/generated_bindings_mv_roi_tracker.dart';
import '../../src/bindings/7.0/generated_bindings_mv_surveillance.dart';
import '../../src/bindings/7.0/generated_bindings_nnstreamer.dart';
import '../../src/bindings/7.0/generated_bindings_nnstreamer_single.dart';
import '../../src/bindings/7.0/generated_bindings_nntrainer.dart';
import '../../src/bindings/7.0/generated_bindings_notification.dart';
import '../../src/bindings/7.0/generated_bindings_notification_ex.dart';
import '../../src/bindings/7.0/generated_bindings_nsd_dns_sd.dart';
import '../../src/bindings/7.0/generated_bindings_nsd_ssdp.dart';
import '../../src/bindings/7.0/generated_bindings_oauth2.dart';
import '../../src/bindings/7.0/generated_bindings_phonenumber_utils.dart';
import '../../src/bindings/7.0/generated_bindings_privilege_info.dart';
import '../../src/bindings/7.0/generated_bindings_push.dart';
import '../../src/bindings/7.0/generated_bindings_resource_monitor.dart';
import '../../src/bindings/7.0/generated_bindings_rpc_port.dart';
import '../../src/bindings/7.0/generated_bindings_storage.dart';
import '../../src/bindings/7.0/generated_bindings_stt.dart';
import '../../src/bindings/7.0/generated_bindings_stt_engine.dart';
import '../../src/bindings/7.0/generated_bindings_tbm.dart';
import '../../src/bindings/7.0/generated_bindings_ttrace.dart';
import '../../src/bindings/7.0/generated_bindings_tts.dart';
import '../../src/bindings/7.0/generated_bindings_tts_engine.dart';
import '../../src/bindings/7.0/generated_bindings_update_control.dart';
import '../../src/bindings/7.0/generated_bindings_vc.dart';
import '../../src/bindings/7.0/generated_bindings_vc_engine.dart';
import '../../src/bindings/7.0/generated_bindings_vc_manager.dart';
import '../../src/bindings/7.0/generated_bindings_webrtc.dart';
import '../../src/bindings/7.0/generated_bindings_wifi_direct.dart';
import '../../src/bindings/7.0/generated_bindings_yaca.dart';
import '../../src/lookup_provider.dart';

export '../../src/extensions.dart';
export '../../src/bindings/7.0/generated_bindings_accounts_svc.dart';
export '../../src/bindings/7.0/generated_bindings_app_control_uri.dart';
export '../../src/bindings/7.0/generated_bindings_appcore_agent.dart';
export '../../src/bindings/7.0/generated_bindings_asp.dart';
export '../../src/bindings/7.0/generated_bindings_badge.dart';
export '../../src/bindings/7.0/generated_bindings_bundle.dart';
export '../../src/bindings/7.0/generated_bindings_calendar_service2.dart';
export '../../src/bindings/7.0/generated_bindings_capi_appfw_alarm.dart' hide app_control_h, app_control_s;
export '../../src/bindings/7.0/generated_bindings_capi_appfw_app_common.dart' hide app_event_type_e, app_event_handler, app_event_info, app_event_info_h;
export '../../src/bindings/7.0/generated_bindings_capi_appfw_app_control.dart' hide app_control_s, app_control_h, app_control_uri_h;
export '../../src/bindings/7.0/generated_bindings_capi_appfw_app_manager.dart';
export '../../src/bindings/7.0/generated_bindings_capi_appfw_application.dart' hide app_control_h, app_control_s, app_device_orientation_e, app_event_handler_h, app_event_handler, app_event_type_e, app_event_cb, app_event_cbFunction, Dartapp_event_cbFunction, app_event_info_h, app_event_info;
export '../../src/bindings/7.0/generated_bindings_capi_appfw_event.dart' hide bundle;
export '../../src/bindings/7.0/generated_bindings_capi_appfw_job_scheduler.dart';
export '../../src/bindings/7.0/generated_bindings_capi_appfw_package_manager.dart';
export '../../src/bindings/7.0/generated_bindings_capi_appfw_preference.dart';
export '../../src/bindings/7.0/generated_bindings_capi_base_common.dart';
export '../../src/bindings/7.0/generated_bindings_capi_content_media_content.dart';
export '../../src/bindings/7.0/generated_bindings_capi_content_mime_type.dart';
export '../../src/bindings/7.0/generated_bindings_capi_context.dart' hide app_control_h, app_control_s;
export '../../src/bindings/7.0/generated_bindings_capi_geofence_manager.dart';
export '../../src/bindings/7.0/generated_bindings_capi_location_manager.dart' hide time_t, Dart__time_t;
export '../../src/bindings/7.0/generated_bindings_capi_media_audio_io.dart';
export '../../src/bindings/7.0/generated_bindings_capi_media_camera.dart' hide UnnamedUnion1, UnnamedStruct1, media_packet_h, media_packet_s;
export '../../src/bindings/7.0/generated_bindings_capi_media_codec.dart';
export '../../src/bindings/7.0/generated_bindings_capi_media_controller.dart' hide bundle;
export '../../src/bindings/7.0/generated_bindings_capi_media_image_util.dart' hide media_packet_h, media_packet_s;
export '../../src/bindings/7.0/generated_bindings_capi_media_metadata_editor.dart';
export '../../src/bindings/7.0/generated_bindings_capi_media_metadata_extractor.dart';
export '../../src/bindings/7.0/generated_bindings_capi_media_player.dart' hide sound_stream_info_h, sound_stream_info_s, media_packet_h, media_packet_s, media_format_h, media_format_s;
export '../../src/bindings/7.0/generated_bindings_capi_media_radio.dart';
export '../../src/bindings/7.0/generated_bindings_capi_media_recorder.dart' hide sound_stream_info_h, sound_stream_info_s, audio_sample_type_e, camera_preview_data_s, camera_h, camera_cli_s, camera_pixel_format_e, UnnamedUnion1, UnnamedStruct1, UnnamedStruct2, UnnamedStruct3, UnnamedStruct4, UnnamedStruct5, UnnamedStruct6;
export '../../src/bindings/7.0/generated_bindings_capi_media_screen_mirroring.dart';
export '../../src/bindings/7.0/generated_bindings_capi_media_sound_manager.dart' hide sound_type_e, sound_stream_info_s, sound_stream_info_h;
export '../../src/bindings/7.0/generated_bindings_capi_media_sound_pool.dart';
export '../../src/bindings/7.0/generated_bindings_capi_media_streamer.dart' hide media_packet_h, media_packet_s, media_format_h, media_format_s, bundle;
export '../../src/bindings/7.0/generated_bindings_capi_media_streamrecorder.dart' hide media_packet_h, media_packet_s;
export '../../src/bindings/7.0/generated_bindings_capi_media_thumbnail_util.dart';
export '../../src/bindings/7.0/generated_bindings_capi_media_tone_player.dart' hide sound_stream_info_h, sound_stream_info_s;
export '../../src/bindings/7.0/generated_bindings_capi_media_tool.dart' hide media_format_s, media_format_h, media_packet_s, media_packet_h, tbm_surface_h, media_format_mimetype_e;
export '../../src/bindings/7.0/generated_bindings_capi_media_wav_player.dart' hide sound_stream_info_h, sound_stream_info_s;
export '../../src/bindings/7.0/generated_bindings_capi_mediademuxer.dart' hide media_format_h, media_format_s, media_packet_h, media_packet_s;
export '../../src/bindings/7.0/generated_bindings_capi_mediamuxer.dart' hide media_format_h, media_format_s, media_packet_h, media_packet_s;
export '../../src/bindings/7.0/generated_bindings_capi_messaging_email.dart';
export '../../src/bindings/7.0/generated_bindings_capi_network_bluetooth.dart';
export '../../src/bindings/7.0/generated_bindings_capi_network_connection.dart';
export '../../src/bindings/7.0/generated_bindings_capi_network_http.dart';
export '../../src/bindings/7.0/generated_bindings_capi_network_inm.dart';
export '../../src/bindings/7.0/generated_bindings_capi_network_softap.dart' hide time_t, Dart__time_t;
export '../../src/bindings/7.0/generated_bindings_capi_network_stc.dart' hide time_t, Dart__time_t;
export '../../src/bindings/7.0/generated_bindings_capi_network_wifi_manager.dart';
export '../../src/bindings/7.0/generated_bindings_capi_privacy_privilege_manager.dart';
export '../../src/bindings/7.0/generated_bindings_capi_system_device.dart';
export '../../src/bindings/7.0/generated_bindings_capi_system_info.dart';
export '../../src/bindings/7.0/generated_bindings_capi_system_media_key.dart';
export '../../src/bindings/7.0/generated_bindings_capi_system_peripheral_io.dart';
export '../../src/bindings/7.0/generated_bindings_capi_system_runtime_info.dart';
export '../../src/bindings/7.0/generated_bindings_capi_system_sensor.dart' hide sensor_h, time_t, Dart__time_t;
export '../../src/bindings/7.0/generated_bindings_capi_system_system_settings.dart';
export '../../src/bindings/7.0/generated_bindings_capi_system_usbhost.dart';
export '../../src/bindings/7.0/generated_bindings_capi_ui_autofill.dart';
export '../../src/bindings/7.0/generated_bindings_capi_ui_autofill_common.dart' hide autofill_auth_info_s, autofill_view_info_s, autofill_fill_response_s, autofill_save_view_info_s, autofill_error_info_s, autofill_auth_info_h, autofill_view_info_h, autofill_save_view_info_h, autofill_fill_response_h, autofill_error_info_h;
export '../../src/bindings/7.0/generated_bindings_capi_ui_autofill_manager.dart';
export '../../src/bindings/7.0/generated_bindings_capi_ui_autofill_service.dart' hide autofill_view_info_h, autofill_view_info_s, autofill_auth_info_h, autofill_auth_info_s, autofill_fill_response_h, autofill_fill_response_s, autofill_save_view_info_h, autofill_save_view_info_s, autofill_error_info_h, autofill_error_info_s;
export '../../src/bindings/7.0/generated_bindings_capi_ui_inputmethod.dart';
export '../../src/bindings/7.0/generated_bindings_capi_ui_inputmethod_manager.dart';
export '../../src/bindings/7.0/generated_bindings_capi_vpnsvc.dart';
export '../../src/bindings/7.0/generated_bindings_capi_web_url_download.dart' hide app_control_h, app_control_s;
export '../../src/bindings/7.0/generated_bindings_cbhm.dart';
export '../../src/bindings/7.0/generated_bindings_contacts_service2.dart';
export '../../src/bindings/7.0/generated_bindings_core_sync_client.dart' hide account_h, account_s, bundle;
export '../../src/bindings/7.0/generated_bindings_csr_client.dart' hide time_t, Dart__time_t;
export '../../src/bindings/7.0/generated_bindings_data_control.dart' hide bundle;
export '../../src/bindings/7.0/generated_bindings_device_certificate_manager.dart';
export '../../src/bindings/7.0/generated_bindings_diagnostics.dart' hide bundle;
export '../../src/bindings/7.0/generated_bindings_dlog.dart';
export '../../src/bindings/7.0/generated_bindings_dpm.dart';
export '../../src/bindings/7.0/generated_bindings_eom.dart' hide Evas_Object, Efl_Canvas_Object, Eo;
export '../../src/bindings/7.0/generated_bindings_feedback.dart';
export '../../src/bindings/7.0/generated_bindings_fido_client.dart';
export '../../src/bindings/7.0/generated_bindings_iotcon.dart';
export '../../src/bindings/7.0/generated_bindings_key_manager_client.dart';
export '../../src/bindings/7.0/generated_bindings_ma.dart';
export '../../src/bindings/7.0/generated_bindings_media_editor.dart';
export '../../src/bindings/7.0/generated_bindings_message_port.dart' hide bundle;
export '../../src/bindings/7.0/generated_bindings_ml_api_service.dart';
export '../../src/bindings/7.0/generated_bindings_mv_3d.dart' hide mv_source_h, mv_engine_config_h;
export '../../src/bindings/7.0/generated_bindings_mv_common.dart' hide media_packet_h, media_packet_s;
export '../../src/bindings/7.0/generated_bindings_mv_face.dart' hide mv_source_h, mv_engine_config_h, mv_rectangle_s, mv_point_s, mv_quadrangle_s;
export '../../src/bindings/7.0/generated_bindings_mv_face_recognition.dart' hide mv_source_h;
export '../../src/bindings/7.0/generated_bindings_mv_image.dart' hide mv_source_h, mv_engine_config_h, mv_rectangle_s, mv_point_s, mv_quadrangle_s;
export '../../src/bindings/7.0/generated_bindings_mv_inference.dart' hide mv_source_h, mv_engine_config_h, mv_rectangle_s, mv_point_s;
export '../../src/bindings/7.0/generated_bindings_mv_roi_tracker.dart' hide mv_source_h, mv_engine_config_h, mv_rectangle_s, mv_point_s;
export '../../src/bindings/7.0/generated_bindings_mv_surveillance.dart' hide mv_source_h, mv_engine_config_h, mv_point_s;
export '../../src/bindings/7.0/generated_bindings_nnstreamer.dart' hide ml_tensors_info_h, ml_nnfw_type_e, ml_nnfw_hw_e, ml_tensors_data_h, ml_pipeline_state_e;
export '../../src/bindings/7.0/generated_bindings_nnstreamer_single.dart' hide ml_tensors_info_h, ml_nnfw_type_e, ml_nnfw_hw_e, ml_tensors_data_h, ml_option_h;
export '../../src/bindings/7.0/generated_bindings_nntrainer.dart' hide ml_tensors_info_h;
export '../../src/bindings/7.0/generated_bindings_notification.dart' hide time_t, Dart__time_t, app_control_h, app_control_s, notification_h;
export '../../src/bindings/7.0/generated_bindings_notification_ex.dart' hide time_t, Dart__time_t, app_control_h, app_control_s, bundle;
export '../../src/bindings/7.0/generated_bindings_nsd_dns_sd.dart';
export '../../src/bindings/7.0/generated_bindings_nsd_ssdp.dart';
export '../../src/bindings/7.0/generated_bindings_oauth2.dart';
export '../../src/bindings/7.0/generated_bindings_phonenumber_utils.dart';
export '../../src/bindings/7.0/generated_bindings_privilege_info.dart';
export '../../src/bindings/7.0/generated_bindings_push.dart' hide app_control_h, app_control_s;
export '../../src/bindings/7.0/generated_bindings_resource_monitor.dart';
export '../../src/bindings/7.0/generated_bindings_rpc_port.dart' hide bundle, Dart__time_t;
export '../../src/bindings/7.0/generated_bindings_storage.dart';
export '../../src/bindings/7.0/generated_bindings_stt.dart' hide stt_h;
export '../../src/bindings/7.0/generated_bindings_stt_engine.dart';
export '../../src/bindings/7.0/generated_bindings_tbm.dart';
export '../../src/bindings/7.0/generated_bindings_ttrace.dart';
export '../../src/bindings/7.0/generated_bindings_tts.dart' hide tts_h;
export '../../src/bindings/7.0/generated_bindings_tts_engine.dart';
export '../../src/bindings/7.0/generated_bindings_update_control.dart' hide tm;
export '../../src/bindings/7.0/generated_bindings_vc.dart';
export '../../src/bindings/7.0/generated_bindings_vc_engine.dart';
export '../../src/bindings/7.0/generated_bindings_vc_manager.dart' hide vc_cmd_list_h, vc_cmd_list_s, vc_supported_language_cb, vc_supported_language_cbFunction, Dartvc_supported_language_cbFunction, vc_state_e, vc_service_state_e, vc_result_event_e, vc_result_cb, vc_result_cbFunction, Dartvc_result_cbFunction, vc_state_changed_cb, vc_state_changed_cbFunction, Dartvc_state_changed_cbFunction, vc_service_state_changed_cb, vc_service_state_changed_cbFunction, Dartvc_service_state_changed_cbFunction, vc_current_language_changed_cb, vc_current_language_changed_cbFunction, Dartvc_current_language_changed_cbFunction, vc_error_cb, vc_error_cbFunction, Dartvc_error_cbFunction, vc_error_e, vc_audio_channel_e, vc_audio_type_e, vc_feedback_event_e, vc_tts_utterance_status_e, VC_COMMAND_TYPE_FOREGROUND, VC_COMMAND_TYPE_BACKGROUND, VC_RESULT_MESSAGE_NONE, VC_RESULT_MESSAGE_ERROR_TOO_LOUD;
export '../../src/bindings/7.0/generated_bindings_webrtc.dart' hide bundle, media_format_h, media_packet_h, sound_stream_info_h, sound_stream_info_s, media_format_s, media_packet_s, UnnamedUnion1;
export '../../src/bindings/7.0/generated_bindings_wifi_direct.dart';
export '../../src/bindings/7.0/generated_bindings_yaca.dart' hide yaca_key_s, yaca_context_s;

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

Tizen70AccountsSvc? _tizen70AccountsSvc;
Tizen70AccountsSvc get tizen70AccountsSvc =>
    _tizen70AccountsSvc ??= _getTizenInstance(
        accountsSvcSymbols, Tizen70AccountsSvc.fromLookup)!;

Tizen70AppControlUri? _tizen70AppControlUri;
Tizen70AppControlUri get tizen70AppControlUri =>
    _tizen70AppControlUri ??= _getTizenInstance(
        capiAppfwAppControlUriSymbols, Tizen70AppControlUri.fromLookup)!;

Tizen70AppcoreAgent? _tizen70AppcoreAgent;
Tizen70AppcoreAgent get tizen70AppcoreAgent =>
    _tizen70AppcoreAgent ??= _getTizenInstance(
        appcoreAgentSymbols, Tizen70AppcoreAgent.fromLookup)!;

Tizen70Asp? _tizen70Asp;
Tizen70Asp get tizen70Asp =>
    _tizen70Asp ??= _getTizenInstance(
        aspSymbols, Tizen70Asp.fromLookup)!;

Tizen70Badge? _tizen70Badge;
Tizen70Badge get tizen70Badge =>
    _tizen70Badge ??= _getTizenInstance(
        badgeSymbols, Tizen70Badge.fromLookup)!;

Tizen70Bundle? _tizen70Bundle;
Tizen70Bundle get tizen70Bundle =>
    _tizen70Bundle ??= _getTizenInstance(
        bundleSymbols, Tizen70Bundle.fromLookup)!;

Tizen70CalendarService2? _tizen70CalendarService2;
Tizen70CalendarService2 get tizen70CalendarService2 =>
    _tizen70CalendarService2 ??= _getTizenInstance(
        calendarService2Symbols, Tizen70CalendarService2.fromLookup)!;

Tizen70CapiAppfwAlarm? _tizen70CapiAppfwAlarm;
Tizen70CapiAppfwAlarm get tizen70CapiAppfwAlarm =>
    _tizen70CapiAppfwAlarm ??= _getTizenInstance(
        capiAppfwAlarmSymbols, Tizen70CapiAppfwAlarm.fromLookup)!;

Tizen70CapiAppfwAppCommon? _tizen70CapiAppfwAppCommon;
Tizen70CapiAppfwAppCommon get tizen70CapiAppfwAppCommon =>
    _tizen70CapiAppfwAppCommon ??= _getTizenInstance(
        capiAppfwAppCommonSymbols, Tizen70CapiAppfwAppCommon.fromLookup)!;

Tizen70CapiAppfwAppControl? _tizen70CapiAppfwAppControl;
Tizen70CapiAppfwAppControl get tizen70CapiAppfwAppControl =>
    _tizen70CapiAppfwAppControl ??= _getTizenInstance(
        capiAppfwAppControlSymbols, Tizen70CapiAppfwAppControl.fromLookup)!;

Tizen70CapiAppfwAppManager? _tizen70CapiAppfwAppManager;
Tizen70CapiAppfwAppManager get tizen70CapiAppfwAppManager =>
    _tizen70CapiAppfwAppManager ??= _getTizenInstance(
        capiAppfwAppManagerSymbols, Tizen70CapiAppfwAppManager.fromLookup)!;

Tizen70CapiAppfwApplication? _tizen70CapiAppfwApplication;
Tizen70CapiAppfwApplication get tizen70CapiAppfwApplication =>
    _tizen70CapiAppfwApplication ??= _getTizenInstance(
        capiAppfwApplicationSymbols, Tizen70CapiAppfwApplication.fromLookup)!;

Tizen70CapiAppfwEvent? _tizen70CapiAppfwEvent;
Tizen70CapiAppfwEvent get tizen70CapiAppfwEvent =>
    _tizen70CapiAppfwEvent ??= _getTizenInstance(
        capiAppfwEventSymbols, Tizen70CapiAppfwEvent.fromLookup)!;

Tizen70CapiAppfwJobScheduler? _tizen70CapiAppfwJobScheduler;
Tizen70CapiAppfwJobScheduler get tizen70CapiAppfwJobScheduler =>
    _tizen70CapiAppfwJobScheduler ??= _getTizenInstance(
        capiAppfwJobSchedulerSymbols, Tizen70CapiAppfwJobScheduler.fromLookup)!;

Tizen70CapiAppfwPackageManager? _tizen70CapiAppfwPackageManager;
Tizen70CapiAppfwPackageManager get tizen70CapiAppfwPackageManager =>
    _tizen70CapiAppfwPackageManager ??= _getTizenInstance(
        capiAppfwPackageManagerSymbols, Tizen70CapiAppfwPackageManager.fromLookup)!;

Tizen70CapiAppfwPreference? _tizen70CapiAppfwPreference;
Tizen70CapiAppfwPreference get tizen70CapiAppfwPreference =>
    _tizen70CapiAppfwPreference ??= _getTizenInstance(
        capiAppfwPreferenceSymbols, Tizen70CapiAppfwPreference.fromLookup)!;

Tizen70CapiBaseCommon? _tizen70CapiBaseCommon;
Tizen70CapiBaseCommon get tizen70CapiBaseCommon =>
    _tizen70CapiBaseCommon ??= _getTizenInstance(
        capiBaseCommonSymbols, Tizen70CapiBaseCommon.fromLookup)!;

Tizen70CapiContentMediaContent? _tizen70CapiContentMediaContent;
Tizen70CapiContentMediaContent get tizen70CapiContentMediaContent =>
    _tizen70CapiContentMediaContent ??= _getTizenInstance(
        capiContentMediaContentSymbols, Tizen70CapiContentMediaContent.fromLookup)!;

Tizen70CapiContentMimeType? _tizen70CapiContentMimeType;
Tizen70CapiContentMimeType get tizen70CapiContentMimeType =>
    _tizen70CapiContentMimeType ??= _getTizenInstance(
        capiContentMimeTypeSymbols, Tizen70CapiContentMimeType.fromLookup)!;

Tizen70CapiContext? _tizen70CapiContext;
Tizen70CapiContext get tizen70CapiContext =>
    _tizen70CapiContext ??= _getTizenInstance(
        capiContextSymbols, Tizen70CapiContext.fromLookup)!;

Tizen70CapiGeofenceManager? _tizen70CapiGeofenceManager;
Tizen70CapiGeofenceManager get tizen70CapiGeofenceManager =>
    _tizen70CapiGeofenceManager ??= _getTizenInstance(
        capiGeofenceManagerSymbols, Tizen70CapiGeofenceManager.fromLookup)!;

Tizen70CapiLocationManager? _tizen70CapiLocationManager;
Tizen70CapiLocationManager get tizen70CapiLocationManager =>
    _tizen70CapiLocationManager ??= _getTizenInstance(
        capiLocationManagerSymbols, Tizen70CapiLocationManager.fromLookup)!;

Tizen70CapiMediaAudioIo? _tizen70CapiMediaAudioIo;
Tizen70CapiMediaAudioIo get tizen70CapiMediaAudioIo =>
    _tizen70CapiMediaAudioIo ??= _getTizenInstance(
        capiMediaAudioIoSymbols, Tizen70CapiMediaAudioIo.fromLookup)!;

Tizen70CapiMediaCamera? _tizen70CapiMediaCamera;
Tizen70CapiMediaCamera get tizen70CapiMediaCamera =>
    _tizen70CapiMediaCamera ??= _getTizenInstance(
        capiMediaCameraSymbols, Tizen70CapiMediaCamera.fromLookup)!;

Tizen70CapiMediaCodec? _tizen70CapiMediaCodec;
Tizen70CapiMediaCodec get tizen70CapiMediaCodec =>
    _tizen70CapiMediaCodec ??= _getTizenInstance(
        capiMediaCodecSymbols, Tizen70CapiMediaCodec.fromLookup)!;

Tizen70CapiMediaController? _tizen70CapiMediaController;
Tizen70CapiMediaController get tizen70CapiMediaController =>
    _tizen70CapiMediaController ??= _getTizenInstance(
        capiMediaControllerSymbols, Tizen70CapiMediaController.fromLookup)!;

Tizen70CapiMediaImageUtil? _tizen70CapiMediaImageUtil;
Tizen70CapiMediaImageUtil get tizen70CapiMediaImageUtil =>
    _tizen70CapiMediaImageUtil ??= _getTizenInstance(
        capiMediaImageUtilSymbols, Tizen70CapiMediaImageUtil.fromLookup)!;

Tizen70CapiMediaMetadataEditor? _tizen70CapiMediaMetadataEditor;
Tizen70CapiMediaMetadataEditor get tizen70CapiMediaMetadataEditor =>
    _tizen70CapiMediaMetadataEditor ??= _getTizenInstance(
        capiMediaMetadataEditorSymbols, Tizen70CapiMediaMetadataEditor.fromLookup)!;

Tizen70CapiMediaMetadataExtractor? _tizen70CapiMediaMetadataExtractor;
Tizen70CapiMediaMetadataExtractor get tizen70CapiMediaMetadataExtractor =>
    _tizen70CapiMediaMetadataExtractor ??= _getTizenInstance(
        capiMediaMetadataExtractorSymbols, Tizen70CapiMediaMetadataExtractor.fromLookup)!;

Tizen70CapiMediaPlayer? _tizen70CapiMediaPlayer;
Tizen70CapiMediaPlayer get tizen70CapiMediaPlayer =>
    _tizen70CapiMediaPlayer ??= _getTizenInstance(
        capiMediaPlayerSymbols, Tizen70CapiMediaPlayer.fromLookup)!;

Tizen70CapiMediaRadio? _tizen70CapiMediaRadio;
Tizen70CapiMediaRadio get tizen70CapiMediaRadio =>
    _tizen70CapiMediaRadio ??= _getTizenInstance(
        capiMediaRadioSymbols, Tizen70CapiMediaRadio.fromLookup)!;

Tizen70CapiMediaRecorder? _tizen70CapiMediaRecorder;
Tizen70CapiMediaRecorder get tizen70CapiMediaRecorder =>
    _tizen70CapiMediaRecorder ??= _getTizenInstance(
        capiMediaRecorderSymbols, Tizen70CapiMediaRecorder.fromLookup)!;

Tizen70CapiMediaScreenMirroring? _tizen70CapiMediaScreenMirroring;
Tizen70CapiMediaScreenMirroring get tizen70CapiMediaScreenMirroring =>
    _tizen70CapiMediaScreenMirroring ??= _getTizenInstance(
        capiMediaScreenMirroringSymbols, Tizen70CapiMediaScreenMirroring.fromLookup)!;

Tizen70CapiMediaSoundManager? _tizen70CapiMediaSoundManager;
Tizen70CapiMediaSoundManager get tizen70CapiMediaSoundManager =>
    _tizen70CapiMediaSoundManager ??= _getTizenInstance(
        capiMediaSoundManagerSymbols, Tizen70CapiMediaSoundManager.fromLookup)!;

Tizen70CapiMediaSoundPool? _tizen70CapiMediaSoundPool;
Tizen70CapiMediaSoundPool get tizen70CapiMediaSoundPool =>
    _tizen70CapiMediaSoundPool ??= _getTizenInstance(
        capiMediaSoundPoolSymbols, Tizen70CapiMediaSoundPool.fromLookup)!;

Tizen70CapiMediaStreamer? _tizen70CapiMediaStreamer;
Tizen70CapiMediaStreamer get tizen70CapiMediaStreamer =>
    _tizen70CapiMediaStreamer ??= _getTizenInstance(
        capiMediaStreamerSymbols, Tizen70CapiMediaStreamer.fromLookup)!;

Tizen70CapiMediaStreamrecorder? _tizen70CapiMediaStreamrecorder;
Tizen70CapiMediaStreamrecorder get tizen70CapiMediaStreamrecorder =>
    _tizen70CapiMediaStreamrecorder ??= _getTizenInstance(
        capiMediaStreamrecorderSymbols, Tizen70CapiMediaStreamrecorder.fromLookup)!;

Tizen70CapiMediaThumbnailUtil? _tizen70CapiMediaThumbnailUtil;
Tizen70CapiMediaThumbnailUtil get tizen70CapiMediaThumbnailUtil =>
    _tizen70CapiMediaThumbnailUtil ??= _getTizenInstance(
        capiMediaThumbnailUtilSymbols, Tizen70CapiMediaThumbnailUtil.fromLookup)!;

Tizen70CapiMediaTonePlayer? _tizen70CapiMediaTonePlayer;
Tizen70CapiMediaTonePlayer get tizen70CapiMediaTonePlayer =>
    _tizen70CapiMediaTonePlayer ??= _getTizenInstance(
        capiMediaTonePlayerSymbols, Tizen70CapiMediaTonePlayer.fromLookup)!;

Tizen70CapiMediaTool? _tizen70CapiMediaTool;
Tizen70CapiMediaTool get tizen70CapiMediaTool =>
    _tizen70CapiMediaTool ??= _getTizenInstance(
        capiMediaToolSymbols, Tizen70CapiMediaTool.fromLookup)!;

Tizen70CapiMediaWavPlayer? _tizen70CapiMediaWavPlayer;
Tizen70CapiMediaWavPlayer get tizen70CapiMediaWavPlayer =>
    _tizen70CapiMediaWavPlayer ??= _getTizenInstance(
        capiMediaWavPlayerSymbols, Tizen70CapiMediaWavPlayer.fromLookup)!;

Tizen70CapiMediademuxer? _tizen70CapiMediademuxer;
Tizen70CapiMediademuxer get tizen70CapiMediademuxer =>
    _tizen70CapiMediademuxer ??= _getTizenInstance(
        capiMediademuxerSymbols, Tizen70CapiMediademuxer.fromLookup)!;

Tizen70CapiMediamuxer? _tizen70CapiMediamuxer;
Tizen70CapiMediamuxer get tizen70CapiMediamuxer =>
    _tizen70CapiMediamuxer ??= _getTizenInstance(
        capiMediamuxerSymbols, Tizen70CapiMediamuxer.fromLookup)!;

Tizen70CapiMessagingEmail? _tizen70CapiMessagingEmail;
Tizen70CapiMessagingEmail get tizen70CapiMessagingEmail =>
    _tizen70CapiMessagingEmail ??= _getTizenInstance(
        capiMessagingEmailSymbols, Tizen70CapiMessagingEmail.fromLookup)!;

Tizen70CapiNetworkBluetooth? _tizen70CapiNetworkBluetooth;
Tizen70CapiNetworkBluetooth get tizen70CapiNetworkBluetooth =>
    _tizen70CapiNetworkBluetooth ??= _getTizenInstance(
        capiNetworkBluetoothSymbols, Tizen70CapiNetworkBluetooth.fromLookup)!;

Tizen70CapiNetworkConnection? _tizen70CapiNetworkConnection;
Tizen70CapiNetworkConnection get tizen70CapiNetworkConnection =>
    _tizen70CapiNetworkConnection ??= _getTizenInstance(
        capiNetworkConnectionSymbols, Tizen70CapiNetworkConnection.fromLookup)!;

Tizen70CapiNetworkHttp? _tizen70CapiNetworkHttp;
Tizen70CapiNetworkHttp get tizen70CapiNetworkHttp =>
    _tizen70CapiNetworkHttp ??= _getTizenInstance(
        capiNetworkHttpSymbols, Tizen70CapiNetworkHttp.fromLookup)!;

Tizen70CapiNetworkInm? _tizen70CapiNetworkInm;
Tizen70CapiNetworkInm get tizen70CapiNetworkInm =>
    _tizen70CapiNetworkInm ??= _getTizenInstance(
        capiNetworkInmSymbols, Tizen70CapiNetworkInm.fromLookup)!;

Tizen70CapiNetworkSoftap? _tizen70CapiNetworkSoftap;
Tizen70CapiNetworkSoftap get tizen70CapiNetworkSoftap =>
    _tizen70CapiNetworkSoftap ??= _getTizenInstance(
        capiNetworkSoftapSymbols, Tizen70CapiNetworkSoftap.fromLookup)!;

Tizen70CapiNetworkStc? _tizen70CapiNetworkStc;
Tizen70CapiNetworkStc get tizen70CapiNetworkStc =>
    _tizen70CapiNetworkStc ??= _getTizenInstance(
        capiNetworkStcSymbols, Tizen70CapiNetworkStc.fromLookup)!;

Tizen70CapiNetworkWifiManager? _tizen70CapiNetworkWifiManager;
Tizen70CapiNetworkWifiManager get tizen70CapiNetworkWifiManager =>
    _tizen70CapiNetworkWifiManager ??= _getTizenInstance(
        capiNetworkWifiManagerSymbols, Tizen70CapiNetworkWifiManager.fromLookup)!;

Tizen70CapiPrivacyPrivilegeManager? _tizen70CapiPrivacyPrivilegeManager;
Tizen70CapiPrivacyPrivilegeManager get tizen70CapiPrivacyPrivilegeManager =>
    _tizen70CapiPrivacyPrivilegeManager ??= _getTizenInstance(
        capiPrivacyPrivilegeManagerSymbols, Tizen70CapiPrivacyPrivilegeManager.fromLookup)!;

Tizen70CapiSystemDevice? _tizen70CapiSystemDevice;
Tizen70CapiSystemDevice get tizen70CapiSystemDevice =>
    _tizen70CapiSystemDevice ??= _getTizenInstance(
        capiSystemDeviceSymbols, Tizen70CapiSystemDevice.fromLookup)!;

Tizen70CapiSystemInfo? _tizen70CapiSystemInfo;
Tizen70CapiSystemInfo get tizen70CapiSystemInfo =>
    _tizen70CapiSystemInfo ??= _getTizenInstance(
        capiSystemInfoSymbols, Tizen70CapiSystemInfo.fromLookup)!;

Tizen70CapiSystemMediaKey? _tizen70CapiSystemMediaKey;
Tizen70CapiSystemMediaKey get tizen70CapiSystemMediaKey =>
    _tizen70CapiSystemMediaKey ??= _getTizenInstance(
        capiSystemMediaKeySymbols, Tizen70CapiSystemMediaKey.fromLookup)!;

Tizen70CapiSystemPeripheralIo? _tizen70CapiSystemPeripheralIo;
Tizen70CapiSystemPeripheralIo get tizen70CapiSystemPeripheralIo =>
    _tizen70CapiSystemPeripheralIo ??= _getTizenInstance(
        capiSystemPeripheralIoSymbols, Tizen70CapiSystemPeripheralIo.fromLookup)!;

Tizen70CapiSystemRuntimeInfo? _tizen70CapiSystemRuntimeInfo;
Tizen70CapiSystemRuntimeInfo get tizen70CapiSystemRuntimeInfo =>
    _tizen70CapiSystemRuntimeInfo ??= _getTizenInstance(
        capiSystemRuntimeInfoSymbols, Tizen70CapiSystemRuntimeInfo.fromLookup)!;

Tizen70CapiSystemSensor? _tizen70CapiSystemSensor;
Tizen70CapiSystemSensor get tizen70CapiSystemSensor =>
    _tizen70CapiSystemSensor ??= _getTizenInstance(
        capiSystemSensorSymbols, Tizen70CapiSystemSensor.fromLookup)!;

Tizen70CapiSystemSystemSettings? _tizen70CapiSystemSystemSettings;
Tizen70CapiSystemSystemSettings get tizen70CapiSystemSystemSettings =>
    _tizen70CapiSystemSystemSettings ??= _getTizenInstance(
        capiSystemSystemSettingsSymbols, Tizen70CapiSystemSystemSettings.fromLookup)!;

Tizen70CapiSystemUsbhost? _tizen70CapiSystemUsbhost;
Tizen70CapiSystemUsbhost get tizen70CapiSystemUsbhost =>
    _tizen70CapiSystemUsbhost ??= _getTizenInstance(
        capiSystemUsbhostSymbols, Tizen70CapiSystemUsbhost.fromLookup)!;

Tizen70CapiUiAutofill? _tizen70CapiUiAutofill;
Tizen70CapiUiAutofill get tizen70CapiUiAutofill =>
    _tizen70CapiUiAutofill ??= _getTizenInstance(
        capiUiAutofillSymbols, Tizen70CapiUiAutofill.fromLookup)!;

Tizen70CapiUiAutofillCommon? _tizen70CapiUiAutofillCommon;
Tizen70CapiUiAutofillCommon get tizen70CapiUiAutofillCommon =>
    _tizen70CapiUiAutofillCommon ??= _getTizenInstance(
        capiUiAutofillCommonSymbols, Tizen70CapiUiAutofillCommon.fromLookup)!;

Tizen70CapiUiAutofillManager? _tizen70CapiUiAutofillManager;
Tizen70CapiUiAutofillManager get tizen70CapiUiAutofillManager =>
    _tizen70CapiUiAutofillManager ??= _getTizenInstance(
        capiUiAutofillManagerSymbols, Tizen70CapiUiAutofillManager.fromLookup)!;

Tizen70CapiUiAutofillService? _tizen70CapiUiAutofillService;
Tizen70CapiUiAutofillService get tizen70CapiUiAutofillService =>
    _tizen70CapiUiAutofillService ??= _getTizenInstance(
        capiUiAutofillServiceSymbols, Tizen70CapiUiAutofillService.fromLookup)!;

Tizen70CapiUiInputmethod? _tizen70CapiUiInputmethod;
Tizen70CapiUiInputmethod get tizen70CapiUiInputmethod =>
    _tizen70CapiUiInputmethod ??= _getTizenInstance(
        capiUiInputmethodSymbols, Tizen70CapiUiInputmethod.fromLookup)!;

Tizen70CapiUiInputmethodManager? _tizen70CapiUiInputmethodManager;
Tizen70CapiUiInputmethodManager get tizen70CapiUiInputmethodManager =>
    _tizen70CapiUiInputmethodManager ??= _getTizenInstance(
        capiUiInputmethodManagerSymbols, Tizen70CapiUiInputmethodManager.fromLookup)!;

Tizen70CapiVpnsvc? _tizen70CapiVpnsvc;
Tizen70CapiVpnsvc get tizen70CapiVpnsvc =>
    _tizen70CapiVpnsvc ??= _getTizenInstance(
        capiVpnsvcSymbols, Tizen70CapiVpnsvc.fromLookup)!;

Tizen70CapiWebUrlDownload? _tizen70CapiWebUrlDownload;
Tizen70CapiWebUrlDownload get tizen70CapiWebUrlDownload =>
    _tizen70CapiWebUrlDownload ??= _getTizenInstance(
        capiWebUrlDownloadSymbols, Tizen70CapiWebUrlDownload.fromLookup)!;

Tizen70Cbhm? _tizen70Cbhm;
Tizen70Cbhm get tizen70Cbhm =>
    _tizen70Cbhm ??= _getTizenInstance(
        cbhmSymbols, Tizen70Cbhm.fromLookup)!;

Tizen70ContactsService2? _tizen70ContactsService2;
Tizen70ContactsService2 get tizen70ContactsService2 =>
    _tizen70ContactsService2 ??= _getTizenInstance(
        contactsService2Symbols, Tizen70ContactsService2.fromLookup)!;

Tizen70CoreSyncClient? _tizen70CoreSyncClient;
Tizen70CoreSyncClient get tizen70CoreSyncClient =>
    _tizen70CoreSyncClient ??= _getTizenInstance(
        coreSyncClientSymbols, Tizen70CoreSyncClient.fromLookup)!;

Tizen70CsrClient? _tizen70CsrClient;
Tizen70CsrClient get tizen70CsrClient =>
    _tizen70CsrClient ??= _getTizenInstance(
        csrClientSymbols, Tizen70CsrClient.fromLookup)!;

Tizen70DataControl? _tizen70DataControl;
Tizen70DataControl get tizen70DataControl =>
    _tizen70DataControl ??= _getTizenInstance(
        dataControlSymbols, Tizen70DataControl.fromLookup)!;

Tizen70DeviceCertificateManager? _tizen70DeviceCertificateManager;
Tizen70DeviceCertificateManager get tizen70DeviceCertificateManager =>
    _tizen70DeviceCertificateManager ??= _getTizenInstance(
        deviceCertificateManagerSymbols, Tizen70DeviceCertificateManager.fromLookup)!;

Tizen70Diagnostics? _tizen70Diagnostics;
Tizen70Diagnostics get tizen70Diagnostics =>
    _tizen70Diagnostics ??= _getTizenInstance(
        diagnosticsSymbols, Tizen70Diagnostics.fromLookup)!;

Tizen70Dlog? _tizen70Dlog;
Tizen70Dlog get tizen70Dlog =>
    _tizen70Dlog ??= _getTizenInstance(
        dlogSymbols, Tizen70Dlog.fromLookup)!;

Tizen70Dpm? _tizen70Dpm;
Tizen70Dpm get tizen70Dpm =>
    _tizen70Dpm ??= _getTizenInstance(
        dpmSymbols, Tizen70Dpm.fromLookup)!;

Tizen70Eom? _tizen70Eom;
Tizen70Eom get tizen70Eom =>
    _tizen70Eom ??= _getTizenInstance(
        eomSymbols, Tizen70Eom.fromLookup)!;

Tizen70Feedback? _tizen70Feedback;
Tizen70Feedback get tizen70Feedback =>
    _tizen70Feedback ??= _getTizenInstance(
        feedbackSymbols, Tizen70Feedback.fromLookup)!;

Tizen70FidoClient? _tizen70FidoClient;
Tizen70FidoClient get tizen70FidoClient =>
    _tizen70FidoClient ??= _getTizenInstance(
        fidoClientSymbols, Tizen70FidoClient.fromLookup)!;

Tizen70Iotcon? _tizen70Iotcon;
Tizen70Iotcon get tizen70Iotcon =>
    _tizen70Iotcon ??= _getTizenInstance(
        iotconSymbols, Tizen70Iotcon.fromLookup)!;

Tizen70KeyManagerClient? _tizen70KeyManagerClient;
Tizen70KeyManagerClient get tizen70KeyManagerClient =>
    _tizen70KeyManagerClient ??= _getTizenInstance(
        keyManagerClientSymbols, Tizen70KeyManagerClient.fromLookup)!;

Tizen70Ma? _tizen70Ma;
Tizen70Ma get tizen70Ma =>
    _tizen70Ma ??= _getTizenInstance(
        maSymbols, Tizen70Ma.fromLookup)!;

Tizen70MediaEditor? _tizen70MediaEditor;
Tizen70MediaEditor get tizen70MediaEditor =>
    _tizen70MediaEditor ??= _getTizenInstance(
        capiMediaEditorSymbols, Tizen70MediaEditor.fromLookup)!;

Tizen70MessagePort? _tizen70MessagePort;
Tizen70MessagePort get tizen70MessagePort =>
    _tizen70MessagePort ??= _getTizenInstance(
        messagePortSymbols, Tizen70MessagePort.fromLookup)!;

Tizen70MlApiService? _tizen70MlApiService;
Tizen70MlApiService get tizen70MlApiService =>
    _tizen70MlApiService ??= _getTizenInstance(
        capiMlServiceSymbols, Tizen70MlApiService.fromLookup)!;

Tizen70Mv3D? _tizen70Mv3D;
Tizen70Mv3D get tizen70Mv3D =>
    _tizen70Mv3D ??= _getTizenInstance(
        mv_3dSymbols, Tizen70Mv3D.fromLookup)!;

Tizen70Mv_Common? _tizen70MvCommon;
Tizen70Mv_Common get tizen70MvCommon =>
    _tizen70MvCommon ??= _getTizenInstance(
        mv_commonSymbols, Tizen70Mv_Common.fromLookup)!;

Tizen70Mv_Face? _tizen70MvFace;
Tizen70Mv_Face get tizen70MvFace =>
    _tizen70MvFace ??= _getTizenInstance(
        mv_faceSymbols, Tizen70Mv_Face.fromLookup)!;

Tizen70MvFaceRecognition? _tizen70MvFaceRecognition;
Tizen70MvFaceRecognition get tizen70MvFaceRecognition =>
    _tizen70MvFaceRecognition ??= _getTizenInstance(
        mv_face_recognitionSymbols, Tizen70MvFaceRecognition.fromLookup)!;

Tizen70Mv_Image? _tizen70MvImage;
Tizen70Mv_Image get tizen70MvImage =>
    _tizen70MvImage ??= _getTizenInstance(
        mv_imageSymbols, Tizen70Mv_Image.fromLookup)!;

Tizen70Mv_Inference? _tizen70MvInference;
Tizen70Mv_Inference get tizen70MvInference =>
    _tizen70MvInference ??= _getTizenInstance(
        mv_inferenceSymbols, Tizen70Mv_Inference.fromLookup)!;

Tizen70MvRoiTracker? _tizen70MvRoiTracker;
Tizen70MvRoiTracker get tizen70MvRoiTracker =>
    _tizen70MvRoiTracker ??= _getTizenInstance(
        mv_roi_trackerSymbols, Tizen70MvRoiTracker.fromLookup)!;

Tizen70Mv_Surveillance? _tizen70MvSurveillance;
Tizen70Mv_Surveillance get tizen70MvSurveillance =>
    _tizen70MvSurveillance ??= _getTizenInstance(
        mv_surveillanceSymbols, Tizen70Mv_Surveillance.fromLookup)!;

Tizen70Nnstreamer? _tizen70Nnstreamer;
Tizen70Nnstreamer get tizen70Nnstreamer =>
    _tizen70Nnstreamer ??= _getTizenInstance(
        capiNnstreamerSymbols, Tizen70Nnstreamer.fromLookup)!;

Tizen70NnstreamerSingle? _tizen70NnstreamerSingle;
Tizen70NnstreamerSingle get tizen70NnstreamerSingle =>
    _tizen70NnstreamerSingle ??= _getTizenInstance(
        capiNnstreamerSymbols, Tizen70NnstreamerSingle.fromLookup)!;

Tizen70Nntrainer? _tizen70Nntrainer;
Tizen70Nntrainer get tizen70Nntrainer =>
    _tizen70Nntrainer ??= _getTizenInstance(
        capiNntrainerSymbols, Tizen70Nntrainer.fromLookup)!;

Tizen70Notification? _tizen70Notification;
Tizen70Notification get tizen70Notification =>
    _tizen70Notification ??= _getTizenInstance(
        notificationSymbols, Tizen70Notification.fromLookup)!;

Tizen70NotificationEx? _tizen70NotificationEx;
Tizen70NotificationEx get tizen70NotificationEx =>
    _tizen70NotificationEx ??= _getTizenInstance(
        notificationExSymbols, Tizen70NotificationEx.fromLookup)!;

Tizen70NsdDnsSd? _tizen70NsdDnsSd;
Tizen70NsdDnsSd get tizen70NsdDnsSd =>
    _tizen70NsdDnsSd ??= _getTizenInstance(
        nsdDnsSdSymbols, Tizen70NsdDnsSd.fromLookup)!;

Tizen70NsdSsdp? _tizen70NsdSsdp;
Tizen70NsdSsdp get tizen70NsdSsdp =>
    _tizen70NsdSsdp ??= _getTizenInstance(
        nsdSsdpSymbols, Tizen70NsdSsdp.fromLookup)!;

Tizen70Oauth2? _tizen70Oauth2;
Tizen70Oauth2 get tizen70Oauth2 =>
    _tizen70Oauth2 ??= _getTizenInstance(
        oauth2Symbols, Tizen70Oauth2.fromLookup)!;

Tizen70PhonenumberUtils? _tizen70PhonenumberUtils;
Tizen70PhonenumberUtils get tizen70PhonenumberUtils =>
    _tizen70PhonenumberUtils ??= _getTizenInstance(
        phonenumberUtilsSymbols, Tizen70PhonenumberUtils.fromLookup)!;

Tizen70PrivilegeInfo? _tizen70PrivilegeInfo;
Tizen70PrivilegeInfo get tizen70PrivilegeInfo =>
    _tizen70PrivilegeInfo ??= _getTizenInstance(
        privilegeInfoSymbols, Tizen70PrivilegeInfo.fromLookup)!;

Tizen70Push? _tizen70Push;
Tizen70Push get tizen70Push =>
    _tizen70Push ??= _getTizenInstance(
        pushSymbols, Tizen70Push.fromLookup)!;

Tizen70ResourceMonitor? _tizen70ResourceMonitor;
Tizen70ResourceMonitor get tizen70ResourceMonitor =>
    _tizen70ResourceMonitor ??= _getTizenInstance(
        capiSystemResourceMonitorSymbols, Tizen70ResourceMonitor.fromLookup)!;

Tizen70RpcPort? _tizen70RpcPort;
Tizen70RpcPort get tizen70RpcPort =>
    _tizen70RpcPort ??= _getTizenInstance(
        rpcPortSymbols, Tizen70RpcPort.fromLookup)!;

Tizen70Storage? _tizen70Storage;
Tizen70Storage get tizen70Storage =>
    _tizen70Storage ??= _getTizenInstance(
        storageSymbols, Tizen70Storage.fromLookup)!;

Tizen70Stt? _tizen70Stt;
Tizen70Stt get tizen70Stt =>
    _tizen70Stt ??= _getTizenInstance(
        sttSymbols, Tizen70Stt.fromLookup)!;

Tizen70SttEngine? _tizen70SttEngine;
Tizen70SttEngine get tizen70SttEngine =>
    _tizen70SttEngine ??= _getTizenInstance(
        stt_engineSymbols, Tizen70SttEngine.fromLookup)!;

Tizen70Tbm? _tizen70Tbm;
Tizen70Tbm get tizen70Tbm =>
    _tizen70Tbm ??= _getTizenInstance(
        tbmSymbols, Tizen70Tbm.fromLookup)!;

Tizen70Ttrace? _tizen70Ttrace;
Tizen70Ttrace get tizen70Ttrace =>
    _tizen70Ttrace ??= _getTizenInstance(
        ttraceSymbols, Tizen70Ttrace.fromLookup)!;

Tizen70Tts? _tizen70Tts;
Tizen70Tts get tizen70Tts =>
    _tizen70Tts ??= _getTizenInstance(
        ttsSymbols, Tizen70Tts.fromLookup)!;

Tizen70TtsEngine? _tizen70TtsEngine;
Tizen70TtsEngine get tizen70TtsEngine =>
    _tizen70TtsEngine ??= _getTizenInstance(
        tts_engineSymbols, Tizen70TtsEngine.fromLookup)!;

Tizen70UpdateControl? _tizen70UpdateControl;
Tizen70UpdateControl get tizen70UpdateControl =>
    _tizen70UpdateControl ??= _getTizenInstance(
        updateControlSymbols, Tizen70UpdateControl.fromLookup)!;

Tizen70Vc? _tizen70Vc;
Tizen70Vc get tizen70Vc =>
    _tizen70Vc ??= _getTizenInstance(
        vcSymbols, Tizen70Vc.fromLookup)!;

Tizen70Vc_Engine? _tizen70VcEngine;
Tizen70Vc_Engine get tizen70VcEngine =>
    _tizen70VcEngine ??= _getTizenInstance(
        vc_engineSymbols, Tizen70Vc_Engine.fromLookup)!;

Tizen70Vc_Manager? _tizen70VcManager;
Tizen70Vc_Manager get tizen70VcManager =>
    _tizen70VcManager ??= _getTizenInstance(
        vc_managerSymbols, Tizen70Vc_Manager.fromLookup)!;

Tizen70Webrtc? _tizen70Webrtc;
Tizen70Webrtc get tizen70Webrtc =>
    _tizen70Webrtc ??= _getTizenInstance(
        capiMediaWebrtcSymbols, Tizen70Webrtc.fromLookup)!;

Tizen70WifiDirect? _tizen70WifiDirect;
Tizen70WifiDirect get tizen70WifiDirect =>
    _tizen70WifiDirect ??= _getTizenInstance(
        wifiDirectSymbols, Tizen70WifiDirect.fromLookup)!;

Tizen70Yaca? _tizen70Yaca;
Tizen70Yaca get tizen70Yaca =>
    _tizen70Yaca ??= _getTizenInstance(
        yacaSymbols, Tizen70Yaca.fromLookup)!;
