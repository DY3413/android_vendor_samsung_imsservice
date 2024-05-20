.class public Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;
.super Lcom/sec/internal/ims/core/handler/OptionsHandler;
.source "ResipOptionsHandler.java"


# static fields
.field public static final EVENT_OPTIONS_RECEIVED_NOTIFY:I = 0x66

.field public static final EVENT_OPTIONS_REQ_RESPONSE:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "ResipOptionsHandler"

.field static mFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmcRegistrant:Lcom/sec/internal/helper/Registrant;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mP2pRegistrant:Lcom/sec/internal/helper/Registrant;

.field private mRegistrant:Lcom/sec/internal/helper/Registrant;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    .line 57
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x37

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_IPCALL_VIDEO_ONLY:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_LAST_SEEN_ACTIVE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/OptionsHandler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mCmcRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 97
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mP2pRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 157
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method private getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 3

    .line 274
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    const-string v1, "ResipOptionsHandler"

    const/16 v2, 0x3a99

    if-eq v0, v2, :cond_0

    const-string p0, "handleNotify(): unexpected id"

    .line 280
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "handleNotify(), NOTIFY_OPTIONS_RECEIVED."

    .line 276
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->handleOptionsReceived(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    :goto_0
    return-void
.end method

.method private handleOptionsReceived(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "ResipOptionsHandler"

    const-string v2, "handleOptionsReceived()"

    .line 285
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_0

    const-string v0, "Invalid notify"

    .line 287
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 297
    :cond_0
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;

    .line 298
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->remoteUri()Ljava/lang/String;

    move-result-object v6

    .line 299
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->isResponse()Z

    move-result v13

    .line 300
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->success()Z

    move-result v15

    .line 301
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->reason()I

    move-result v14

    .line 302
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->sessionId()J

    move-result-wide v7

    long-to-int v12, v7

    .line 303
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->txId()Ljava/lang/String;

    move-result-object v10

    .line 304
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->extFeature()Ljava/lang/String;

    move-result-object v11

    .line 306
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->isChatbotParticipant()Z

    move-result v7

    .line 307
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->isCmcCheck()Z

    move-result v9

    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOptionsReceived: isResponse: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "success: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "txId: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "extfeature: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isCmcCheck: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->tagsLength()I

    move-result v2

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleOptionsReceived: tagLength "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v2, :cond_3

    .line 317
    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->tags(I)I

    move-result v16

    .line 318
    sget-object v17, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mFeatureMap:Ljava/util/Map;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 319
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/Integer;

    move/from16 v19, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    or-long v3, v3, v21

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleOptionsReceived: key = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move/from16 v9, v19

    move/from16 v2, v20

    goto :goto_1

    :cond_2
    move/from16 v20, v2

    move/from16 v19, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move/from16 v19, v9

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleOptionsReceived: received tags "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v16, v3

    goto :goto_2

    :cond_4
    move/from16 v19, v9

    const-wide/16 v16, 0x0

    .line 328
    :goto_2
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    .line 329
    invoke-interface {v2, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 330
    invoke-interface {v2, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    goto :goto_3

    :cond_5
    const-string v2, "handleOptionsReceived: uaHandle is invalid "

    .line 332
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 334
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleOptionsReceived(), sessionId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v4, "UriGenerator is null. IMS URIs won\'t be normalized!"

    .line 338
    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    :cond_6
    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v3, :cond_7

    .line 342
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    :cond_7
    move-object v9, v4

    .line 345
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 346
    :goto_4
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->pAssertedIdLength()I

    move-result v8

    if-ge v6, v8, :cond_8

    .line 347
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->pAssertedId(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 352
    :cond_8
    new-instance v6, Ljava/util/HashSet;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    invoke-direct {v6, v0, v8}, Ljava/util/HashSet;-><init>(IF)V

    .line 353
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v4

    .line 354
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-eqz v4, :cond_c

    if-nez v8, :cond_a

    if-eqz v7, :cond_a

    const-string/jumbo v0, "tk"

    .line 356
    invoke-virtual {v4, v0}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_a

    move/from16 v22, v7

    .line 357
    invoke-virtual {v4, v0}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move/from16 v23, v8

    const-string v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    move/from16 v8, v23

    .line 360
    :goto_6
    invoke-virtual {v4, v0}, Lcom/sec/ims/util/ImsUri;->removeParam(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v8, v23

    :goto_7
    if-eqz v3, :cond_b

    .line 363
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 365
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to PAssertedIdSet"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    move/from16 v22, v7

    move/from16 v23, v8

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parsing P-Asserted-Identity "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    :goto_8
    move-object/from16 v4, v18

    move/from16 v7, v22

    const/4 v0, 0x2

    goto/16 :goto_5

    :cond_d
    move/from16 v23, v8

    .line 372
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    move-object v7, v0

    move/from16 v3, v23

    move v8, v15

    move/from16 v4, v19

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-wide/from16 v10, v16

    move/from16 v16, v12

    move v12, v2

    move v2, v14

    move/from16 v14, v16

    move/from16 v22, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v6

    move-object/from16 v17, v19

    invoke-direct/range {v7 .. v17}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;-><init>(ZLcom/sec/ims/util/ImsUri;JIZILjava/lang/String;Ljava/util/Set;Ljava/lang/String;)V

    if-nez v22, :cond_17

    const/4 v6, 0x7

    if-ne v2, v6, :cond_e

    .line 376
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    goto :goto_9

    :cond_e
    const/4 v6, 0x5

    if-ne v2, v6, :cond_f

    .line 378
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    goto :goto_9

    :cond_f
    const/4 v6, 0x6

    if-ne v2, v6, :cond_10

    .line 380
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->AUTOMATA_PRESENT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    goto :goto_9

    :cond_10
    const/4 v6, 0x1

    if-ne v2, v6, :cond_11

    .line 382
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    goto :goto_9

    :cond_11
    const/4 v6, 0x2

    if-ne v2, v6, :cond_12

    .line 384
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    goto :goto_9

    :cond_12
    const/4 v6, 0x4

    if-ne v2, v6, :cond_13

    .line 386
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REACHABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    goto :goto_9

    :cond_13
    const/4 v6, 0x3

    if-ne v2, v6, :cond_14

    .line 388
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    goto :goto_9

    :cond_14
    const/16 v6, 0x8

    if-ne v2, v6, :cond_15

    .line 390
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    goto :goto_9

    :cond_15
    if-nez v2, :cond_16

    .line 392
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    goto :goto_9

    .line 394
    :cond_16
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 396
    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleOptionsReceived: received error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    .line 398
    :goto_a
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->capsLength()I

    move-result v6

    if-eqz v6, :cond_19

    .line 399
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 400
    :goto_b
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->capsLength()I

    move-result v8

    if-ge v7, v8, :cond_18

    .line 401
    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->caps(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 403
    :cond_18
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setfeatureTags(Ljava/util/List;)V

    .line 405
    :cond_19
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->respCode()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setRespCode(I)V

    .line 406
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->failReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setReasonHdr(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setReason(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;)V

    .line 408
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setIsTokenUsed(Z)V

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOptionsReceived: lastSeen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->lastSeen()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->lastSeen()I

    move-result v2

    if-ltz v2, :cond_1a

    .line 411
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->lastSeen()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setLastSeen(I)V

    .line 413
    :cond_1a
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatureList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 414
    :goto_c
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->capsLength()I

    move-result v6

    if-ge v3, v6, :cond_1b

    .line 415
    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo;->caps(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1b
    if-eqz v4, :cond_1c

    const-string v2, "handleOptionsReceived: recevied OPTION response msg for CMC"

    .line 418
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    .line 419
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->notifyCmcEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    goto :goto_d

    :cond_1c
    move-object/from16 v1, p0

    const-string v2, "d2d.push"

    move-object/from16 v3, v19

    .line 421
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 422
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->notifyP2pEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    goto :goto_d

    .line 424
    :cond_1d
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->notifyEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    :goto_d
    return-void
.end method

.method private notifyCmcEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mCmcRegistrant:Lcom/sec/internal/helper/Registrant;

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private notifyEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mRegistrant:Lcom/sec/internal/helper/Registrant;

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private notifyP2pEvent(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mP2pRegistrant:Lcom/sec/internal/helper/Registrant;

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const-string v2, "ResipOptionsHandler"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    const-string p0, "SessionHandler():Cannot understand the event."

    .line 148
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    const-string p0, "SessionHandler():EVENT_OPTIONS_RECEIVED_NOTIFY received."

    .line 144
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "SessionHandler():EVENT_OPTIONS_REQ_RESPONSE received."

    .line 138
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 163
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/BaseHandler;->init()V

    .line 164
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x66

    const/4 v2, 0x0

    .line 165
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerOptionsHandler(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mCmcRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public registerForOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 103
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 113
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mP2pRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCapabilityExchange: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "iari"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipOptionsHandler"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "options"

    .line 187
    invoke-direct {p0, v0, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p4

    if-nez p4, :cond_0

    const-string p0, "requestCapabilityExchange: UserAgent not found."

    .line 189
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCapabilityExchange: handle = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide v5, p2

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestOptionsReqCapabilityExchange(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public requestSendCmcCheckMsg(IILjava/lang/String;)V
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSendCmcCheckMsg: regId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipOptionsHandler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->getUaByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "requestSendCmcCheckMsg: UserAgent not found."

    .line 204
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestSendCmcCheckMsg: handle = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestOptionsReqSendCmcCheckMsg(ILjava/lang/String;)V

    return-void
.end method

.method public sendCapexErrorResponse(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Landroid/os/Message;IILjava/lang/String;)V
    .locals 9

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCapexErrorResponse: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipOptionsHandler"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "options"

    .line 248
    invoke-direct {p0, v0, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p4

    if-nez p4, :cond_0

    const-string p0, "sendCapexErrorResponse: UserAgent not found."

    .line 250
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCapexErrorResponse: handle = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move v6, p5

    move-object v7, p6

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendCapexErrorResponse(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)I

    return-void
.end method

.method public sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;ILandroid/os/Message;ILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCapexResponse: uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ResipOptionsHandler"

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "options"

    move/from16 v4, p7

    .line 217
    invoke-direct {p0, v1, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "sendCapexResponse: UserAgent not found."

    .line 219
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 223
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCapexResponse: handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v6

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    move-wide/from16 v8, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendCapexResponse(ILjava/lang/String;JLjava/lang/String;ILandroid/os/Message;Ljava/lang/String;)I

    return-void
.end method

.method public sendCapexResponse(Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/lang/String;ILandroid/os/Message;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Message;",
            "I)V"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCapexResponse: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipOptionsHandler"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "options"

    .line 233
    invoke-direct {p0, v0, p6}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p6

    if-nez p6, :cond_0

    const-string p0, "sendCapexResponse: UserAgent not found."

    .line 235
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCapexResponse list : handle = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendCapexResponse(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/os/Message;)I

    return-void
.end method

.method public setOwnCapabilities(JI)V
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOwnCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipOptionsHandler"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "options"

    .line 171
    invoke-direct {p0, v0, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p3

    if-nez p3, :cond_0

    const-string/jumbo p0, "setOwnCapabilities: UserAgent not found."

    .line 173
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOwnCapabilities: handle = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestUpdateFeatureTag(IJ)V

    return-void
.end method

.method public updateCmcExtCallCount(II)I
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCmcExtCallCount: phoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callCnt= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipOptionsHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipOptionsHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateCmcExtCallCount(II)V

    const/4 p0, 0x0

    return p0
.end method
