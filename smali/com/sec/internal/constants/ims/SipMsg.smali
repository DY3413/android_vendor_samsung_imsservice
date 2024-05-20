.class public Lcom/sec/internal/constants/ims/SipMsg;
.super Ljava/lang/Object;
.source "SipMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/SipMsg$StatusLine;,
        Lcom/sec/internal/constants/ims/SipMsg$RequestLine;,
        Lcom/sec/internal/constants/ims/SipMsg$StartLine;,
        Lcom/sec/internal/constants/ims/SipMsg$Header;,
        Lcom/sec/internal/constants/ims/SipMsg$HeaderName;
    }
.end annotation


# static fields
.field static final ALLOWED_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final AUTHENTICATE_NONCE:Ljava/lang/String; = "nonce"

.field static final CONTACT_EXPIRES:Ljava/lang/String; = "expires"

.field static final CONTACT_SIP_INSTANCE:Ljava/lang/String; = "+sip.instance"

.field static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

.field static final DEFAULT_SIP:Ljava/lang/String; = "SIP/2.0"

.field public static final EVENT_PRESENCE:Ljava/lang/String; = "presence"

.field public static final EVENT_REG:Ljava/lang/String; = "reg"

.field public static final FEATURE_TAG_CALL_COMPOSER_VIA_TELEPHONY:Ljava/lang/String;

.field public static final FEATURE_TAG_CHATBOT_COMMUNICATION_SESSION:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

.field public static final FEATURE_TAG_CHATBOT_COMMUNICATION_STAND_ALONE:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

.field public static final FEATURE_TAG_CHATBOT_VER_1:Ljava/lang/String; = "+g.gsma.rcs.botversion=\"#=1\""

.field public static final FEATURE_TAG_CHATBOT_VER_1_2:Ljava/lang/String; = "+g.gsma.rcs.botversion=\"#=1,#=2\""

.field public static final FEATURE_TAG_CHATBOT_VER_2:Ljava/lang/String; = "+g.gsma.rcs.botversion=\"#=2\""

.field public static final FEATURE_TAG_CHATBOT_VER_PREFIX:Ljava/lang/String; = "+g.gsma.rcs.botversion="

.field public static final FEATURE_TAG_CHAT_CPM:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.session\""

.field public static final FEATURE_TAG_CHAT_IM:Ljava/lang/String;

.field public static final FEATURE_TAG_ENRICHED_CALL_COMPOSER:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

.field public static final FEATURE_TAG_ENRICHED_POST_CALL:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

.field public static final FEATURE_TAG_ENRICHED_SHARED_MAP:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

.field public static final FEATURE_TAG_ENRICHED_SHARED_SKETCH:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

.field public static final FEATURE_TAG_FT_CPM:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.filetransfer\""

.field public static final FEATURE_TAG_FT_HTTP:Ljava/lang/String;

.field public static final FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

.field public static final FEATURE_TAG_FT_VIA_SMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftsms\""

.field public static final FEATURE_TAG_GEO_PUSH:Ljava/lang/String;

.field public static final FEATURE_TAG_GEO_PUSH_VIA_SMS:Ljava/lang/String; = "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geosms\""

.field public static final FEATURE_TAG_MMTEL:Ljava/lang/String;

.field public static final FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String; = "video"

.field public static final FEATURE_TAG_PRESENCE:Ljava/lang/String;

.field public static final FEATURE_TAG_SLM_DEFERRED:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.deferred\""

.field public static final FEATURE_TAG_SLM_LARGE:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.largemsg\""

.field public static final FEATURE_TAG_SLM_PAGER:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.oma.cpm.msg\""

.field public static final FEATURE_TAG_SLM_PAGER_LARGE:Ljava/lang/String; = "+g.gsma.rcs.cpm.pager-large"

.field public static final FEATURE_TAG_SMSIP:Ljava/lang/String; = "+g.3gpp.smsip"

.field static final IARI_REF_TAG:Ljava/lang/String; = "+g.3gpp.iari-ref"

.field static final ICSI_REF_TAG:Ljava/lang/String; = "+g.3gpp.icsi-ref"

.field private static final LOG_TAG:Ljava/lang/String; = "SipMsg"

.field static final REGEXP_COMMA_NOT_IN_DQUOTE:Ljava/lang/String; = "\\s*,\\s*(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)"

.field static final REGEXP_SEMI_NOT_IN_DQUOTE:Ljava/lang/String; = "\\s*;\\s*(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)"

.field static final SERVICES_FROM_TAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SERVICE_TO_TAG_LIST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static final SUPPORTED_GRUU:Ljava/lang/String; = "gruu"

.field static final SUPPORTED_SEC_AGREE:Ljava/lang/String; = "sec-agree"

.field static final VIA_BRANCH:Ljava/lang/String; = "branch"

.field static final VIA_TRANSPORT:Ljava/lang/String; = "transport"


# instance fields
.field mHeaderValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mIsOutGoing:Z

.field mStartLine:Lcom/sec/internal/constants/ims/SipMsg$StartLine;

.field mTelephonySipMsg:Landroid/telephony/ims/SipMessage;


# direct methods
.method public static synthetic $r8$lambda$4Gw3mrcAMN51f4An6os4bgkClBw(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$isSupported$17(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9vsdpV1GhhL2XsWfA4DAZFcimbM(Landroid/util/Pair;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getViaHostPort$15(Landroid/util/Pair;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ahbl1kHdmE7XYSK6zsMkt0eMXRQ(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getViaHostPort$14(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BulChMvkAb2bWv9J_c_61wJasAw(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getAuthenticate$23(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EEHndop1RvRSgh3CIRfSsLvPhn0(Ljava/util/Map$Entry;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$new$3(Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GVjmjkFcQoyoQIpmNrbT33EfIjg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$isOneOfEvent$18(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GnfbRmsVc1vqQTqTx6xW908PmL0(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getContactUser$12(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HHa5i0CkL2Zy_8a_GqYtypCL-sU(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getExpire$19(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HZq1ruTnQKpqqsyV-JnFs5Ag7lg(Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getFeatureTags$8(Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JsT7dx9Kjl7Rxj8saDHQEh1ZnqE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$isSupported$16(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KYQmYCzgC2Sv4r2F3Geuh2rmY8U(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/util/List;)Lcom/sec/internal/constants/ims/SipMsg$Header;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getHeader$5(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/util/List;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Kdi_V-qSaj0QH4eQU85BCTmiByE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getParam$6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MEX8LCcBxLtA2PC5Cw0XLwDPmGM(Lcom/sec/internal/constants/ims/SipMsg;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getExpire$21()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NDAVQ-2xYRHIQZMw6w3I_yflfuo(Ljava/util/Set;Landroid/util/ArraySet;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getFeatureTags$10(Ljava/util/Set;Landroid/util/ArraySet;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QqQn_omtOCcTEXmj9yo4HIbqHew(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$static$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Uq1W26MPMQuo9zIUTcuNJIBt3TE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$static$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WU9rsh_7OmcVJ1dE66qTaZfRE04(Lcom/sec/internal/constants/ims/SipMsg$StatusLine;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getAuthenticate$22(Lcom/sec/internal/constants/ims/SipMsg$StatusLine;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aPtzwE30sdOwmjXSUM61K7EiWbI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getAuthenticateNonce$25(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bQCgnQq7VXhA-UDQsnSI7gctj8k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getFeatureTags$9(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gyoI1of54cFK83L-O-i8X9-QdTk(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$new$2(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kVIePLSiVGu0Do1JJt8yDVd7HHw(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getFeatureTags$11(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lGNwe2rbb52L1VzwI2AS8TilN4c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getParam$7(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mRgTMvoYOZnP1b_JorCKNr8onT4(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getExpire$20(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$s0Gr3INdyrxxiUX3MkOLhJ39Z_w(Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getTagsForServices$4(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wuR9cxWpkAF4jW7jLqjC8ulQTq8(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getAuthenticateNonce$24(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yo243kkN3mLwc1vRLD6WPkebqrw(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipMsg;->lambda$getContactUser$13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 43
    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PRESENCE_DISCOVERY:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg;->FEATURE_TAG_PRESENCE:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg;->FEATURE_TAG_CHAT_IM:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg;->FEATURE_TAG_FT_THUMBNAIL:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg;->FEATURE_TAG_GEO_PUSH:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_CALL_COMPOSER:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg;->FEATURE_TAG_CALL_COMPOSER_VIA_TELEPHONY:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg;->ALLOWED_TAGS:Ljava/util/Set;

    .line 124
    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$2;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$2;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg;->SERVICES_FROM_TAGS:Ljava/util/Map;

    .line 150
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sec/internal/constants/ims/SipMsg;->SERVICE_TO_TAG_LIST:Ljava/util/Map;

    .line 153
    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda35;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda35;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v0, ""

    .line 179
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[B)V
    .locals 11

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-boolean p2, p0, Lcom/sec/internal/constants/ims/SipMsg;->mIsOutGoing:Z

    const-string p2, "\r\n"

    .line 350
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 353
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, " "

    .line 354
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_2

    .line 355
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 359
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 362
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v6, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda22;

    invoke-direct {v6, v5}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda22;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_1
    move-object v4, v5

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 365
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 369
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->parseStartLine(Ljava/lang/String;)Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/constants/ims/SipMsg;->mStartLine:Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    .line 371
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda23;-><init>()V

    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda24;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda24;-><init>()V

    invoke-static {v2, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/SipMsg;->mHeaderValue:Ljava/util/Map;

    const-string v1, "\r\n\r\n"

    .line 379
    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 380
    aget-object p1, p1, v7

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 383
    :try_start_0
    new-instance v1, Landroid/telephony/ims/SipMessage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1, p3}, Landroid/telephony/ims/SipMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    iput-object v1, p0, Lcom/sec/internal/constants/ims/SipMsg;->mTelephonySipMsg:Landroid/telephony/ims/SipMessage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse SipMessage! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SipMsg"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private getFeatureTags([Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 557
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda2;-><init>()V

    .line 558
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda3;-><init>()V

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;)V

    new-instance p2, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda5;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p1, v0, p2, v1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private getParam(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 518
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$Header;->getValues()[Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 520
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getParam: Wrong header ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SipMsg"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 523
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->getParameters(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda25;

    invoke-direct {p1, p2}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 524
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda26;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda26;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getParameters(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)[Ljava/lang/String;
    .locals 2

    .line 502
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg$Header;->getValues()[Ljava/lang/String;

    move-result-object p0

    .line 503
    invoke-static {p0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 504
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getParam: Wrong header ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SipMsg"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    .line 507
    :cond_0
    aget-object p0, p0, v1

    const-string p1, "\\s*;\\s*(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServicefromTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 428
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->SERVICES_FROM_TAGS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTagsForServices(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 435
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 436
    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda30;-><init>(Ljava/util/Set;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private getTopPriorityContact([Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 p0, 0x0

    .line 575
    aget-object v0, p1, p0

    .line 576
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    .line 581
    :cond_0
    array-length v1, p1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move v4, p0

    move-wide v5, v2

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v7, p1, v4

    const-string v8, "\\s*;\\s*(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)"

    .line 582
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 583
    array-length v9, v8

    move v10, p0

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 584
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "q="

    .line 586
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    :try_start_0
    const-string v8, ""

    .line 589
    invoke-virtual {v11, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 591
    :catch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong q parameter ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SipMsg"

    invoke-static {v9, v8}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v8, v2

    :goto_2
    cmpl-double v10, v8, v5

    if-lez v10, :cond_2

    move-object v0, v7

    move-wide v5, v8

    goto :goto_3

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static synthetic lambda$getAuthenticate$22(Lcom/sec/internal/constants/ims/SipMsg$StatusLine;)Ljava/lang/Integer;
    .locals 0

    .line 824
    iget p0, p0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->code:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAuthenticate$23(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 833
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "getAuthenticate: No %s header!"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SipMsg"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAuthenticateNonce$24(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "nonce"

    .line 840
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAuthenticateNonce$25(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "nonce="

    const-string v1, ""

    .line 841
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getContactUser$12(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^.*sip:.+@.+$"

    .line 625
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getContactUser$13(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "^.*sip:"

    const-string v1, ""

    .line 626
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "@.+$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getExpire$19(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "expires"

    .line 734
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getExpire$20(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "expires="

    const-string v1, ""

    .line 735
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getExpire$21()Ljava/lang/String;
    .locals 1

    .line 738
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->EXPIRES:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static synthetic lambda$getFeatureTags$10(Ljava/util/Set;Landroid/util/ArraySet;Ljava/lang/String;)V
    .locals 3

    .line 559
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "+g.3gpp.iari-ref="

    .line 561
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "+g.3gpp.icsi-ref="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "="

    .line 562
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 563
    aget-object v0, p2, v0

    const/4 v1, 0x1

    .line 564
    aget-object p2, p2, v1

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "\\s*,\\s*(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 565
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda27;

    invoke-direct {v1, v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda27;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 566
    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda28;-><init>(Ljava/util/Set;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 565
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic lambda$getFeatureTags$11(Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .locals 0

    .line 569
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-object p0
.end method

.method private static synthetic lambda$getFeatureTags$8(Ljava/lang/String;)Ljava/util/stream/Stream;
    .locals 1

    const-string v0, "\\s*;\\s*(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)"

    .line 557
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getFeatureTags$9(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getHeader$5(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/util/List;)Lcom/sec/internal/constants/ims/SipMsg$Header;
    .locals 2

    .line 490
    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$Header;

    const-string v1, ","

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/constants/ims/SipMsg$Header;-><init>(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$getParam$6(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 523
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getParam$7(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "="

    .line 524
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static synthetic lambda$getTagsForServices$4(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1

    .line 436
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->SERVICE_TO_TAG_LIST:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda8;-><init>(Ljava/util/Set;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$getViaHostPort$14(Ljava/lang/String;)Z
    .locals 1

    .line 664
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SIP/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getViaHostPort$15(Landroid/util/Pair;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4

    const-string v0, " "

    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "["

    .line 667
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 668
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "]"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, ":"

    .line 671
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 673
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object p0
.end method

.method private static synthetic lambda$isOneOfEvent$18(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 713
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isSupported$16(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 693
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isSupported$17(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 693
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda20;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$2(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 0

    .line 362
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$new$3(Ljava/util/Map$Entry;)Ljava/util/List;
    .locals 1

    .line 372
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda21;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 154
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 154
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->SERVICE_TO_TAG_LIST:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda29;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 155
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parseStartLine(Ljava/lang/String;)Lcom/sec/internal/constants/ims/SipMsg$StartLine;
    .locals 2

    .line 409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, " "

    const/4 v1, 0x3

    .line 413
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 414
    array-length p1, p0

    if-eq p1, v1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 418
    aget-object p1, p0, p1

    const-string v1, "SIP/2.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 419
    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    invoke-direct {p1, p0}, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;-><init>([Ljava/lang/String;)V

    return-object p1

    :cond_2
    const/4 p1, 0x2

    .line 420
    aget-object p1, p0, p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 421
    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    invoke-direct {p1, p0}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;-><init>([Ljava/lang/String;)V

    return-object p1

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getAcceptContacts()[Ljava/lang/String;
    .locals 1

    .line 848
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->ACCEPT_CONTACT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAuthenticate()Ljava/lang/String;
    .locals 4

    .line 823
    iget-object v0, p0, Lcom/sec/internal/constants/ims/SipMsg;->mStartLine:Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda18;-><init>()V

    .line 824
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, ""

    const/16 v2, 0x191

    if-eq v0, v2, :cond_0

    const/16 v3, 0x197

    if-eq v0, v3, :cond_0

    return-object v1

    :cond_0
    if-ne v0, v2, :cond_1

    .line 829
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->WWW_AUTHENTICATE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->get()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 830
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->PROXY_AUTHENTICATE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->get()Ljava/lang/String;

    move-result-object v0

    .line 832
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg;->mHeaderValue:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 835
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAuthenticateNonce()Ljava/lang/String;
    .locals 1

    .line 839
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg;->getAuthenticate()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s*,\\s*(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda2;-><init>()V

    .line 840
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda13;-><init>()V

    .line 841
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCSeqMethod()Ljava/lang/String;
    .locals 1

    .line 453
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CSEQ:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    .line 454
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 455
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getCallIds()[Ljava/lang/String;
    .locals 1

    .line 700
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CALL_ID:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getContactImei()Ljava/lang/String;
    .locals 2

    .line 631
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CONTACT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v1, "+sip.instance"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/constants/ims/SipMsg;->getParam(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\"<urn:gsma:imei:"

    const-string v1, ""

    .line 632
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContactUser()Ljava/lang/String;
    .locals 3

    .line 618
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CONTACT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$Header;->getValues()[Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string p0, "SipMsg"

    const-string v0, "getContactUser: Wrong Contact header"

    .line 620
    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 624
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getTopPriorityContact([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s*;\\s*(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda15;-><init>()V

    .line 625
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda16;-><init>()V

    .line 626
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 627
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 708
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->EVENT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getExpire()I
    .locals 4

    .line 726
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CONTACT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$Header;->getValues()[Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "SipMsg"

    if-eqz v1, :cond_0

    const-string p0, "getExpire: Wrong Contact header"

    .line 728
    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 733
    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getTopPriorityContact([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*;\\s*(?=(?:[^\"]*\"[^\"]*\")*[^\"]*$)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda31;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda32;-><init>()V

    .line 734
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda33;-><init>()V

    .line 735
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 736
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda34;

    invoke-direct {v1, p0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda34;-><init>(Lcom/sec/internal/constants/ims/SipMsg;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 733
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExpire: Wrong expires value! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getFeatureTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 531
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->ALLOWED_TAGS:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureTags(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 535
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CONTACT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$Header;->getValues()[Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "SipMsg"

    const-string p1, "getFeatureTags: Wrong Contact header"

    .line 537
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 540
    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getTopPriorityContact([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-direct {p0, v1, p1}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTags([Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureTagsFromAcceptContact()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 544
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->ALLOWED_TAGS:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTagsFromAcceptContact(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getFeatureTagsFromAcceptContact(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg;->getAcceptContacts()[Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "SipMsg"

    const-string p1, "getFeatureTagsFromAcceptContact: Wrong Accept-Contact header"

    .line 550
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 553
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTags([Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;
    .locals 1

    .line 489
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg;->mHeaderValue:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->get()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda11;-><init>(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)V

    .line 490
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/constants/ims/SipMsg$Header;

    invoke-direct {p1}, Lcom/sec/internal/constants/ims/SipMsg$Header;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/SipMsg$Header;

    return-object p0
.end method

.method public getPAccessNetworkInfo()Ljava/lang/String;
    .locals 1

    .line 801
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->P_ACCESS_NETWORK_INFO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getPAssociatedUris()[Ljava/lang/String;
    .locals 1

    .line 815
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->P_ASSOCIATED_URI:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getPLastAccessNetworkInfo()Ljava/lang/String;
    .locals 1

    .line 808
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->P_LAST_ACCESS_NETWORK_INFO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getRoutes()[Ljava/lang/String;
    .locals 1

    .line 757
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->ROUTE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityVerify()[Ljava/lang/String;
    .locals 1

    .line 794
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->SECURITY_VERIFY:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getServiceRoutes()[Ljava/lang/String;
    .locals 1

    .line 750
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->SERVICE_ROUTE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg;->mStartLine:Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    return-object p0
.end method

.method public getTelephonySipMessage()Landroid/telephony/ims/SipMessage;
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg;->mTelephonySipMsg:Landroid/telephony/ims/SipMessage;

    return-object p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 764
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->USER_AGENT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg;->DEFAULT_EMPTY_PARAM:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getViaBranch()Ljava/lang/String;
    .locals 2

    .line 681
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->VIA:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v1, "branch"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/constants/ims/SipMsg;->getParam(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getViaHostPort()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 663
    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    sget-object v1, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->VIA:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-direct {p0, v1}, Lcom/sec/internal/constants/ims/SipMsg;->getParameters(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda10;-><init>(Landroid/util/Pair;)V

    .line 665
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 677
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public getViaTransport()Ljava/lang/String;
    .locals 2

    .line 685
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->VIA:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string/jumbo v1, "transport"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/constants/ims/SipMsg;->getParam(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isContactUriHasSos()Z
    .locals 2

    .line 638
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CONTACT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$Header;->getValues()[Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "SipMsg"

    const-string v0, "isContactUriHasSos: Wrong Contact header"

    .line 640
    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 644
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getTopPriorityContact([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ";sos>;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isNonDialogMethod()Z
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg;->getCSeqMethod()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MESSAGE"

    .line 473
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public varargs isOneOfEvent([Ljava/lang/String;)Z
    .locals 1

    .line 712
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg;->getEvent()Ljava/lang/String;

    move-result-object p0

    .line 713
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isOutGoing()Z
    .locals 0

    .line 441
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/SipMsg;->mIsOutGoing:Z

    return p0
.end method

.method public isRegister()Z
    .locals 1

    .line 467
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg;->getCSeqMethod()Ljava/lang/String;

    move-result-object p0

    const-string v0, "REGISTER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupported(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 692
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->SUPPORTED:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg;->getHeader(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public isWellFormed()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/sec/internal/constants/ims/SipMsg;->mStartLine:Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg;->mTelephonySipMsg:Landroid/telephony/ims/SipMessage;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/SipMsg;->mIsOutGoing:Z

    if-eqz v1, :cond_0

    const-string v1, "--> "

    goto :goto_0

    :cond_0
    const-string v1, "<-- "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg;->mStartLine:Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v1, "WRONG SIP"

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
