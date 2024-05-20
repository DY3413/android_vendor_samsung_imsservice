.class public Lcom/sec/internal/helper/CollectionUtils$Partition;
.super Ljava/util/AbstractList;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->list:Ljava/util/List;

    .line 99
    iput p2, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/CollectionUtils$Partition;->get(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->size:I

    mul-int/2addr p1, v0

    add-int/2addr v0, p1

    .line 105
    iget-object v1, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 106
    iget-object p0, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->list:Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 117
    iget p0, p0, Lcom/sec/internal/helper/CollectionUtils$Partition;->size:I

    rem-int v1, v0, p0

    if-nez v1, :cond_0

    .line 118
    div-int/2addr v0, p0

    return v0

    .line 120
    :cond_0
    div-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
