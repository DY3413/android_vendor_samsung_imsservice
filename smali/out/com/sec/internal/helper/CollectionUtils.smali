.class public Lcom/sec/internal/helper/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;,
        Lcom/sec/internal/helper/CollectionUtils$Partition;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createArrayListMultimap()Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;

    invoke-direct {v0}, Lcom/sec/internal/helper/CollectionUtils$ArrayListMultimap;-><init>()V

    return-object v0
.end method

.method public static getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z
    .registers 4

    if-eqz p0, :cond_14

    .line 36
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 39
    :cond_9
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_10

    goto :goto_14

    .line 40
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_14
    :goto_14
    return p2
.end method

.method public static getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I
    .registers 4

    if-eqz p0, :cond_14

    .line 45
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 48
    :cond_9
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_10

    goto :goto_14

    .line 49
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_14
    :goto_14
    return p2
.end method

.method public static getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_11

    .line 54
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 57
    :cond_9
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    goto :goto_11

    :cond_10
    move-object p2, p0

    :cond_11
    :goto_11
    return-object p2
.end method

.method public static isNullOrEmpty(Landroid/content/ContentValues;)Z
    .registers 1

    if-eqz p0, :cond_b

    .line 32
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .registers 1

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isNullOrEmpty(Ljava/util/Collection;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isNullOrEmpty(Ljava/util/Map;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 24
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isNullOrEmpty([Ljava/lang/Object;)Z
    .registers 1

    if-eqz p0, :cond_8

    .line 28
    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static partition(Ljava/util/List;I)Lcom/sec/internal/helper/CollectionUtils$Partition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Lcom/sec/internal/helper/CollectionUtils$Partition<",
            "TT;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/sec/internal/helper/CollectionUtils$Partition;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/helper/CollectionUtils$Partition;-><init>(Ljava/util/List;I)V

    return-object v0
.end method
