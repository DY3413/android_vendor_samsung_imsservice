.class public Lcom/sec/internal/helper/os/ImsFrameworkState;
.super Ljava/lang/Object;
.source "ImsFrameworkState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsFrameworkState"

.field private static final MUTEX:Ljava/lang/Object;

.field private static volatile sInstance:Lcom/sec/internal/helper/os/ImsFrameworkState; = null

.field private static volatile sIsFwReady:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFwStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/helper/os/ImsFrameworkState;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFwStatusReceiver(Lcom/sec/internal/helper/os/ImsFrameworkState;)Landroid/content/BroadcastReceiver;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mFwStatusReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmContext(Lcom/sec/internal/helper/os/ImsFrameworkState;Landroid/content/Context;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mContext:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyFrameworkState(Lcom/sec/internal/helper/os/ImsFrameworkState;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->notifyFrameworkState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMUTEX()Ljava/lang/Object;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->MUTEX:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsIsFwReady(Z)V
    .registers 1

    .line 0
    sput-boolean p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->sIsFwReady:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->MUTEX:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mListeners:Ljava/util/HashSet;

    .line 37
    iput-object p1, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mContext:Landroid/content/Context;

    .line 38
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mListeners:Ljava/util/HashSet;

    .line 39
    new-instance p1, Lcom/sec/internal/helper/os/ImsFrameworkState$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/helper/os/ImsFrameworkState$1;-><init>(Lcom/sec/internal/helper/os/ImsFrameworkState;)V

    iput-object p1, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mFwStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.ims.imsmanager.RESTART"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mFwStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ImsFrameworkState;
    .registers 3

    .line 77
    sget-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->sInstance:Lcom/sec/internal/helper/os/ImsFrameworkState;

    if-nez v0, :cond_17

    .line 80
    sget-object v1, Lcom/sec/internal/helper/os/ImsFrameworkState;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_7
    sget-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->sInstance:Lcom/sec/internal/helper/os/ImsFrameworkState;

    if-nez v0, :cond_12

    .line 83
    new-instance v0, Lcom/sec/internal/helper/os/ImsFrameworkState;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/os/ImsFrameworkState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->sInstance:Lcom/sec/internal/helper/os/ImsFrameworkState;

    .line 85
    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-object v0
.end method

.method public static isFrameworkReady()Z
    .registers 1

    .line 67
    sget-boolean v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->sIsFwReady:Z

    return v0
.end method

.method private notifyFrameworkState()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_1d

    .line 116
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;

    .line 117
    invoke-interface {v1}, Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;->onFwReady()V

    goto :goto_8

    .line 120
    :cond_18
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_1d
    return-void
.end method


# virtual methods
.method public registerForFrameworkState(Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;)V
    .registers 4

    const-string v0, "ImsFrameworkState"

    const-string/jumbo v1, "registerForFrameworkState."

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_b
    sget-boolean v1, Lcom/sec/internal/helper/os/ImsFrameworkState;->sIsFwReady:Z

    if-eqz v1, :cond_14

    .line 101
    invoke-interface {p1}, Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;->onFwReady()V

    .line 102
    monitor-exit v0

    return-void

    .line 105
    :cond_14
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mListeners:Ljava/util/HashSet;

    if-eqz p0, :cond_1b

    .line 106
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1d

    throw p0
.end method
