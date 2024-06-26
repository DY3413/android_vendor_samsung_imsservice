.class Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;
.super Ljava/lang/Object;
.source "DmConfigModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/DmConfigModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DmContentValues"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DmContentValues"

.field protected static final NUM_OF_MAP:I = 0x3

.field protected static final TYPE_CONFIG_DB:I = 0x0

.field protected static final TYPE_NV:I = 0x1

.field protected static final TYPE_OTA:I = 0x2

.field private static mMaxTransactionId:I


# instance fields
.field private mTransactionMaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1b

    .line 516
    iget-object v1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method


# virtual methods
.method protected addConfigData(IILandroid/content/ContentValues;)V
    .registers 7

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 527
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    goto :goto_6c

    .line 529
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no transaction with transactionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " create new transaction"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmContentValues"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 533
    sget v1, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mMaxTransactionId:I

    if-le p1, v1, :cond_6c

    .line 534
    sput p1, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mMaxTransactionId:I

    .line 537
    :cond_6c
    :goto_6c
    invoke-virtual {v0, p3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 538
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected allTransactionDone()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_17

    .line 560
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    return v0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method protected getConfigData(II)Landroid/content/ContentValues;
    .registers 6

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_38

    .line 545
    :cond_12
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    return-object v1

    .line 548
    :cond_25
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    return-object p0

    :cond_38
    :goto_38
    return-object v1
.end method

.method protected getNewTransactionId()I
    .registers 1

    .line 521
    sget p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mMaxTransactionId:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mMaxTransactionId:I

    return p0
.end method

.method protected removeConfigData(II)V
    .registers 5

    .line 552
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 555
    :cond_13
    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$DmContentValues;->mTransactionMaps:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
