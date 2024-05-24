.class public Lcom/sec/internal/ims/config/ConfigContract;
.super Ljava/lang/Object;
.source "ConfigContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/ConfigContract$BUILD;
    }
.end annotation


# static fields
.field public static final PATH_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STORAGE_DEFAULT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    const-string/jumbo v1, "root/vers/version"

    const-string v2, "0"

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "backup/vers/version"

    .line 38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "root/vers/validity"

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "info/completed"

    const-string v3, "false"

    .line 40
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "info/tc_popup_user_accept"

    const-string v3, ""

    .line 41
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "info/next_autoconfig_time"

    .line 42
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "info/start_msisdn_timer"

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "info/rcs_version"

    .line 44
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "info/rcs_profile"

    .line 45
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "info/client_vendor"

    .line 46
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "info/client_version"

    .line 47
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "root/token/token"

    .line 48
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "root/services/rcsdisabledstate"

    .line 49
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "root/policy/sms_port"

    .line 50
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "root/serviceproviderext/spgurl"

    .line 51
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "root/serviceproviderext/params-url"

    .line 52
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/ConfigContract;->PATH_TABLE:Ljava/util/Map;

    const-string/jumbo v1, "version"

    const-string/jumbo v2, "root/vers/"

    .line 59
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "validity"

    .line 60
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "root/token/"

    const-string/jumbo v2, "token"

    .line 61
    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "skip_count"

    const-string v2, "info/msisdn/"

    .line 64
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "msgui_display"

    .line 65
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "home_network_domain_name"

    const-string/jumbo v2, "root/application/0/"

    .line 68
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "private_user_identity"

    .line 70
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "keep_alive_enabled"

    .line 72
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "maxsizeimageshare"

    const-string/jumbo v2, "root/application/0/ext/"

    .line 76
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "maxtimevideoshare"

    .line 78
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v3, "q-value"

    .line 80
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v3, "inturlfmt"

    .line 82
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v3, "naturlfmt"

    .line 84
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v3, "rcsVolteSingleRegistration"

    .line 86
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v3, "endUserConfReqId"

    .line 88
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v3, "uuid_Value"

    .line 90
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "UserName"

    const-string/jumbo v3, "root/application/0/appauth/"

    .line 94
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "UserPwd"

    .line 96
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "realm"

    .line 98
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "SupportedRCSVersions"

    const-string/jumbo v3, "root/application/1/services/"

    .line 102
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "SupportedRCSProfileVersions"

    .line 104
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "rcsState"

    .line 106
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "rcsDisabledState"

    .line 108
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "presencePrfl"

    .line 110
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ChatAuth"

    .line 112
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "GroupChatAuth"

    .line 114
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftAuth"

    .line 116
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "standaloneMsgAuth"

    .line 118
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "geolocPullAuth"

    .line 120
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "geolocPushAuth"

    .line 122
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "vsAuth"

    .line 124
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "isAuth"

    .line 126
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "rcsIPVoiceCallAuth"

    .line 128
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "rcsIPVideoCallAuth"

    .line 130
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "IR94VideoAuth"

    .line 132
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "allowRCSExtensions"

    .line 134
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "composerAuth"

    .line 136
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "sharedMapAuth"

    .line 138
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "sharedSketchAuth"

    .line 140
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "postCallAuth"

    .line 142
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "VBCAuth"

    .line 144
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "rcsMessagingDataOff"

    const-string/jumbo v3, "root/application/1/services/ext/dataoff/"

    .line 148
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "fileTransferDataOff"

    .line 150
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "smsoIPDataOff"

    .line 152
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "mmsDataOff"

    .line 154
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "contentShareDataOff"

    .line 156
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "preAndPostCallDataOff"

    .line 158
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "volteDataOff"

    .line 160
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "IPVideoCallDataOff"

    .line 162
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "provisioningDataOff"

    .line 164
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "syncDataOff"

    .line 166
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "disableInitialAddressBookScan"

    const-string/jumbo v3, "root/application/1/capdiscovery/"

    .line 170
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "pollingperiod"

    .line 172
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "pollingrate"

    .line 174
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "pollingrateperiod"

    .line 176
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "capinfoexpiry"

    .line 178
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "nonRCScapInfoExpiry"

    .line 180
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "defaultdisc"

    .line 182
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "capDiscCommonStack"

    .line 184
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "maxentriesinlist"

    .line 186
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "root/application/1/capdiscovery/ext/joyn/"

    const-string v3, "msgcapvalidity"

    .line 188
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "root/application/1/capdiscovery/ext/joyn/"

    const-string v3, "lastseenactive"

    .line 190
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "PublishTimer"

    const-string/jumbo v3, "root/application/1/presence/"

    .line 194
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "source-throttlepublish"

    .line 196
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "max-number-ofsubscriptions-inpresence-list"

    .line 198
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "RLS-URI"

    .line 200
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "root/application/1/presence/location/"

    const-string v3, "locinfomaxvalidtime"

    .line 202
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "root/application/1/presence/location/"

    const-string v3, "client-obj-datalimit"

    .line 204
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "imMsgTech"

    const-string/jumbo v3, "root/application/1/im/"

    .line 208
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "imcapalwayson"

    .line 210
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "imWarnSF"

    .line 212
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "GroupChatFullStandFwd"

    .line 214
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "GroupChatOnlyFStandFwd"

    .line 216
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "smsfallbackauth"

    .line 218
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "imCapNonRCS"

    .line 220
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "imwarniw"

    .line 222
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "autaccept"

    .line 224
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "imsessionstart"

    .line 226
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "autacceptgroupchat"

    .line 228
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "firstMessageInvite"

    .line 230
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "TimerIdle"

    .line 232
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "maxConcurrentSession"

    .line 234
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "multiMediaChat"

    .line 236
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "MaxSize"

    .line 238
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "maxsize1to1"

    .line 240
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "maxsize1tom"

    .line 242
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftWarnSize"

    .line 244
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "MaxSizeFileTr"

    .line 246
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "MaxSizeFileTrIncoming"

    .line 248
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftThumb"

    .line 250
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftStAndFwEnabled"

    .line 252
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftCapalwaysON"

    .line 254
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftautaccept"

    .line 256
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftHTTPCSURI"

    .line 258
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftHTTPDLURI"

    .line 260
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftHTTPCSUser"

    .line 262
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftHTTPCSPwd"

    .line 264
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftDefaultMech"

    .line 266
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftHTTPFallback"

    .line 268
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "pres-srv-cap"

    .line 270
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "deferred-msg-func-uri"

    .line 272
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "max_adhoc_group_size"

    .line 274
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "conf-fcty-uri"

    .line 276
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "exploder-uri"

    .line 278
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "mass-fcty-uri"

    .line 280
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ChatRevokeTimer"

    .line 282
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftHTTPftWarnSize"

    .line 284
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftHTTPMaxSizeFileTr"

    .line 286
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftHTTPMaxSizeFileTrIncoming"

    .line 288
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "max_adhoc_open_group_size"

    .line 290
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "cbftHTTPCSURI"

    const-string/jumbo v3, "root/application/1/im/ext/"

    .line 292
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "MaxSizeExtraFileTr"

    .line 294
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "ftHTTPExtraCSURI"

    .line 296
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "MaxIMDNAggregation"

    .line 298
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "root/application/1/cpm/standalonemsg/"

    const-string v3, "MaxSizeStandalone"

    .line 302
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "root/application/1/messaging/standalonemsg/"

    const-string v3, "MaxSize"

    .line 304
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "root/application/1/messaging/standalonemsg/"

    const-string v3, "SwitchoverSize"

    .line 306
    invoke-static {v2, v3}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "Url"

    const-string/jumbo v3, "root/application/1/cpm/messagestore/"

    .line 310
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "Url"

    .line 312
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "root/application/1/cpm/"

    const-string v4, "messagestore/UserName"

    .line 314
    invoke-static {v2, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "root/application/1/cpm/"

    const-string v4, "messagestore/UserPwd"

    .line 316
    invoke-static {v2, v4}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "EventRpting"

    .line 318
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "AuthArchive"

    .line 320
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "SyncTimer"

    .line 322
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "DataConnectionSyncTimer"

    .line 324
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "SMSStore"

    .line 326
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "MMSStore"

    .line 328
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v2, "warnsizeimageshare"

    const-string/jumbo v3, "root/application/1/other/"

    .line 332
    invoke-static {v3, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 334
    invoke-static {v3, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "extensionsMaxMSRPSize"

    .line 336
    invoke-static {v3, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "callComposerTimerIdle"

    .line 338
    invoke-static {v3, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "root/application/1/xdms/"

    const-string/jumbo v2, "xcaprooturi"

    .line 343
    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "psmedia"

    const-string/jumbo v2, "root/application/1/other/transportproto/"

    .line 347
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "wifimedia"

    .line 349
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "pssignalling"

    .line 351
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "wifisignalling"

    .line 353
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "psrtmedia"

    .line 355
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "pssignallingroaming"

    .line 357
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "psmediaroaming"

    .line 359
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "psrtmediaroaming"

    .line 361
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "wifirtmedia"

    .line 363
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "messagingUX"

    const-string/jumbo v2, "root/application/1/ux/"

    .line 367
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "userAliasAuth"

    .line 369
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "spamNotificationText"

    .line 371
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "tokenLinkNotificationText"

    .line 373
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "unavailableEndpointText"

    .line 375
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "videoAndEnCallUX"

    .line 377
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "IR51SwitchUx"

    .line 379
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "msgFBDefault"

    .line 381
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "ftFBDefault"

    .line 383
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "callLogsBearerDiffer"

    .line 385
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "allowEnrichedChatbotSearchDefault"

    .line 387
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "ext/realtimeUserAliasAuth"

    .line 389
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "reconnectGuardTimer"

    const-string/jumbo v2, "root/application/1/clientcontrol/"

    .line 393
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "cfsTrigger"

    .line 395
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "max1toManyRecipients"

    .line 397
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "1toManySelectedTech"

    .line 399
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "displayNotificationSwitch"

    .line 401
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "ftMax1ToManyRecipients"

    .line 403
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "serviceAvailabilityInfoExpiry"

    .line 405
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "ftHTTPCapAlwaysOn"

    .line 407
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "ChatbotDirectory"

    const-string/jumbo v2, "root/application/1/messaging/chatbot/"

    .line 411
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "BotinfoFQDNRoot"

    .line 413
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "ChatbotBlacklist"

    .line 415
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "MsgHistorySelectable"

    .line 417
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "SpecificChatbotsList"

    .line 419
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "IdentityInEnrichedSearch"

    .line 421
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "PrivacyDisable"

    .line 423
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "ChatbotMsgTech"

    .line 425
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "MsgStoreUrl"

    const-string/jumbo v2, "root/application/1/messaging/messagestore/"

    .line 429
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "MsgStoreNotifUrl"

    .line 431
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "MsgStoreAuth"

    .line 433
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "MsgStoreUserName"

    .line 435
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "MsgStoreUserPwd"

    .line 437
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "root/application/1/messaging/plugins/"

    const-string v2, "catalogURI"

    .line 441
    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "fthttpGroupChat"

    const-string/jumbo v2, "root/application/1/serviceproviderext/"

    .line 445
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "chatbot/Username"

    .line 447
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v1, "chatbot/Password"

    .line 449
    invoke-static {v2, v1}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "root/services/"

    const-string/jumbo v2, "rcsState"

    .line 453
    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "root/services/"

    const-string/jumbo v2, "rcsDisabledState"

    .line 454
    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "root/serviceproviderext/"

    const-string/jumbo v2, "spgUrl"

    .line 455
    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string/jumbo v1, "root/serviceproviderext/"

    const-string v2, "params-url"

    .line 456
    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/ConfigContract;->getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPathTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 460
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 462
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
