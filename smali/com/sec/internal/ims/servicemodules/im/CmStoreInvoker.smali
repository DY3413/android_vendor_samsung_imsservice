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
    .locals 2

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    .line 20
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCmsModuleClass:Ljava/lang/Class;

    .line 21
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSService:Ljava/lang/reflect/Method;

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-void
.end method

.method private getLine(I)Ljava/lang/String;
    .locals 0

    .line 185
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_0

    .line 187
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getLine: simManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 177
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/4 p3, 0x1

    aput-object p4, p2, p3

    const/4 p3, 0x2

    aput-object p5, p2, p3

    invoke-static {p1, p0, p2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method private invokeMethod(Ljava/lang/reflect/Method;ILjava/util/List;)V
    .locals 1
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

    .line 181
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p1, p0, p2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getPhoneIdByIMSI(Ljava/lang/String;)I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isCmStoreEnabled()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const-string v0, "central_msg_store"

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCmStoreEnabled(I)Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const-string p1, "central_msg_store"

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReady(I)Z
    .locals 8

    const/4 v0, 0x0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCmsModuleClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.sec.internal.ims.cmstore.CmsModule"

    .line 32
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCmsModuleClass:Ljava/lang/Class;

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSService:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCmsModuleClass:Ljava/lang/Class;

    const-string v3, "getCMSServiceByPhoneID"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSService:Ljava/lang/reflect/Method;

    .line 39
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 40
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isReady, mGetCMSServiceObj added for phoneid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSService:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    if-nez v1, :cond_3

    .line 45
    const-class v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCmsModuleClass:Ljava/lang/Class;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    move v0, v2

    :cond_4
    return v0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method protected declared-synchronized notifyFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, p4, :cond_0

    .line 170
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onSentMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 7

    const-class v0, Ljava/lang/String;

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 57
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCreateSession"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v2, "createSession"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v4, "createParticipant"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v5

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 62
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {v0, p1, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    :try_start_2
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 64
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call cloud message service exception. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onDeleteRcsMessagesUsingChatId(Ljava/util/List;ZLjava/lang/String;)V
    .locals 5
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

    .line 140
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p3

    .line 141
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 143
    :try_start_1
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeleteRcsMessagesUsingChatId: list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v0, "deleteRCSMessageListUsingChatId"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 145
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mGetCMSServiceObj:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-static {p2, p3, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onDeleteRcsMessagesUsingImdnId(Ljava/util/List;ZLjava/lang/String;)V
    .locals 4
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

    .line 123
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p3

    .line 124
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 126
    :try_start_1
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteMessagesforCloudSyncUsingImdnId: list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v0, "deleteRCSMessageListUsingImdnId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 128
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onDeleteRcsMessagesUsingMsgId(Ljava/util/List;ZLjava/lang/String;)V
    .locals 4
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

    .line 107
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result p3

    .line 108
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 110
    :try_start_1
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteMessagesforCloudSyncUsingMsgId: list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v0, "deleteRCSMessageListUsingMsgId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 112
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 114
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call cloud message service exception. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onReadRcsMessageList(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 90
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadRcsMessageList: list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v1, "readRCSMessageList"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/List;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;ILjava/util/List;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 94
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call cloud message service exception. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const-class v0, Ljava/lang/String;

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v3

    .line 73
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 75
    :try_start_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onReceiveRcsMessage"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getLine(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v1, "receiveRCSMessage"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v4, 0x2

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    .line 78
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 80
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call cloud message service exception. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onSentMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const-class v0, Ljava/lang/String;

    monitor-enter p0

    .line 155
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v3

    .line 156
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getLine(I)Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isCmStoreEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->isReady(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSentMessage for cloud sync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->mCldMsgServiceClass:Ljava/lang/Class;

    const-string v1, "sentRCSMessage"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/4 v4, 0x2

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    .line 161
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->invokeMethod(Ljava/lang/reflect/Method;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
