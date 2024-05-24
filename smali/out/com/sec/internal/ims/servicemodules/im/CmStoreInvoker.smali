.class public Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;
.super Ljava/lang/Object;
.source "CmStoreInvoker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmStoreInvoker"

.field private static mGetCMSServiceObj:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCldMsgServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field mCmsModuleClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field mGetCMSService:Ljava/lang/reflect/Method;

.field mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCmsModuleClass:Ljava/lang/Class;

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSService:Ljava/lang/reflect/Method;

    .line 30
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-void
.end method

.method private getLine(I)Ljava/lang/String;
    .registers 2

    .line 198
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_f

    .line 200
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getLine: simManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_f
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;IILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 190
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 194
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPhoneIdByIMSI(Ljava/lang/String;)I
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isCmStoreEnabled(I)Z
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 208
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const-string p1, "central_msg_store"

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    :goto_26
    return p0
.end method

.method public isReady(I)Z
    .registers 10

    const/4 v0, 0x0

    .line 35
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCmsModuleClass:Ljava/lang/Class;

    if-nez v1, :cond_d

    const-string v1, "com.sec.internal.ims.cmstore.CmsModule"

    .line 36
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCmsModuleClass:Ljava/lang/Class;

    .line 39
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSService:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_22

    .line 40
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCmsModuleClass:Ljava/lang/Class;

    const-string v3, "getCMSServiceByPhoneID"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSService:Ljava/lang/reflect/Method;

    .line 43
    :cond_22
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6c

    .line 44
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isReady, mGetCMSServiceObj added for phoneid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSService:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 46
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSService:Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_6c
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    if-nez v1, :cond_74

    .line 51
    const-class v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;
    :try_end_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_74} :catch_8a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_74} :catch_8a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_74} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_74} :catch_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_74} :catch_8a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_74} :catch_8a

    .line 58
    :cond_74
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    if-eqz v1, :cond_89

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCmsModuleClass:Ljava/lang/Class;

    if-eqz p0, :cond_89

    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_89

    move v0, v2

    :cond_89
    return v0

    :catch_8a
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method protected declared-synchronized notifyFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .registers 6

    monitor-enter p0

    .line 178
    :try_start_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, p4, :cond_9

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1e

    .line 183
    :cond_9
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    invoke-static {p4, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p4

    if-nez p4, :cond_1e

    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onSentMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 187
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onCancelRcsMessageList(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_57

    if-eqz v0, :cond_55

    if-eqz p2, :cond_55

    .line 105
    :try_start_f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelRcsMessageList: list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v1, "cancelRCSMessageList"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;ILjava/util/List;)V
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_38} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_38} :catch_39
    .catchall {:try_start_f .. :try_end_38} :catchall_57

    goto :goto_55

    :catch_39
    move-exception p1

    .line 111
    :try_start_3a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_55

    :catch_3e
    move-exception p1

    .line 109
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call cloud message service exception. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_57

    .line 114
    :cond_55
    :goto_55
    monitor-exit p0

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .registers 10

    monitor-enter p0

    .line 62
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_76

    if-eqz v0, :cond_74

    .line 64
    :try_start_d
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreateSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v1, "createSession"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v3, "createParticipant"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 68
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-static {v1, p1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_5c} :catch_5d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_5c} :catch_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_5c} :catch_5d
    .catchall {:try_start_d .. :try_end_5c} :catchall_76

    goto :goto_74

    :catch_5d
    move-exception p1

    .line 71
    :try_start_5e
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call cloud message service exception. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_5e .. :try_end_74} :catchall_76

    .line 74
    :cond_74
    :goto_74
    monitor-exit p0

    return-void

    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onDeleteRcsMessagesUsingChatId(Ljava/util/List;ZLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p3

    .line 152
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_66

    if-eqz v0, :cond_64

    if-nez p2, :cond_64

    if-eqz p1, :cond_64

    .line 154
    :try_start_15
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeleteRcsMessagesUsingChatId: list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v0, "deleteRCSMessageListUsingChatId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 156
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_4c} :catch_4d
    .catchall {:try_start_15 .. :try_end_4c} :catchall_66

    goto :goto_64

    :catch_4d
    move-exception p1

    .line 158
    :try_start_4e
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call cloud message service exception. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_66

    .line 161
    :cond_64
    :goto_64
    monitor-exit p0

    return-void

    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onDeleteRcsMessagesUsingImdnId(Ljava/util/List;ZLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p3

    .line 137
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_58

    if-eqz v0, :cond_56

    if-nez p2, :cond_56

    if-eqz p1, :cond_56

    .line 139
    :try_start_15
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteMessagesforCloudSyncUsingImdnId: list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v0, "deleteRCSMessageListUsingImdnId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 141
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;ILjava/util/List;)V
    :try_end_3e
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_3e} :catch_3f
    .catchall {:try_start_15 .. :try_end_3e} :catchall_58

    goto :goto_56

    :catch_3f
    move-exception p1

    .line 143
    :try_start_40
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call cloud message service exception. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_58

    .line 146
    :cond_56
    :goto_56
    monitor-exit p0

    return-void

    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onDeleteRcsMessagesUsingMsgId(Ljava/util/List;ZLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p3

    .line 123
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_58

    if-eqz v0, :cond_56

    if-nez p2, :cond_56

    if-eqz p1, :cond_56

    .line 125
    :try_start_15
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteMessagesforCloudSyncUsingMsgId: list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v0, "deleteRCSMessageListUsingMsgId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/util/List;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 127
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;ILjava/util/List;)V
    :try_end_3e
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_3e} :catch_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_3e} :catch_3f
    .catchall {:try_start_15 .. :try_end_3e} :catchall_58

    goto :goto_56

    :catch_3f
    move-exception p1

    .line 129
    :try_start_40
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call cloud message service exception. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_58

    .line 132
    :cond_56
    :goto_56
    monitor-exit p0

    return-void

    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onReadRcsMessageList(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_53

    if-eqz v0, :cond_51

    if-eqz p2, :cond_51

    .line 93
    :try_start_f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadRcsMessageList: list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string/jumbo v1, "readRCSMessageList"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;ILjava/util/List;)V
    :try_end_39
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_39} :catch_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f .. :try_end_39} :catch_3a
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_39} :catch_3a
    .catchall {:try_start_f .. :try_end_39} :catchall_53

    goto :goto_51

    :catch_3a
    move-exception p1

    .line 97
    :try_start_3b
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call cloud message service exception. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_53

    .line 100
    :cond_51
    :goto_51
    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    monitor-enter p0

    .line 77
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 78
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_57

    if-eqz p1, :cond_55

    .line 80
    :try_start_11
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onReceiveRcsMessage"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getLine(I)Ljava/lang/String;

    move-result-object v5

    .line 82
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string/jumbo v0, "receiveRCSMessage"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    .line 83
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_3d} :catch_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_3d} :catch_3e
    .catchall {:try_start_11 .. :try_end_3d} :catchall_57

    goto :goto_55

    :catch_3e
    move-exception p1

    .line 85
    :try_start_3f
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call cloud message service exception. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_3f .. :try_end_55} :catchall_57

    .line 88
    :cond_55
    :goto_55
    monitor-exit p0

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onSentMessage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    monitor-enter p0

    .line 164
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 165
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getLine(I)Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 167
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSentMessage for cloud sync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_66

    .line 169
    :try_start_2b
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string/jumbo v0, "sentRCSMessage"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_4c} :catch_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2b .. :try_end_4c} :catch_4d
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_4c} :catch_4d
    .catchall {:try_start_2b .. :try_end_4c} :catchall_66

    goto :goto_64

    :catch_4d
    move-exception p1

    .line 172
    :try_start_4e
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call cloud message service exception. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_66

    .line 175
    :cond_64
    :goto_64
    monitor-exit p0

    return-void

    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method
