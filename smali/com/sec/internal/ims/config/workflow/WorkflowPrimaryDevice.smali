.class public Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowPrimaryDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Authorize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchOtp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;
    }
.end annotation


# static fields
.field private static final BODY:Ljava/lang/String; = ""

.field private static final DIGEST_URI:Ljava/lang/String; = "/"

.field private static final IMS_SWITCH:Ljava/lang/String; = "imsswitch"

.field private static final LOG_TAG_BASE:Ljava/lang/String;

.field private static final PASSWD:Ljava/lang/String; = ""

.field private static final USER_NAME:Ljava/lang/String; = ""


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected mIsheaderEnrichment:Z

.field mRcsSwitchListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field protected mRescheduleValidityTimer:Z


# direct methods
.method public static synthetic $r8$lambda$6-D1RbWJWE4uQXU9Q6EBPVVT5As(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->lambda$setOpenIdAuthParams$1(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6IcSRV0HWPDozVJR2fw1rjaqXsA(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C0MUl5qZD4WLVJUv4RIQWNOLQfs(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->lambda$setOpenIdAuthParams$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_MXzAUgooGQCJ7icwdbCraPMW-g(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->lambda$setOpenIdAuthParams$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bgmBbZWime9MGC60GSbgVnP70q8(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->lambda$setOpenIdAuthParams$3(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sifsKXoxjp1Ed7B0VvHBq_6isEI(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->lambda$setOpenIdAuthParams$6([B)V

    return-void
.end method

.method public static synthetic $r8$lambda$wOHngtj6bkUK7j0vPrHInC2aQnk(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->lambda$setOpenIdAuthParams$4(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG_BASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;I)V
    .locals 13

    move-object v11, p0

    move/from16 v12, p6

    .line 88
    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {v7, v12}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-direct {v9, p2, v3}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    .line 68
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG_BASE:Ljava/lang/String;

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mIsheaderEnrichment:Z

    .line 76
    iput-boolean v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mRescheduleValidityTimer:Z

    .line 78
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mRcsSwitchListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 91
    iget-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->registerListenersAndObservers()V

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mRcsSwitchListener onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 83
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 82
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setOpenIdAuthParams$1(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$setOpenIdAuthParams$2(Ljava/lang/String;)V
    .locals 12

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/SharedInfo;->parseAkaParams(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getAKAParams()Ljava/util/HashMap;

    move-result-object v0

    .line 331
    new-instance v11, Lcom/sec/internal/helper/httpclient/DigestAuth;

    invoke-direct {v11}, Lcom/sec/internal/helper/httpclient/DigestAuth;-><init>()V

    const-string v1, "realm"

    .line 332
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const-string v1, "nonce"

    .line 333
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const-string v1, "algorithm"

    .line 334
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    const-string v1, "qop"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const-string v2, ""

    const-string v3, ""

    const-string v6, "POST"

    const-string v7, "/"

    const-string v10, ""

    move-object v1, v11

    .line 332
    invoke-virtual/range {v1 .. v10}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/sec/internal/helper/httpclient/DigestAuth;->createCnonce()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {v11}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getResp()Ljava/lang/String;

    move-result-object v1

    .line 338
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",cnonce="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",response="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "Authorization"

    .line 338
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$setOpenIdAuthParams$3(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$setOpenIdAuthParams$4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setOpenIdAuthParams$5(Ljava/lang/String;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOP Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "access_token"

    .line 349
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 350
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string p1, "prepare for configuration request"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "code"

    .line 351
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "should reach out token end point for access token"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/SharedInfo;->parseOidcParams(Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/SharedInfo;->getOidcParams()Ljava/util/HashMap;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setOpenIdAuthParams$6([B)V
    .locals 7

    const-string/jumbo v0, "}"

    const-string/jumbo v1, "{"

    const-string v2, "Not a JSON Body"

    const-string v3, "id_token"

    const-string v4, "access_token"

    .line 361
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 362
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v6, -0x1

    if-eq p1, v6, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v6, :cond_1

    .line 363
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 364
    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 363
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 367
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {v0, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 370
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-virtual {v0, v3, p1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :catch_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Not a JSON Body by JSONException"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :catch_2
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string p1, "fail to create a new string by UnsupportedEncodingException"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private registerListenersAndObservers()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsswitch_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mRcsSwitchListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 136
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private unregisterListenersAndObservers()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsswitch_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mRcsSwitchListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 141
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 524
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cleanup()V

    .line 525
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->unregisterListenersAndObservers()V

    return-void
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 130
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 119
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mRescheduleValidityTimer:Z

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Rescheduling validity timer due to RCS switch change"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mRescheduleValidityTimer:Z

    .line 122
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->scheduleAutoconfig(I)V

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    .line 125
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mRescheduleValidityTimer:Z

    goto :goto_0

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 103
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->isRcsEnabledByPhoneId(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "sms default application is changed to samsung, schedule autoconf"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->scheduleAutoconfig(I)V

    goto :goto_0

    .line 109
    :cond_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mRescheduleValidityTimer:Z

    goto :goto_0

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "sms default application is changed to non-samsung, cancel validity timer"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cancelValidityTimer()V

    :goto_0
    return-void
.end method

.method protected setOpenIdAuthParams()V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "WWW-Authenticate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda2;-><init>()V

    .line 327
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    .line 328
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x12e

    if-ne v0, v1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string v1, "302 Received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda4;-><init>()V

    .line 344
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    .line 345
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected setSharedInfoWithAuthParam()V
    .locals 4

    .line 389
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mIsheaderEnrichment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_4

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "msisdn"

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getLastMsisdnValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->getLastMsisdnValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSmsDestPort()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMS_port"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected setSharedInfoWithParam()V
    .locals 7

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isConfigProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->changeConfigProxyUriForHttp()V

    .line 293
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpProxyDefault()V

    .line 295
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vers"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMSI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMEI"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalModel()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "terminal_model"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "terminal_vendor"

    const-string v3, "SEC"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromCarrierVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "terminal_sw_version"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 306
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    goto :goto_0

    :cond_2
    const-string v1, "2"

    :goto_0
    const-string v3, "default_sms_app"

    .line 305
    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->setSharedInfoWithAuthParam()V

    .line 308
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->setOpenIdAuthParams()V

    .line 309
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "0"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_4

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DORMANT mode. use backup version :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    return-void
.end method

.method work()V
    .locals 5

    .line 146
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    .line 147
    sget v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->AUTO_CONFIG_MAX_FLOWCOUNT:I

    :goto_0
    if-eqz v0, :cond_1

    if-lez v1, :cond_1

    .line 151
    :try_start_0
    invoke-interface {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown exception occur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "wait 1 sec. and retry"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x3e8

    .line 174
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 175
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 165
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException occur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string v3, "finish workflow"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    .line 168
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 159
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownStatusException occur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "wait 2 sec. and retry"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x7d0

    .line 161
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 162
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 153
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoInitialDataException occur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "wait 10 sec. and retry"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x2710

    .line 155
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 156
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object v0, v2

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method
