.class public Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;
.super Ljava/lang/Object;
.source "SocialPresenceCache.java"


# static fields
.field private static final CACHE_SIZE:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "SocialPresenceCache"

.field private static final PERSIST_MAX_SIZE:I = 0x64

.field private static final PERSIST_TIMEOUT:I = 0x7d0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPersistPosted:Z

.field private mPersistTimeout:Z

.field private mPhoneId:I

.field private mPresenceInfoList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

.field private mPresenceStorageHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;

.field private mUriListToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mUriListToUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RFX3Y0pNMUpYmelVLM7iuUMo4v8(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->lambda$tryPersist$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$b2SnHuTfgE9JnLbgRQSLx0nffk0(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->lambda$resetPresenceStorage$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zNPOJrlJGQWFEdGxQaOB8CeN7c0(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->lambda$tryPersist$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$1;-><init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    .line 51
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SocialPresenceStorage"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mIsPersistPosted:Z

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPersistTimeout:Z

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mContext:Landroid/content/Context;

    .line 64
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPhoneId:I

    .line 65
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->initPresenceStorage()V

    return-void
.end method

.method private initPresenceStorage()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorageHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPhoneId:I

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    return-void
.end method

.method private synthetic lambda$resetPresenceStorage$0()V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->reset()V

    return-void
.end method

.method private synthetic lambda$tryPersist$1()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryPersist: try remainder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SocialPresenceCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPersistTimeout:Z

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->tryPersist(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$tryPersist$2(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 80
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPersistTimeout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mIsPersistPosted:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mIsPersistPosted:Z

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryPersist: force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", timeout = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPersistTimeout:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SocialPresenceCache"

    invoke-static {v1, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mIsPersistPosted:Z

    .line 83
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPersistTimeout:Z

    .line 84
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->persist()V

    :cond_2
    :goto_1
    return-void
.end method

.method private resetPresenceStorage()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tryPersist(Z)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 152
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->resetPresenceStorage()V

    return-void
.end method

.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/PresenceInfo;

    if-nez v0, :cond_1

    .line 134
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPhoneId:I

    const-string v1, "SocialPresenceCache"

    const-string v2, "get: not found. presenceInfo from db"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public get(Ljava/util/Set;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;->get(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getTrashedUriList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method public getUpdatedUriList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method public remove(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocialPresenceCache"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 115
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 118
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->tryPersist(Z)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialPresenceCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mPresenceInfoList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->tryPersist(Z)V

    return-void
.end method
