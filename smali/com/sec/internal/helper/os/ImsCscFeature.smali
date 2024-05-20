.class public Lcom/sec/internal/helper/os/ImsCscFeature;
.super Ljava/lang/Object;
.source "ImsCscFeature.java"


# static fields
.field private static volatile sInstance:Lcom/sec/internal/helper/os/ImsCscFeature;


# instance fields
.field private mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

.field private mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureList_2:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    .line 28
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/helper/os/ImsCscFeature;
    .locals 2

    .line 32
    sget-object v0, Lcom/sec/internal/helper/os/ImsCscFeature;->sInstance:Lcom/sec/internal/helper/os/ImsCscFeature;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/sec/internal/helper/os/ImsCscFeature;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/os/ImsCscFeature;->sInstance:Lcom/sec/internal/helper/os/ImsCscFeature;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/sec/internal/helper/os/ImsCscFeature;

    invoke-direct {v1}, Lcom/sec/internal/helper/os/ImsCscFeature;-><init>()V

    sput-object v1, Lcom/sec/internal/helper/os/ImsCscFeature;->sInstance:Lcom/sec/internal/helper/os/ImsCscFeature;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/os/ImsCscFeature;->sInstance:Lcom/sec/internal/helper/os/ImsCscFeature;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public clear(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/ImsCscFeature;->clear()V

    return-void

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public getBoolean(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 95
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/os/ImsCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 101
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 65
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/os/ImsCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public put(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 117
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/helper/os/ImsCscFeature;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {p0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 129
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/os/ImsCscFeature;->remove(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
