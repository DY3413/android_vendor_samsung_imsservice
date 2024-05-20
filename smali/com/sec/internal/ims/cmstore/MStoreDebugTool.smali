.class public Lcom/sec/internal/ims/cmstore/MStoreDebugTool;
.super Ljava/lang/Object;
.source "MStoreDebugTool.java"


# static fields
.field public static final DEBUG_ON:Z = false

.field public static final DEFAULT_LAB_ENTITLEMENT:Ljava/lang/String; = "https://eas3.msg.lab.t-mobile.com/generic_devices"

.field public static final DEFAULT_PRO_ENTITLEMENT:Ljava/lang/String; = "https://eas3.msg.t-mobile.com/generic_devices"

.field public static final DEFAULT_STG_BSF:Ljava/lang/String; = "https://bsf.sipgeo.t-mobile.com:443/"

.field public static final DEFAULT_STG_ENTITLEMENT:Ljava/lang/String; = "https://easstg1.msg.t-mobile.com/generic_devices"

.field public static final ES_AUTHORITY_URI:Landroid/net/Uri;

.field public static final LOG_TAG:Ljava/lang/String; = "MStoreDebugTool"

.field public static SIMTYPE:I

.field private static sInstance:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;


# instance fields
.field public BSF_IP:Ljava/lang/String;

.field private mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

.field private mContext:Landroid/content/Context;

.field private mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

.field mVVMIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCentralMsgStoreWrapper(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTextFromSD(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->getTextFromSD(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.ims.entitlementconfig.provider"

    .line 39
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->ES_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;-><init>(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->mVVMIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 52
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/MStoreDebugTool;
    .locals 1

    .line 56
    sget-object v0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->sInstance:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->sInstance:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    .line 59
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->sInstance:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    return-object p0
.end method

.method private getTextFromSD(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    .line 164
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 167
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 164
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p0
.end method

.method private static isValidUrl(Ljava/lang/String;)Z
    .locals 1

    .line 197
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static replaceDebugImpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private updateEntitlementUrl(Ljava/lang/String;)Z
    .locals 4

    .line 179
    sget-object v0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEntitlementUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->ES_AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "config"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entitlement_url"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "?entitlement_url="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 190
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo p0, "updateEntitlementUrl: update done!"

    .line 191
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string/jumbo p0, "updateEntitlementUrl: invalid url"

    .line 182
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getEntitlementUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    .line 203
    invoke-static {p1, p0}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http://ses.ericsson-magic.net:10080/generic_devices"

    .line 204
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initDebugInfo()V
    .locals 0

    return-void
.end method

.method public registerVVMIntentReceiver()V
    .locals 2

    .line 63
    sget-object v0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerVVMIntentReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.shiqg.action.VVM"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.shiqg.action.TESTAPI"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->mVVMIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public replaceDebugBsf(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public setupSim(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "entitlement_url"

    const-string v1, "bsf_ip"

    const/4 v2, 0x0

    .line 210
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->BSF_IP:Ljava/lang/String;

    .line 216
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    sget-object v0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config entitlement_url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->getEntitlementUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storeentitlement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "same entitlement_url "

    .line 223
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->updateEntitlementUrl(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
