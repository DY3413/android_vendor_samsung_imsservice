.class public Lcom/sec/internal/ims/core/RegistrationEvents;
.super Ljava/lang/Object;
.source "RegistrationEvents.java"


# static fields
.field protected static final DATAUSAGE_REACH_TO_LIMIT:I = 0x2c8

.field protected static final EVENT_ADS_CHANGED:I = 0x2be

.field public static final EVENT_BLOCK_REGISTRATION_HYS_TIMER:I = 0x326

.field public static final EVENT_BLOCK_REGISTRATION_ROAMING_TIMER:I = 0x90

.field public static final EVENT_BOOT_COMPLETED:I = 0x96

.field protected static final EVENT_CELL_INFO_CHANGED:I = 0x18

.field public static final EVENT_CHATBOT_AGREEMENT_CHANGED:I = 0x38

.field public static final EVENT_CHECK_UNPROCESSED_OMADM_CONFIG:I = 0x197

.field public static final EVENT_CHECK_UNPROCESSED_VOLTE_STATE:I = 0x9d

.field public static final EVENT_CONFIG_UPDATED:I = 0x23

.field public static final EVENT_CONTACT_ACTIVATED:I = 0x329

.field public static final EVENT_DEFAULT_NETWORK_CHANGED:I = 0x2c2

.field public static final EVENT_DELAYED_DEREGISTER:I = 0x80

.field public static final EVENT_DELAYED_DEREGISTERINTERNAL:I = 0x91

.field public static final EVENT_DELAYED_STOP_PDN:I = 0x85

.field public static final EVENT_DEREGISTERED:I = 0x65

.field public static final EVENT_DEREGISTER_BY_PENDED_DEFAULT_NET_CHANGED:I = 0x12

.field public static final EVENT_DEREGISTER_FOR_DCN:I = 0x327

.field public static final EVENT_DEREGISTER_TIMEOUT:I = 0x6b

.field public static final EVENT_DEREGISTRATION_REQUESTED:I = 0x78

.field public static final EVENT_DISCONNECT_PDN_BY_TIMEOUT:I = 0x194

.field public static final EVENT_DISCONNECT_PDN_BY_VOLTE_DISABLED:I = 0x196

.field public static final EVENT_DM_CONFIG_COMPLETE:I = 0x1d

.field public static final EVENT_DM_CONFIG_TIMEOUT:I = 0x2b

.field public static final EVENT_DNS_RESPONSE:I = 0x39

.field public static final EVENT_DO_PENDING_UPDATE_REGISTRATION:I = 0x20

.field public static final EVENT_DO_RECOVERY_ACTION:I = 0x86

.field public static final EVENT_DSAC_MODE_CHANGED:I = 0x92

.field public static final EVENT_DYNAMIC_IMS_UPDATED:I = 0x198

.field public static final EVENT_E911_REGI_TIMEOUT:I = 0x9b

.field protected static final EVENT_EC_VBC_SETTING_CHANGED:I = 0x9c

.field public static final EVENT_EMERGENCY_READY:I = 0x77

.field protected static final EVENT_EPDG_CONNECTED:I = 0x1a

.field public static final EVENT_EPDG_DEREGISTER_REQUESTED:I = 0x7c

.field public static final EVENT_EPDG_DISCONNECTED:I = 0x1b

.field public static final EVENT_EPDG_EVENT_TIMEOUT:I = 0x87

.field public static final EVENT_EPDG_HANDOVER_ENABLE_CHANGED:I = 0x9a

.field protected static final EVENT_EPDG_IKEERROR:I = 0x34

.field protected static final EVENT_EPDG_IPSECDISCONNECTED:I = 0x36

.field public static final EVENT_EPDG_VOICE_PREFERENCE_CHANGED:I = 0x7b

.field public static final EVENT_FINISH_OMADM_PROVISIONING_UPDATE:I = 0x27

.field public static final EVENT_FINISH_THREAD_FOR_GETTING_HOST_ADDRESS:I = 0x3c

.field public static final EVENT_FLIGHT_MODE_CHANGED:I = 0xc

.field public static final EVENT_FORCED_UPDATE_REGISTRATION_REQUESTED:I = 0x8c

.field public static final EVENT_FORCE_SMS_PUSH:I = 0x8f

.field public static final EVENT_GEO_LOCATION_UPDATED:I = 0x28

.field public static final EVENT_HANDOFF_EVENT_TIMEOUT:I = 0x88

.field public static final EVENT_IMS_PROFILE_UPDATED:I = 0xf

.field public static final EVENT_IMS_SWITCH_UPDATED:I = 0x11

.field public static final EVENT_LOCAL_IP_CHANGED:I = 0x5

.field public static final EVENT_LOCATION_CACHE_EXPIRY:I = 0x323

.field public static final EVENT_LOCATION_TIMEOUT:I = 0x320

.field public static final EVENT_LTE_DATA_NETWORK_MODE_CHAGED:I = 0x32

.field public static final EVENT_MANUAL_DEREGISTER:I = 0xa

.field public static final EVENT_MANUAL_REGISTER:I = 0x9

.field public static final EVENT_MNOMAP_UPDATED:I = 0x94

.field public static final EVENT_MOBILE_DATA_CHANGED:I = 0x22

.field public static final EVENT_MOBILE_DATA_PRESSED_CHANGED:I = 0x99

.field public static final EVENT_MOBILE_RADIO_CONNECTED:I = 0x3d

.field public static final EVENT_MOBILE_RADIO_DISCONNECTED:I = 0x3e

.field public static final EVENT_NETWORK_EVENT_CHANGED:I = 0x2bd

.field public static final EVENT_NETWORK_MODE_CHANGE_TIMEOUT:I = 0x31

.field public static final EVENT_NETWORK_SUSPENDED:I = 0x97

.field public static final EVENT_NETWORK_TYPE:I = 0x3

.field public static final EVENT_OWN_CAPABILITIES_CHANGED:I = 0x1f

.field public static final EVENT_PCO_INFO:I = 0x2bf

.field public static final EVENT_PDN_CONNECTED:I = 0x16

.field public static final EVENT_PDN_DISCONNECTED:I = 0x17

.field protected static final EVENT_PDN_FAILED:I = 0x81

.field public static final EVENT_POSTPONE_UPDATE_REGISTRATION_BY_DMA_CHANGE:I = 0x8b

.field public static final EVENT_RCS_ALLOWED_CHANGED:I = 0x35

.field public static final EVENT_RCS_DELAYED_DEREGISTER:I = 0x8e

.field public static final EVENT_RCS_USER_SETTING_CHANGED:I = 0x93

.field public static final EVENT_REFRESH_REGISTRATION:I = 0x8d

.field public static final EVENT_REGEVENT_CONTACT_URI_NOTIFIED:I = 0x32a

.field public static final EVENT_REGISTERED:I = 0x64

.field public static final EVENT_REGISTER_ERROR:I = 0x68

.field public static final EVENT_REMOVE_CHAT_FEATURES_BY_SIP_FORBIDDEN:I = 0x89

.field public static final EVENT_REQUEST_DM_CONFIG:I = 0x1c

.field public static final EVENT_REQUEST_FULL_NETWORK_REGISTRATION:I = 0x3f

.field public static final EVENT_REQUEST_LOCATION:I = 0x321

.field public static final EVENT_REQUEST_NOTIFY_VOLTE_SETTINGS_OFF:I = 0x83

.field public static final EVENT_REQUEST_X509_CERT_VERIFY:I = 0x1e

.field public static final EVENT_ROAMING_DATA_CHANGED:I = 0x2c

.field public static final EVENT_ROAMING_SETTINGS_CHANGED:I = 0x2e

.field public static final EVENT_RTTMODE_UPDATED:I = 0x2c1

.field public static final EVENT_SETUP_WIZARD_COMPLETED:I = 0x32b

.field public static final EVENT_SET_THIRDPARTY_FEATURE_TAGS:I = 0x7e

.field public static final EVENT_SHUTDOWN:I = 0x82

.field public static final EVENT_SIM_READY:I = 0x14

.field public static final EVENT_SIM_REFRESH:I = 0x24

.field public static final EVENT_SIM_REFRESH_TIMEOUT:I = 0x2a

.field protected static final EVENT_SIM_SUBSCRIBE_ID_CHANGED:I = 0x2c3

.field public static final EVENT_SSAC_REREGISTER:I = 0x79

.field public static final EVENT_START_GEO_LOCATION_UPDATE:I = 0x33

.field public static final EVENT_START_OMADM_PROVISIONING_UPDATE:I = 0x26

.field public static final EVENT_SUBSCRIBE_ERROR:I = 0x6c

.field public static final EVENT_TELEPHONY_CALL_STATUS_CHANGED:I = 0x21

.field public static final EVENT_TIMS_ESTABLISHMENT_TIMEOUT:I = 0x84

.field public static final EVENT_TIMS_ESTABLISHMENT_TIMEOUT_RCS:I = 0x98

.field public static final EVENT_TRY_EMERGENCY_REGISTER:I = 0x76

.field public static final EVENT_TRY_REGISTER:I = 0x2

.field public static final EVENT_TRY_REGISTER_TIMER:I = 0x4

.field public static final EVENT_TTYMODE_UPDATED:I = 0x25

.field protected static final EVENT_UICC_CHANGED:I = 0x15

.field public static final EVENT_UPDATE_CHAT_SERVICE_BY_DMA_CHANGE:I = 0x8a

.field public static final EVENT_UPDATE_REGISTRATION:I = 0x19

.field public static final EVENT_UPDATE_REGI_CONFIG:I = 0x199

.field public static final EVENT_UPDATE_SIP_DELEGATE_REGISTRATION:I = 0x3a

.field public static final EVENT_UPDATE_SIP_DELEGATE_REGI_TIMEOUT:I = 0x3b

.field public static final EVENT_USER_SWITCHED:I = 0x3e8

.field public static final EVENT_VIDEO_SETTING_CHANGED:I = 0x7f

.field public static final EVENT_VOLTE_SETTING_CHANGED:I = 0x7d

.field public static final EVENT_VOWIFI_SETTING_CHANGED:I = 0x7a

.field public static final EVENT_WFC_SWITCH_PROFILE:I = 0x2c0

.field private static final msgToStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CjRCzpvpab_NKvRbhyBU8pXQMkA(Ljava/lang/reflect/Field;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$static$3(Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PeZYMCLxIDi-zmzXebEyVfDvbmQ(Lcom/sec/internal/ims/core/RegisterTask;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$handleEvent$4(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XUGTHCr5fyFhgVfWljmYG5bYw-8(Ljava/lang/reflect/Field;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$static$1(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bH55Z82mTFm8GlsQRJ7AzdvNU34(Ljava/lang/reflect/Field;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$static$2(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q7EC64Frza7sHnI3mTD2371TvTk(Ljava/lang/reflect/Field;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationEvents;->lambda$static$0(Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToStringMap:Ljava/util/Map;

    .line 151
    const-class v0, Lcom/sec/internal/ims/core/RegistrationEvents;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda0;-><init>()V

    .line 152
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda2;-><init>()V

    .line 153
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;)Z
    .registers 10

    .line 173
    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4f5

    const/4 v1, 0x3

    const-string v3, "phoneId"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_4da

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4ce

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4c6

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4bc

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4a4

    const/16 v1, 0x11

    if-eq v0, v1, :cond_498

    const/16 v1, 0x12

    if-eq v0, v1, :cond_481

    const/16 v1, 0x64

    if-eq v0, v1, :cond_478

    const/16 v1, 0x65

    if-eq v0, v1, :cond_471

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_468

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_461

    const-string v1, "mode"

    sparse-switch v0, :sswitch_data_502

    packed-switch v0, :pswitch_data_620

    packed-switch v0, :pswitch_data_62a

    packed-switch v0, :pswitch_data_63a

    packed-switch v0, :pswitch_data_64e

    return v4

    .line 342
    :pswitch_44
    iget p1, p0, Landroid/os/Message;->arg1:I

    .line 343
    iget p2, p0, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p3, p1, p2, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnFailed(III)V

    goto/16 :goto_500

    .line 486
    :pswitch_55
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 396
    :pswitch_5e
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onVideoCallServiceSettingChanged(ZI)V

    goto/16 :goto_500

    .line 478
    :pswitch_6d
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onThirdParyFeatureTagsUpdated(I)V

    goto/16 :goto_500

    .line 388
    :pswitch_74
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onVolteServiceSettingChanged(ZI)V

    goto/16 :goto_500

    .line 296
    :pswitch_83
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgDeregisterRequested(I)V

    goto/16 :goto_500

    .line 300
    :pswitch_8a
    iget p1, p0, Landroid/os/Message;->arg1:I

    .line 301
    iget p4, p0, Landroid/os/Message;->arg2:I

    if-ne p4, v2, :cond_91

    move v4, v2

    .line 302
    :cond_91
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->isCdmaAvailableForVoice(I)Z

    move-result p4

    if-eq p4, v4, :cond_500

    .line 303
    invoke-virtual {p2, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->setCdmaAvailableForVoice(IZ)V

    .line 304
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onVoicePreferredChanged(I)V

    goto/16 :goto_500

    .line 384
    :pswitch_a1
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p0, p1}, Lcom/sec/internal/ims/core/UserEventController;->onVowifiServiceSettingChanged(ILcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V

    goto/16 :goto_500

    .line 466
    :pswitch_a8
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p0, p0, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_b5

    move v4, v2

    :cond_b5
    invoke-virtual {p1, p2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onSSACRegiRequested(IZ)V

    goto/16 :goto_500

    .line 223
    :pswitch_ba
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    iget p3, p0, Landroid/os/Message;->arg1:I

    if-ne p3, v2, :cond_c4

    move p3, v2

    goto :goto_c5

    :cond_c4
    move p3, v4

    :goto_c5
    iget p0, p0, Landroid/os/Message;->arg2:I

    if-ne p0, v2, :cond_ca

    move v4, v2

    :cond_ca
    invoke-virtual {p1, p2, p3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDeregistrationRequest(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V

    goto/16 :goto_500

    .line 235
    :pswitch_cf
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onEmergencyReady(I)V

    goto/16 :goto_500

    .line 231
    :pswitch_d6
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryEmergencyRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 630
    :pswitch_df
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->triggerFullNetworkRegistration(II)V

    goto/16 :goto_500

    .line 647
    :pswitch_ee
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 648
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->handleInactiveCiaOnMobileDisconnected(I)V

    goto/16 :goto_500

    .line 642
    :pswitch_f5
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 643
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->handleInactiveCiaOnMobileConnected(I)V

    goto/16 :goto_500

    .line 601
    :pswitch_fc
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Thread;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->finishThreadForGettingHostAddress(Ljava/lang/Thread;I)V

    goto/16 :goto_500

    .line 638
    :pswitch_107
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->onUpdateSipDelegateRegistrationTimeOut(I)V

    goto/16 :goto_500

    .line 634
    :pswitch_114
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onUpdateSipDelegateRegistration(I)V

    goto/16 :goto_500

    .line 596
    :pswitch_121
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget p3, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p2, p1, p3, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDnsResponse(Ljava/util/List;II)V

    goto/16 :goto_500

    .line 380
    :pswitch_12e
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p0}, Lcom/sec/internal/ims/core/UserEventController;->onChatbotAgreementChanged(I)V

    goto/16 :goto_500

    .line 313
    :pswitch_135
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onIpsecDisconnected(I)V

    goto/16 :goto_500

    .line 567
    :pswitch_13c
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRCSAllowedChangedbyMDM()V

    goto/16 :goto_500

    .line 309
    :pswitch_141
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgIkeError(I)V

    goto/16 :goto_500

    .line 559
    :pswitch_148
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;

    iget p0, p0, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_151

    move v4, v2

    :cond_151
    invoke-virtual {p2, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V

    goto/16 :goto_500

    .line 376
    :pswitch_156
    iget p1, p0, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_15b

    move v4, v2

    :cond_15b
    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v4, p0}, Lcom/sec/internal/ims/core/UserEventController;->onLteDataNetworkModeSettingChanged(ZI)V

    goto/16 :goto_500

    .line 555
    :pswitch_162
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister()V

    goto/16 :goto_500

    .line 368
    :pswitch_167
    iget p1, p0, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_16c

    move v4, v2

    :cond_16c
    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v4, p0}, Lcom/sec/internal/ims/core/UserEventController;->onRoamingDataChanged(ZI)V

    goto/16 :goto_500

    .line 462
    :pswitch_173
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x2a

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    goto/16 :goto_500

    .line 410
    :sswitch_182
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/UserEventController;->onUserSwitched()V

    goto/16 :goto_500

    .line 202
    :sswitch_187
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRegEventContactUriNotified(Ljava/lang/Object;)V

    goto/16 :goto_500

    .line 197
    :sswitch_18e
    iget p1, p0, Landroid/os/Message;->arg2:I

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationEvents$$ExternalSyntheticLambda4;-><init>()V

    .line 198
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_500

    :sswitch_1a4
    const/16 p1, 0x327

    .line 606
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    goto/16 :goto_500

    .line 551
    :sswitch_1ad
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onLocationCacheExpired(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 542
    :sswitch_1b6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRequestLocation()V

    goto/16 :goto_500

    .line 538
    :sswitch_1bb
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onLocationTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 494
    :sswitch_1c4
    iget p1, p0, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1c9

    move v4, v2

    :cond_1c9
    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, v4, p0}, Lcom/sec/internal/ims/core/UserEventController;->onDataUsageLimitReached(ZI)V

    goto/16 :goto_500

    .line 546
    :sswitch_1d0
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 547
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V

    goto/16 :goto_500

    .line 272
    :sswitch_1dd
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onDefaultNetworkStateChanged(I)V

    goto/16 :goto_500

    .line 405
    :sswitch_1ea
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    .line 406
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onRTTmodeUpdated(IZ)V

    goto/16 :goto_500

    .line 534
    :sswitch_1fb
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, [B

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onWfcSwitchProfile([BI)V

    goto/16 :goto_500

    .line 530
    :sswitch_206
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget p3, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, p2, p3, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onPcoInfo(III)V

    goto/16 :goto_500

    .line 482
    :sswitch_217
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onActiveDataSubscriptionChanged()V

    goto/16 :goto_500

    .line 268
    :sswitch_21c
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p1, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    goto/16 :goto_500

    .line 620
    :sswitch_227
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegiConfig(I)V

    goto/16 :goto_500

    .line 439
    :sswitch_234
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleDynamicImsUpdated(I)V

    goto/16 :goto_500

    .line 337
    :sswitch_23b
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 338
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onCheckUnprocessedOmadmConfig(I)V

    goto/16 :goto_500

    .line 474
    :sswitch_246
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDisconnectPdnByVolteDisabled(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 470
    :sswitch_24f
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDisconnectPdnByTimeout(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 660
    :sswitch_258
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 661
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->checkUnProcessedVoLTEState(I)V

    goto/16 :goto_500

    .line 656
    :sswitch_25f
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p0}, Lcom/sec/internal/ims/core/UserEventController;->onEcVbcSettingChanged(I)V

    goto/16 :goto_500

    .line 652
    :sswitch_266
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->handleE911RegiTimeOut(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_500

    .line 624
    :sswitch_26f
    iget p1, p0, Landroid/os/Message;->arg1:I

    .line 625
    iget p0, p0, Landroid/os/Message;->arg2:I

    if-ne p0, v2, :cond_276

    move v4, v2

    .line 626
    :cond_276
    invoke-virtual {p2, p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateEpdgHandoverEnableChanged(IZ)V

    goto/16 :goto_500

    .line 364
    :sswitch_27b
    iget p1, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, p1, p0, p3}, Lcom/sec/internal/ims/core/UserEventController;->onMobileDataPressedChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V

    goto/16 :goto_500

    .line 610
    :sswitch_284
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    iget p3, p0, Landroid/os/Message;->arg1:I

    if-ne p3, v2, :cond_28d

    move v4, v2

    :cond_28d
    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p2, p1, v4, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspended(Lcom/sec/internal/ims/core/RegisterTask;ZI)V

    goto/16 :goto_500

    .line 583
    :sswitch_294
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onBootCompleted()V

    goto/16 :goto_500

    .line 435
    :sswitch_299
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleMnoMapUpdated(I)V

    goto/16 :goto_500

    .line 392
    :sswitch_2a0
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onRcsUserSettingChanged(II)V

    goto/16 :goto_500

    .line 579
    :sswitch_2af
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDsacModeChanged()V

    goto/16 :goto_500

    .line 575
    :sswitch_2b4
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    iget p0, p0, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_2bd

    move v4, v2

    :cond_2bd
    invoke-virtual {p1, p2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDelayedDeregisterInternal(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    goto/16 :goto_500

    .line 571
    :sswitch_2c2
    iget p2, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onBlockRegistrationRoamingTimer(II)V

    goto/16 :goto_500

    .line 563
    :sswitch_2cb
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRcsDelayedDeregister()V

    goto/16 :goto_500

    .line 206
    :sswitch_2d0
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 207
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-eqz p1, :cond_500

    .line 209
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onRefreshRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    goto/16 :goto_500

    .line 526
    :sswitch_2dd
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onForcedUpdateRegistrationRequested(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 522
    :sswitch_2e6
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onUpdateChatServiceByDmaChange(IZ)V

    goto/16 :goto_500

    .line 514
    :sswitch_2f3
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onUpdateChatServiceByDmaChange(IZ)V

    goto/16 :goto_500

    .line 518
    :sswitch_300
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDisableChatFeatureBySipForbidden(I)V

    goto/16 :goto_500

    .line 347
    :sswitch_30d
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->handOffEventTimeout(I)V

    goto/16 :goto_500

    .line 288
    :sswitch_314
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz p1, :cond_500

    const-string p3, "ePDG timeout"

    .line 290
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->EPDG_TIMEOUT:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto/16 :goto_500

    .line 227
    :sswitch_32a
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->doRecoveryAction(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 508
    :sswitch_333
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 509
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleDelayedStopPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 504
    :sswitch_33c
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onTimsTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 498
    :sswitch_345
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRequestNotifyVolteSettingsOff(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 189
    :sswitch_34e
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRegisterError(Ljava/lang/Object;)V

    goto/16 :goto_500

    .line 372
    :sswitch_355
    iget p1, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onRoamingSettingsChanged(II)V

    goto/16 :goto_500

    .line 490
    :sswitch_35e
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onGeoLocationUpdated()V

    goto/16 :goto_500

    .line 452
    :sswitch_363
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 453
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->finishOmadmProvisioningUpdate()V

    goto/16 :goto_500

    .line 447
    :sswitch_370
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 448
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startOmadmProvisioningUpdate()V

    goto/16 :goto_500

    .line 400
    :sswitch_37d
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    .line 401
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p4, p1, p0}, Lcom/sec/internal/ims/core/UserEventController;->onTTYmodeUpdated(IZ)V

    goto/16 :goto_500

    .line 457
    :sswitch_38e
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 458
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onSimRefresh(I)V

    goto/16 :goto_500

    .line 443
    :sswitch_39f
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onConfigUpdated(Ljava/lang/String;I)V

    goto/16 :goto_500

    .line 360
    :sswitch_3aa
    iget p1, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p4, p1, p0, p3}, Lcom/sec/internal/ims/core/UserEventController;->onMobileDataChanged(IILcom/sec/internal/ims/core/NetworkEventController;)V

    goto/16 :goto_500

    .line 418
    :sswitch_3b3
    iget p2, p0, Landroid/os/Message;->arg1:I

    iget p0, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onTelephonyCallStatusChanged(II)V

    goto/16 :goto_500

    .line 427
    :sswitch_3bc
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onPendingUpdateRegistration()V

    goto/16 :goto_500

    .line 422
    :sswitch_3c1
    iget p1, p0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onOwnCapabilitiesChanged(ILcom/sec/ims/options/Capabilities;)V

    goto/16 :goto_500

    .line 591
    :sswitch_3cc
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->verifyX509Certificate([Ljava/security/cert/X509Certificate;)V

    goto/16 :goto_500

    .line 332
    :pswitch_3d5
    :sswitch_3d5
    iget p0, p0, Landroid/os/Message;->arg1:I

    const/16 p1, 0x1d

    if-ne v0, p1, :cond_3dc

    move v4, v2

    .line 333
    :cond_3dc
    invoke-virtual {p3, p0, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->onDmConfigCompleted(IZ)V

    goto/16 :goto_500

    .line 325
    :sswitch_3e1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 326
    iget p1, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    sget-object p4, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p2, p1, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 327
    iget p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->triggerOmadmConfig(I)V

    goto/16 :goto_500

    .line 284
    :sswitch_3f3
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgDisconnected(I)V

    goto/16 :goto_500

    .line 280
    :sswitch_3fa
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onEpdgConnected(I)V

    goto/16 :goto_500

    .line 239
    :sswitch_401
    iget-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/sec/ims/settings/ImsProfile;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)V

    goto/16 :goto_500

    .line 317
    :sswitch_40c
    iget p0, p0, Landroid/os/Message;->arg1:I

    .line 318
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    .line 319
    invoke-virtual {p2, p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateTimeInPlani(IZ)V

    .line 320
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    .line 321
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onPendingUpdateRegistration()V

    goto/16 :goto_500

    .line 259
    :sswitch_41c
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnDisconnected(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_500

    .line 255
    :sswitch_425
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 351
    :sswitch_42e
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 352
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleUiccChanged(I)V

    goto/16 :goto_500

    .line 175
    :sswitch_43f
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 176
    iget-object p2, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 177
    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->handleSimReady(ILcom/sec/internal/helper/AsyncResult;)V

    goto/16 :goto_500

    .line 356
    :sswitch_450
    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onImsProfileUpdated(I)V

    goto/16 :goto_500

    .line 431
    :sswitch_457
    iget p0, p0, Landroid/os/Message;->arg1:I

    if-ne p0, v2, :cond_45c

    move v4, v2

    :cond_45c
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onFlightModeChanged(Z)V

    goto/16 :goto_500

    .line 193
    :cond_461
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onSubscribeError(Ljava/lang/Object;)V

    goto/16 :goto_500

    .line 587
    :cond_468
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_500

    .line 185
    :cond_471
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDeregistered(Ljava/lang/Object;)V

    goto/16 :goto_500

    .line 181
    :cond_478
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onRegistered(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto/16 :goto_500

    .line 614
    :cond_481
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 615
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p3, p0, p1, v4}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 616
    iget-object p1, p2, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    goto :goto_500

    .line 414
    :cond_498
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onImsSwitchUpdated(I)V

    goto :goto_500

    .line 247
    :cond_4a4
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "id"

    .line 248
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p3, "explicitDeregi"

    .line 249
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 250
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 251
    invoke-virtual {p2, p1, p3, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onManualDeregister(IZI)V

    goto :goto_500

    .line 243
    :cond_4bc
    iget-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onManualRegister(Lcom/sec/ims/settings/ImsProfile;I)V

    goto :goto_500

    .line 276
    :cond_4c6
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onLocalIpChanged(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_500

    .line 214
    :cond_4ce
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_500

    .line 263
    :cond_4da
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "networkType"

    .line 264
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "isWifiConnected"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v2, :cond_4ed

    move v4, v2

    :cond_4ed
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3, p1, v4, p0}, Lcom/sec/internal/ims/core/NetworkEventController;->onNetworkChanged(IZI)V

    goto :goto_500

    .line 219
    :cond_4f5
    :sswitch_4f5
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    :cond_500
    :goto_500
    return v2

    nop

    :sswitch_data_502
    .sparse-switch
        0xc -> :sswitch_457
        0xf -> :sswitch_450
        0x14 -> :sswitch_43f
        0x15 -> :sswitch_42e
        0x16 -> :sswitch_425
        0x17 -> :sswitch_41c
        0x18 -> :sswitch_40c
        0x19 -> :sswitch_401
        0x1a -> :sswitch_3fa
        0x1b -> :sswitch_3f3
        0x1c -> :sswitch_3e1
        0x1d -> :sswitch_3d5
        0x1e -> :sswitch_3cc
        0x1f -> :sswitch_3c1
        0x20 -> :sswitch_3bc
        0x21 -> :sswitch_3b3
        0x22 -> :sswitch_3aa
        0x23 -> :sswitch_39f
        0x24 -> :sswitch_38e
        0x25 -> :sswitch_37d
        0x26 -> :sswitch_370
        0x27 -> :sswitch_363
        0x28 -> :sswitch_35e
        0x2e -> :sswitch_355
        0x68 -> :sswitch_34e
        0x83 -> :sswitch_345
        0x84 -> :sswitch_33c
        0x85 -> :sswitch_333
        0x86 -> :sswitch_32a
        0x87 -> :sswitch_314
        0x88 -> :sswitch_30d
        0x89 -> :sswitch_300
        0x8a -> :sswitch_2f3
        0x8b -> :sswitch_2e6
        0x8c -> :sswitch_2dd
        0x8d -> :sswitch_2d0
        0x8e -> :sswitch_2cb
        0x90 -> :sswitch_2c2
        0x91 -> :sswitch_2b4
        0x92 -> :sswitch_2af
        0x93 -> :sswitch_2a0
        0x94 -> :sswitch_299
        0x96 -> :sswitch_294
        0x97 -> :sswitch_284
        0x98 -> :sswitch_33c
        0x99 -> :sswitch_27b
        0x9a -> :sswitch_26f
        0x9b -> :sswitch_266
        0x9c -> :sswitch_25f
        0x9d -> :sswitch_258
        0x194 -> :sswitch_24f
        0x196 -> :sswitch_246
        0x197 -> :sswitch_23b
        0x198 -> :sswitch_234
        0x199 -> :sswitch_227
        0x2bd -> :sswitch_21c
        0x2be -> :sswitch_217
        0x2bf -> :sswitch_206
        0x2c0 -> :sswitch_1fb
        0x2c1 -> :sswitch_1ea
        0x2c2 -> :sswitch_1dd
        0x2c3 -> :sswitch_1d0
        0x2c8 -> :sswitch_1c4
        0x320 -> :sswitch_1bb
        0x321 -> :sswitch_1b6
        0x323 -> :sswitch_1ad
        0x327 -> :sswitch_1a4
        0x329 -> :sswitch_18e
        0x32a -> :sswitch_187
        0x32b -> :sswitch_4f5
        0x3e8 -> :sswitch_182
    .end sparse-switch

    :pswitch_data_620
    .packed-switch 0x2a
        :pswitch_173
        :pswitch_3d5
        :pswitch_167
    .end packed-switch

    :pswitch_data_62a
    .packed-switch 0x31
        :pswitch_162
        :pswitch_156
        :pswitch_148
        :pswitch_141
        :pswitch_13c
        :pswitch_135
    .end packed-switch

    :pswitch_data_63a
    .packed-switch 0x38
        :pswitch_12e
        :pswitch_121
        :pswitch_114
        :pswitch_107
        :pswitch_fc
        :pswitch_f5
        :pswitch_ee
        :pswitch_df
    .end packed-switch

    :pswitch_data_64e
    .packed-switch 0x76
        :pswitch_d6
        :pswitch_cf
        :pswitch_ba
        :pswitch_a8
        :pswitch_a1
        :pswitch_8a
        :pswitch_83
        :pswitch_74
        :pswitch_6d
        :pswitch_5e
        :pswitch_55
        :pswitch_44
    .end packed-switch
.end method

.method private static synthetic lambda$handleEvent$4(Lcom/sec/internal/ims/core/RegisterTask;)V
    .registers 1

    .line 198
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onContactActivated()V

    return-void
.end method

.method private static synthetic lambda$static$0(Ljava/lang/reflect/Field;)Z
    .registers 1

    .line 152
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/reflect/Field;)Z
    .registers 1

    .line 152
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$2(Ljava/lang/reflect/Field;)Z
    .registers 2

    .line 153
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$3(Ljava/lang/reflect/Field;)V
    .registers 3

    .line 155
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToStringMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_17
    return-void
.end method

.method public static msgToString(I)Ljava/lang/String;
    .registers 5

    .line 163
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToStringMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
