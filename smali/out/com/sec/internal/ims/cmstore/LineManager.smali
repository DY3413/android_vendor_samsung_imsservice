.class public Lcom/sec/internal/ims/cmstore/LineManager;
.super Ljava/lang/Object;
.source "LineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;,
        Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LineManager"


# instance fields
.field private final mILineStatusChangeCallBack:Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;

.field private final mLineStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mLineStatusOberserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatusOberserverList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mILineStatusChangeCallBack:Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;

    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/String;)V
    .registers 5

    .line 67
    sget-object v0, Lcom/sec/internal/ims/cmstore/LineManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLine :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;->WORKING:Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatusOberserverList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;

    .line 70
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;->onLineAdded(Ljava/lang/String;)V

    goto :goto_27

    :cond_37
    return-void
.end method

.method public initLineStatus()V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mILineStatusChangeCallBack:Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;->notifyLoadLineStatus()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_24

    .line 61
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/LineManager;->addLine(Ljava/lang/String;)V

    goto :goto_13

    :cond_23
    return-void

    .line 57
    :cond_24
    :goto_24
    sget-object p0, Lcom/sec/internal/ims/cmstore/LineManager;->TAG:Ljava/lang/String;

    const-string v0, "no line added yet"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerLineStatusOberser(Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;)V
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatusOberserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    return-void

    .line 48
    :cond_f
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-interface {p1, v0}, Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;->onLineAdded(Ljava/lang/String;)V

    goto :goto_19

    :cond_29
    return-void
.end method
