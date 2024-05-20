.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReqMsg;
.super Ljava/lang/Object;
.source "ReqMsg.java"


# static fields
.field public static final NONE:B = 0x0t

.field public static final names:[Ljava/lang/String;

.field public static final request_accept_call:B = 0x10t

.field public static final request_accept_ft_session:B = 0x30t

.field public static final request_accept_im_session:B = 0x28t

.field public static final request_accept_slm:B = 0x39t

.field public static final request_accept_transfer_call:B = 0x14t

.field public static final request_alarm_wake_up:B = 0x6ct

.field public static final request_cancel_ft_session:B = 0x2ft

.field public static final request_cancel_transfer_call:B = 0x1dt

.field public static final request_capability_exchange:B = 0x3ct

.field public static final request_chatbot_anonymize:B = 0x34t

.field public static final request_clear_all_call_internal:B = 0x72t

.field public static final request_close_im_session:B = 0x29t

.field public static final request_delete_tcp_client_socket:B = 0x8t

.field public static final request_dns_query:B = 0x45t

.field public static final request_end_call:B = 0xet

.field public static final request_euc_send_response:B = 0x24t

.field public static final request_group_info_subscribe:B = 0x38t

.field public static final request_group_list_subscribe:B = 0x37t

.field public static final request_handle_cmc_csfb:B = 0x5bt

.field public static final request_handle_dtmf:B = 0x5ft

.field public static final request_hold_call:B = 0x11t

.field public static final request_hold_video:B = 0x19t

.field public static final request_im_set_more_info_to_sip_ua:B = 0x3bt

.field public static final request_ish_accept_session:B = 0x5dt

.field public static final request_ish_start_session:B = 0x5ct

.field public static final request_ish_stop_session:B = 0x5et

.field public static final request_make_call:B = 0xdt

.field public static final request_make_conf_call:B = 0x1et

.field public static final request_modify_call_type:B = 0x16t

.field public static final request_modify_video_quality:B = 0x25t

.field public static final request_msg_set_msg_app_info_to_sip_ua:B = 0x26t

.field public static final request_network_suspended:B = 0x7t

.field public static final request_ntp_time_offset:B = 0x6ft

.field public static final request_open_sip_dialog:B = 0x68t

.field public static final request_options_cap_exchange:B = 0x4et

.field public static final request_options_send_cmc_check_msg:B = 0x4ft

.field public static final request_options_send_error_response:B = 0x4dt

.field public static final request_options_send_response:B = 0x4ct

.field public static final request_presence_publish:B = 0x3et

.field public static final request_presence_subscribe:B = 0x40t

.field public static final request_presence_unpublish:B = 0x3ft

.field public static final request_presence_unsubscribe:B = 0x41t

.field public static final request_progress_incoming_call:B = 0x18t

.field public static final request_publish_dialog:B = 0x20t

.field public static final request_pulling_call:B = 0x1ct

.field public static final request_receive_sms_resp:B = 0x23t

.field public static final request_registration:B = 0x4t

.field public static final request_reject_call:B = 0x15t

.field public static final request_reject_im_session:B = 0x33t

.field public static final request_reject_modify_call_type:B = 0x1bt

.field public static final request_reject_slm:B = 0x3at

.field public static final request_reply_modify_call_type:B = 0x17t

.field public static final request_report_chatbot_as_spam:B = 0x35t

.field public static final request_resume_call:B = 0x12t

.field public static final request_resume_video:B = 0x1at

.field public static final request_rtp_stats_to_stack:B = 0x66t

.field public static final request_send_cmc_info:B = 0x48t

.field public static final request_send_dm_state:B = 0x77t

.field public static final request_send_im_composing_status:B = 0x2ct

.field public static final request_send_im_message:B = 0x2bt

.field public static final request_send_im_notification_status:B = 0x2dt

.field public static final request_send_im_slm_message:B = 0x31t

.field public static final request_send_info:B = 0x47t

.field public static final request_send_media_event:B = 0x4at

.field public static final request_send_message_revoke_request:B = 0x65t

.field public static final request_send_msg:B = 0x21t

.field public static final request_send_relay_event:B = 0x4bt

.field public static final request_send_rp_ack_resp:B = 0x22t

.field public static final request_send_sip:B = 0x67t

.field public static final request_send_slm_file:B = 0x32t

.field public static final request_send_text:B = 0x60t

.field public static final request_set_own_capabilities:B = 0x3dt

.field public static final request_set_preferred_impu:B = 0x6t

.field public static final request_set_text_mode:B = 0x9t

.field public static final request_set_video_crt_audio:B = 0x76t

.field public static final request_silent_log_enabled:B = 0x6et

.field public static final request_start_camera:B = 0x42t

.field public static final request_start_cmc_record:B = 0x73t

.field public static final request_start_ft_session:B = 0x2et

.field public static final request_start_im_session:B = 0x27t

.field public static final request_start_local_ring_back_tone:B = 0x69t

.field public static final request_start_media:B = 0x2at

.field public static final request_start_record:B = 0x70t

.field public static final request_start_video_earlymedia:B = 0x5at

.field public static final request_stop_camera:B = 0x43t

.field public static final request_stop_local_ring_back_tone:B = 0x6at

.field public static final request_stop_record:B = 0x71t

.field public static final request_support_vowifi_deprioritize_nr5g:B = 0x75t

.field public static final request_support_vowifi_disable_5gsa:B = 0x74t

.field public static final request_transfer_call:B = 0x13t

.field public static final request_ua_creation:B = 0x2t

.field public static final request_ua_deletion:B = 0x3t

.field public static final request_update_aka_resp:B = 0x5t

.field public static final request_update_audio_interface:B = 0x46t

.field public static final request_update_call:B = 0xft

.field public static final request_update_cmc_ext_call_count:B = 0x49t

.field public static final request_update_common_config:B = 0x1t

.field public static final request_update_conf_call:B = 0x1ft

.field public static final request_update_feature_tag:B = 0xct

.field public static final request_update_geolocation:B = 0x59t

.field public static final request_update_pani:B = 0x44t

.field public static final request_update_participants:B = 0x36t

.field public static final request_update_rat:B = 0x50t

.field public static final request_update_sim_info:B = 0x6bt

.field public static final request_update_srvcc_version:B = 0xat

.field public static final request_update_time_in_plani:B = 0x51t

.field public static final request_update_vce_config:B = 0x64t

.field public static final request_update_xq_enable:B = 0xbt

.field public static final request_vsh_accept_session:B = 0x62t

.field public static final request_vsh_start_session:B = 0x61t

.field public static final request_vsh_stop_session:B = 0x63t

.field public static final request_x509_cert_verify_result:B = 0x6dt

.field public static final request_xdm_fetch_document:B = 0x55t

.field public static final request_xdm_modify_contact:B = 0x58t

.field public static final request_xdm_update_aka_resp:B = 0x53t

.field public static final request_xdm_update_gba_data:B = 0x52t

.field public static final request_xdm_update_gba_key:B = 0x54t

.field public static final request_xdm_upload_contacts:B = 0x57t

.field public static final request_xdm_upload_pres_rules:B = 0x56t


# direct methods
.method static constructor <clinit>()V
    .locals 120

    const-string v0, "NONE"

    const-string v1, "request_update_common_config"

    const-string v2, "request_ua_creation"

    const-string v3, "request_ua_deletion"

    const-string v4, "request_registration"

    const-string v5, "request_update_aka_resp"

    const-string v6, "request_set_preferred_impu"

    const-string v7, "request_network_suspended"

    const-string v8, "request_delete_tcp_client_socket"

    const-string v9, "request_set_text_mode"

    const-string v10, "request_update_srvcc_version"

    const-string v11, "request_update_xq_enable"

    const-string v12, "request_update_feature_tag"

    const-string v13, "request_make_call"

    const-string v14, "request_end_call"

    const-string v15, "request_update_call"

    const-string v16, "request_accept_call"

    const-string v17, "request_hold_call"

    const-string v18, "request_resume_call"

    const-string v19, "request_transfer_call"

    const-string v20, "request_accept_transfer_call"

    const-string v21, "request_reject_call"

    const-string v22, "request_modify_call_type"

    const-string v23, "request_reply_modify_call_type"

    const-string v24, "request_progress_incoming_call"

    const-string v25, "request_hold_video"

    const-string v26, "request_resume_video"

    const-string v27, "request_reject_modify_call_type"

    const-string v28, "request_pulling_call"

    const-string v29, "request_cancel_transfer_call"

    const-string v30, "request_make_conf_call"

    const-string v31, "request_update_conf_call"

    const-string v32, "request_publish_dialog"

    const-string v33, "request_send_msg"

    const-string v34, "request_send_rp_ack_resp"

    const-string v35, "request_receive_sms_resp"

    const-string v36, "request_euc_send_response"

    const-string v37, "request_modify_video_quality"

    const-string v38, "request_msg_set_msg_app_info_to_sip_ua"

    const-string v39, "request_start_im_session"

    const-string v40, "request_accept_im_session"

    const-string v41, "request_close_im_session"

    const-string v42, "request_start_media"

    const-string v43, "request_send_im_message"

    const-string v44, "request_send_im_composing_status"

    const-string v45, "request_send_im_notification_status"

    const-string v46, "request_start_ft_session"

    const-string v47, "request_cancel_ft_session"

    const-string v48, "request_accept_ft_session"

    const-string v49, "request_send_im_slm_message"

    const-string v50, "request_send_slm_file"

    const-string v51, "request_reject_im_session"

    const-string v52, "request_chatbot_anonymize"

    const-string v53, "request_report_chatbot_as_spam"

    const-string v54, "request_update_participants"

    const-string v55, "request_group_list_subscribe"

    const-string v56, "request_group_info_subscribe"

    const-string v57, "request_accept_slm"

    const-string v58, "request_reject_slm"

    const-string v59, "request_im_set_more_info_to_sip_ua"

    const-string v60, "request_capability_exchange"

    const-string v61, "request_set_own_capabilities"

    const-string v62, "request_presence_publish"

    const-string v63, "request_presence_unpublish"

    const-string v64, "request_presence_subscribe"

    const-string v65, "request_presence_unsubscribe"

    const-string v66, "request_start_camera"

    const-string v67, "request_stop_camera"

    const-string v68, "request_update_pani"

    const-string v69, "request_dns_query"

    const-string v70, "request_update_audio_interface"

    const-string v71, "request_send_info"

    const-string v72, "request_send_cmc_info"

    const-string v73, "request_update_cmc_ext_call_count"

    const-string v74, "request_send_media_event"

    const-string v75, "request_send_relay_event"

    const-string v76, "request_options_send_response"

    const-string v77, "request_options_send_error_response"

    const-string v78, "request_options_cap_exchange"

    const-string v79, "request_options_send_cmc_check_msg"

    const-string v80, "request_update_rat"

    const-string v81, "request_update_time_in_plani"

    const-string v82, "request_xdm_update_gba_data"

    const-string v83, "request_xdm_update_aka_resp"

    const-string v84, "request_xdm_update_gba_key"

    const-string v85, "request_xdm_fetch_document"

    const-string v86, "request_xdm_upload_pres_rules"

    const-string v87, "request_xdm_upload_contacts"

    const-string v88, "request_xdm_modify_contact"

    const-string v89, "request_update_geolocation"

    const-string v90, "request_start_video_earlymedia"

    const-string v91, "request_handle_cmc_csfb"

    const-string v92, "request_ish_start_session"

    const-string v93, "request_ish_accept_session"

    const-string v94, "request_ish_stop_session"

    const-string v95, "request_handle_dtmf"

    const-string v96, "request_send_text"

    const-string v97, "request_vsh_start_session"

    const-string v98, "request_vsh_accept_session"

    const-string v99, "request_vsh_stop_session"

    const-string v100, "request_update_vce_config"

    const-string v101, "request_send_message_revoke_request"

    const-string v102, "request_rtp_stats_to_stack"

    const-string v103, "request_send_sip"

    const-string v104, "request_open_sip_dialog"

    const-string v105, "request_start_local_ring_back_tone"

    const-string v106, "request_stop_local_ring_back_tone"

    const-string v107, "request_update_sim_info"

    const-string v108, "request_alarm_wake_up"

    const-string v109, "request_x509_cert_verify_result"

    const-string v110, "request_silent_log_enabled"

    const-string v111, "request_ntp_time_offset"

    const-string v112, "request_start_record"

    const-string v113, "request_stop_record"

    const-string v114, "request_clear_all_call_internal"

    const-string v115, "request_start_cmc_record"

    const-string v116, "request_support_vowifi_disable_5gsa"

    const-string v117, "request_support_vowifi_deprioritize_nr5g"

    const-string v118, "request_set_video_crt_audio"

    const-string v119, "request_send_dm_state"

    .line 128
    filled-new-array/range {v0 .. v119}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReqMsg;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    .line 130
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReqMsg;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
