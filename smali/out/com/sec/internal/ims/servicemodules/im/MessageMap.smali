.class public Lcom/sec/internal/ims/servicemodules/im/MessageMap;
.super Ljava/lang/Object;
.source "MessageMap.java"


# instance fields
.field private final mChatIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mChatImdnIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mImdnIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6GSAr3uG-IsY9RBrmdkrsBdBvgg(Ljava/lang/String;)Ljava/util/Map;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->lambda$put$0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dDPWD4RY8MxQv3Y0cs9oSHmqRKQ(Ljava/lang/String;)Ljava/util/Map;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->lambda$put$1(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mImdnIdMap:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatIdMap:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatImdnIdMap:Ljava/util/Map;

    return-void
.end method

.method private static synthetic lambda$put$0(Ljava/lang/String;)Ljava/util/Map;
    .registers 1

    .line 105
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$put$1(Ljava/lang/String;)Ljava/util/Map;
    .registers 1

    .line 109
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method


# virtual methods
.method public containsKey(I)Z
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 23
    :try_start_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    if-ltz p1, :cond_e

    .line 31
    :try_start_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 33
    :goto_f
    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 5

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 40
    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz p2, :cond_19

    .line 41
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mImdnIdMap:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    .line 44
    :goto_1a
    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .registers 6

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 51
    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 53
    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    if-eqz p2, :cond_2d

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatImdnIdMap:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_2d

    .line 56
    new-instance p3, Landroid/util/Pair;

    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    .line 60
    :goto_2e
    monitor-exit v0

    return-object p0

    :catchall_30
    move-exception p0

    .line 61
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public getAll()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 66
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 67
    :goto_f
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 68
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 70
    :cond_25
    monitor-exit v0

    return-object v1

    :catchall_27
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 76
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatIdMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1f

    .line 80
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    :cond_1f
    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception p0

    .line 84
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .registers 7

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    if-eqz p1, :cond_7c

    .line 90
    :try_start_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    if-lez v1, :cond_14

    .line 91
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_14
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 96
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    if-eqz v1, :cond_3a

    .line 100
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mImdnIdMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_3a
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 104
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    if-lez v2, :cond_66

    .line 105
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/MessageMap$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 106
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    if-eqz v1, :cond_7c

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatImdnIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/MessageMap$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 110
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_7c
    monitor-exit v0

    return-void

    :catchall_7e
    move-exception p0

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_5 .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public remove(I)V
    .registers 7

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    monitor-enter v0

    if-lez p1, :cond_6a

    .line 120
    :try_start_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 121
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v1, :cond_6a

    .line 124
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 125
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    if-eqz v2, :cond_3a

    .line 129
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mImdnIdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_3a
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 133
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_59

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_59
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->mChatImdnIdMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_6a

    .line 139
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_6a
    monitor-exit v0

    return-void

    :catchall_6c
    move-exception p0

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_5 .. :try_end_6e} :catchall_6c

    throw p0
.end method
