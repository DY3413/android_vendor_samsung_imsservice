.class public Lcom/sec/internal/ims/config/workflow/WorkflowChn;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowChn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchOtp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;
    }
.end annotation


# static fields
.field protected static final AUTO_CONFIG_MAX_FLOWCOUNT:I = 0x14

.field public static final INTENT_ACTION_RCS_ENABLE:Ljava/lang/String; = "android.intent.action.RCS_ENABLE"

.field public static final INTENT_PARAM_RCS_ENABLE:Ljava/lang/String; = "RCS_ENABLE"

.field public static final INTENT_PARAM_RCS_ENABLE_TYPE:Ljava/lang/String; = "action_type"

.field public static final INTENT_VALUE_RCS_ENABLE_TYPE_ALL_RCS:Ljava/lang/String; = "ALL_RCS"

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final MAX_SERVER_COUNT:I


# instance fields
.field protected hasNotified:Z

.field protected mHttpResult:I

.field protected mIsReceicedXml:Z

.field protected mMinValidity:I

.field protected mNewServerInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mOldServerInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mServerCount:I

.field protected mServerId:I

.field protected mSharedInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/config/SharedInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$menableRcs(Lcom/sec/internal/ims/config/workflow/WorkflowChn;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->enableRcs(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->APPID_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sput v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->MAX_SERVER_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V
    .locals 12

    move-object v11, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v10, p5

    .line 76
    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;

    invoke-direct {v5, p2, p3, v10}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceChn;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;

    invoke-direct {v7, v10}, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, p2, p3}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    const/4 v0, 0x0

    .line 59
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mHttpResult:I

    const v1, 0x7fffffff

    .line 61
    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mMinValidity:I

    .line 62
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->hasNotified:Z

    .line 63
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mNewServerInfoList:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mOldServerInfoList:Ljava/util/List;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mSharedInfoList:Ljava/util/List;

    .line 67
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mIsReceicedXml:Z

    .line 68
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerCount:I

    .line 79
    iget-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private enableRcs(Z)V
    .locals 4

    .line 545
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 548
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RCS_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "action_type"

    const-string v3, "ALL_RCS"

    .line 549
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "RCS_ENABLE"

    .line 550
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 551
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "enableRcs: Intent has been transmitted sucessfully !!"

    .line 552
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleAdditionalServer()Z
    .locals 10

    .line 145
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mNewServerInfoList:Ljava/util/List;

    .line 147
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->setDefaultServerInfo(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleAdditionalServer: Access-control present"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mNewServerInfoList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->setAdditionalServerInfo(Ljava/util/List;)V

    .line 151
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mNewServerInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerCount:I

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->updateTables()V

    goto :goto_0

    .line 155
    :cond_1
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerCount:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const-string v3, "config_"

    if-eqz v0, :cond_4

    .line 159
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleAdditionalServer: updating storage"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    .line 164
    invoke-static {v3}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 163
    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 166
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mSharedInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 167
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mSharedInfoList:Ljava/util/List;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/config/SharedInfo;

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    goto :goto_1

    .line 169
    :cond_3
    new-instance v1, Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientPlatform:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsEnabledByUser:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/config/SharedInfo;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mSharedInfoList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    :cond_4
    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    .line 174
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 175
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v1, v2, v3, p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 178
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasAdditionalServer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 84
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_1

    .line 139
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->resetStorage()V

    .line 88
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 91
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz p1, :cond_2

    const-string p0, "AutoConfig: ongoing"

    .line 92
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 95
    :cond_2
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    const-string p1, "AutoConfig: start"

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 99
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 101
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    if-nez p1, :cond_3

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mOldServerInfoList:Ljava/util/List;

    .line 103
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->setDefaultServerInfo(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mOldServerInfoList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->setAdditionalServerInfo(Ljava/util/List;)V

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    .line 109
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->needScheduleAutoconfig(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->scheduleAutoconfig(I)V

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    .line 113
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->handleAdditionalServer()Z

    move-result v4

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsReceicedXml: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mIsReceicedXml:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 116
    iput-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oldVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " newVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " next serverID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_5

    const-string v4, "AutoConfig: finish"

    .line 119
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setCompleted(Z)V

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 121
    invoke-virtual {p0, v3, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    iput-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->hasNotified:Z

    .line 124
    iput-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto :goto_0

    :cond_5
    if-gtz v1, :cond_6

    .line 127
    iget-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->hasNotified:Z

    if-nez v4, :cond_6

    const-string v4, "Notifying ConfigModule"

    .line 128
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 129
    invoke-virtual {p0, v3, p1, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->hasNotified:Z

    .line 133
    :cond_6
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method protected setAdditionalServerInfo(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 203
    :goto_0
    sget v2, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->MAX_SERVER_COUNT:I

    if-ge v1, v2, :cond_3

    .line 204
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "root/access-control/server/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/fqdn"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    .line 210
    iput-object v2, v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;->fqdn:Ljava/lang/String;

    move v2, v0

    .line 211
    :goto_1
    sget v5, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->MAX_SERVER_COUNT:I

    if-ge v2, v5, :cond_2

    .line 212
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/app-id/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 217
    :cond_1
    iget-object v6, v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;->appIdList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 220
    :cond_2
    :goto_2
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected setDefaultServerInfo(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;",
            ">;)Z"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v1, "root/access-control/server/0/app-id/0"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 188
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    .line 189
    :goto_0
    sget v2, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->MAX_SERVER_COUNT:I

    if-ge v1, v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "root/access-control/default/app-id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;->appIdList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_2
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected setValidityTimer(I)V
    .locals 3

    .line 558
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValidityTimer: validityPeriod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMinValidity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mMinValidity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mMinValidity:I

    if-gt p1, v0, :cond_0

    .line 560
    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mMinValidity:I

    .line 561
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    :cond_0
    return-void
.end method

.method updateTables()V
    .locals 5

    .line 225
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTables: mOldServerInfoList.size() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mOldServerInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNewServerInfoList.size() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mNewServerInfoList:Ljava/util/List;

    .line 226
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mOldServerInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mNewServerInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mNewServerInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;->fqdn:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mOldServerInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;->fqdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mNewServerInfoList:Ljava/util/List;

    .line 229
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 230
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTables: delete table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 232
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 233
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->deleteAll()Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method work()V
    .locals 6

    const-string v0, "finish workflow"

    .line 240
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    const/16 v2, 0x14

    :goto_0
    if-eqz v1, :cond_2

    if-lez v2, :cond_2

    .line 245
    :try_start_0
    invoke-interface {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    .line 269
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 270
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown exception occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 1 sec. and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    .line 273
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 274
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    .line 275
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    .line 264
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteFullException occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    .line 267
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    .line 258
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownStatusException occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 2 sec. and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x7d0

    .line 260
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 261
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    .line 262
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object v1, v3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 247
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoInitialDataException occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    if-eq v3, v4, :cond_1

    .line 249
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    goto :goto_2

    .line 252
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "wait 10 sec. and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x2710

    .line 253
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    .line 254
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    .line 256
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method
