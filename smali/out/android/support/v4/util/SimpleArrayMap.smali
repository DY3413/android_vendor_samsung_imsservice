.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 237
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    return-void
.end method

.method private allocArrays(I)V
    .registers 7

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2c

    .line 165
    const-class v0, Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 166
    :try_start_a
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_27

    .line 168
    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 169
    aget-object p1, v4, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 170
    aget-object p1, v4, v3

    check-cast p1, [I

    iput-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 171
    aput-object v1, v4, v3

    aput-object v1, v4, v2

    .line 172
    sget p0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    sub-int/2addr p0, v3

    sput p0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 175
    monitor-exit v0

    return-void

    .line 177
    :cond_27
    monitor-exit v0

    goto :goto_54

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw p0

    :cond_2c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_54

    .line 179
    const-class v0, Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 180
    :try_start_32
    sget-object v4, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v4, :cond_4f

    .line 182
    iput-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 183
    aget-object p1, v4, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 184
    aget-object p1, v4, v3

    check-cast p1, [I

    iput-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 185
    aput-object v1, v4, v3

    aput-object v1, v4, v2

    .line 186
    sget p0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    sub-int/2addr p0, v3

    sput p0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 189
    monitor-exit v0

    return-void

    .line 191
    :cond_4f
    monitor-exit v0

    goto :goto_54

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_51

    throw p0

    .line 194
    :cond_54
    :goto_54
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    shl-int/2addr p1, v3

    .line 195
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    return-void
.end method

.method private static binarySearchHashes([III)I
    .registers 3

    .line 76
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 79
    :catch_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 10

    .line 200
    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v0, v1, :cond_2e

    .line 201
    const-class v0, Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 202
    :try_start_e
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v5, :cond_29

    .line 203
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 204
    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_1b
    if-lt p0, v3, :cond_22

    .line 206
    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1b

    .line 208
    :cond_22
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 209
    sget p0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    add-int/2addr p0, v6

    sput p0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    .line 213
    :cond_29
    monitor-exit v0

    goto :goto_55

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw p0

    .line 214
    :cond_2e
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_55

    .line 215
    const-class v0, Landroid/support/v4/util/ArrayMap;

    monitor-enter v0

    .line 216
    :try_start_35
    sget v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    if-ge v1, v5, :cond_50

    .line 217
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    aput-object v1, p1, v4

    .line 218
    aput-object p0, p1, v6

    shl-int/lit8 p0, p2, 0x1

    sub-int/2addr p0, v6

    :goto_42
    if-lt p0, v3, :cond_49

    .line 220
    aput-object v2, p1, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_42

    .line 222
    :cond_49
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 223
    sget p0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    add-int/2addr p0, v6

    sput p0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    .line 227
    :cond_50
    monitor-exit v0

    goto :goto_55

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_52

    throw p0

    :cond_55
    :goto_55
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 268
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez v0, :cond_16

    .line 269
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 270
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 272
    sget-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 273
    sget-object v3, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 274
    iput v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 275
    invoke-static {v1, v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 277
    :cond_16
    iget p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-gtz p0, :cond_1b

    return-void

    .line 278
    :cond_1b
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 310
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    .line 350
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public ensureCapacity(I)V
    .registers 7

    .line 287
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    .line 288
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v2, v1

    if-ge v2, p1, :cond_20

    .line 290
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 291
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 292
    iget p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-lez p1, :cond_1d

    .line 293
    iget-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v3, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    :cond_1d
    invoke-static {v1, v2, v0}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 298
    :cond_20
    iget p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ne p0, v0, :cond_25

    return-void

    .line 299
    :cond_25
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 592
    :cond_4
    instance-of v1, p1, Landroid/support/v4/util/SimpleArrayMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    .line 593
    check-cast p1, Landroid/support/v4/util/SimpleArrayMap;

    .line 594
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    move v1, v2

    .line 599
    :goto_17
    :try_start_17
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v1, v3, :cond_3c

    .line 600
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 601
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 602
    invoke-virtual {p1, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_32

    if-nez v5, :cond_31

    .line 604
    invoke-virtual {p1, v3}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    :cond_31
    return v2

    .line 607
    :cond_32
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_36} :catch_3d
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_36} :catch_3d

    if-nez v3, :cond_39

    return v2

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_3c
    return v0

    :catch_3d
    return v2

    .line 617
    :cond_3e
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_76

    .line 618
    check-cast p1, Ljava/util/Map;

    .line 619
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_4f

    return v2

    :cond_4f
    move v1, v2

    .line 624
    :goto_50
    :try_start_50
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v1, v3, :cond_75

    .line 625
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 626
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 627
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_6b

    if-nez v5, :cond_6a

    .line 629
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    :cond_6a
    return v2

    .line 632
    :cond_6b
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6f
    .catch Ljava/lang/NullPointerException; {:try_start_50 .. :try_end_6f} :catch_76
    .catch Ljava/lang/ClassCastException; {:try_start_50 .. :try_end_6f} :catch_76

    if-nez v3, :cond_72

    return v2

    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_75
    return v0

    :catch_76
    :cond_76
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    .line 361
    iget-object p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public hashCode()I
    .registers 9

    .line 651
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 652
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 654
    iget p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    :goto_a
    if-ge v4, p0, :cond_1f

    .line 655
    aget-object v6, v1, v3

    .line 656
    aget v7, v0, v4

    if-nez v6, :cond_14

    move v6, v2

    goto :goto_18

    :cond_14
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_18
    xor-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_a

    :cond_1f
    return v5
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 8

    .line 87
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 94
    :cond_6
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v1, v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v1

    if-gez v1, :cond_f

    return v1

    .line 102
    :cond_f
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v2, v1, 0x1

    :goto_1e
    if-ge v2, v0, :cond_36

    .line 108
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_36

    .line 109
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    return v2

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_36
    add-int/lit8 v1, v1, -0x1

    :goto_38
    if-ltz v1, :cond_50

    .line 113
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_50

    .line 114
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    return v1

    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_50
    not-int p0, v2

    return p0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    .line 320
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result p0

    goto :goto_f

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    :goto_f
    return p0
.end method

.method indexOfNull()I
    .registers 6

    .line 125
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 132
    :cond_6
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->binarySearchHashes([III)I

    move-result v1

    if-gez v1, :cond_10

    return v1

    .line 140
    :cond_10
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    if-nez v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v2, v1, 0x1

    :goto_1b
    if-ge v2, v0, :cond_2f

    .line 146
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v3, v3, v2

    if-nez v3, :cond_2f

    .line 147
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2c

    return v2

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    :goto_31
    if-ltz v1, :cond_45

    .line 151
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    aget v0, v0, v1

    if-nez v0, :cond_45

    .line 152
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    aget-object v0, v0, v3

    if-nez v0, :cond_42

    return v1

    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    :cond_45
    not-int p0, v2

    return p0
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 6

    .line 324
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v0, v0, 0x2

    .line 325
    iget-object p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez p1, :cond_16

    move p1, v1

    :goto_a
    if-ge p1, v0, :cond_27

    .line 328
    aget-object v2, p0, p1

    if-nez v2, :cond_13

    shr-int/lit8 p0, p1, 0x1

    return p0

    :cond_13
    add-int/lit8 p1, p1, 0x2

    goto :goto_a

    :cond_16
    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_27

    .line 334
    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    shr-int/lit8 p0, v2, 0x1

    return p0

    :cond_24
    add-int/lit8 v2, v2, 0x2

    goto :goto_17

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 399
    iget p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-gtz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 370
    iget-object p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 411
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v1, 0x0

    if-nez p1, :cond_b

    .line 416
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    move-result v2

    move v3, v1

    goto :goto_16

    .line 418
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 419
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_16
    if-ltz v2, :cond_23

    shl-int/lit8 p1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 423
    iget-object p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, p0, p1

    .line 424
    aput-object p2, p0, p1

    return-object v0

    :cond_23
    not-int v2, v2

    .line 429
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v5, v4

    if-lt v0, v5, :cond_58

    const/16 v5, 0x8

    if-lt v0, v5, :cond_31

    shr-int/lit8 v5, v0, 0x1

    add-int/2addr v5, v0

    goto :goto_36

    :cond_31
    const/4 v6, 0x4

    if-lt v0, v6, :cond_35

    goto :goto_36

    :cond_35
    move v5, v6

    .line 436
    :goto_36
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    .line 437
    invoke-direct {p0, v5}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 439
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ne v0, v5, :cond_52

    .line 443
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v7, v5

    if-lez v7, :cond_4e

    .line 445
    array-length v7, v4

    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 446
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    :cond_4e
    invoke-static {v4, v6, v0}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    goto :goto_58

    .line 440
    :cond_52
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_58
    :goto_58
    if-ge v2, v0, :cond_71

    .line 455
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    shl-int/lit8 v4, v4, 0x1

    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    sub-int/2addr v6, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    :cond_71
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ne v0, v1, :cond_8c

    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v4, v0

    if-ge v2, v4, :cond_8c

    .line 465
    aput v3, v0, v2

    .line 466
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v2, 0x1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 467
    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    .line 468
    iput v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 p0, 0x0

    return-object p0

    .line 461
    :cond_8c
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 501
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    .line 514
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_1c

    .line 519
    iget-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {p1, v0, v3}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 520
    sget-object p1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    .line 521
    sget-object p1, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_79

    :cond_1c
    add-int/lit8 v6, v3, -0x1

    .line 525
    iget-object v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    array-length v8, v7

    const/16 v9, 0x8

    if-le v8, v9, :cond_5e

    array-length v8, v7

    div-int/lit8 v8, v8, 0x3

    if-ge v3, v8, :cond_5e

    if-le v3, v9, :cond_30

    shr-int/lit8 v8, v3, 0x1

    add-int v9, v3, v8

    .line 535
    :cond_30
    invoke-direct {p0, v9}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    .line 537
    iget v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ne v3, v8, :cond_58

    if-lez p1, :cond_43

    .line 543
    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    invoke-static {v7, v4, v8, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_43
    if-ge p1, v6, :cond_78

    add-int/lit8 v4, p1, 0x1

    .line 549
    iget-object v8, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    sub-int v9, v6, p1

    invoke-static {v7, v4, v8, p1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 p1, v4, 0x1

    .line 550
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v9, 0x1

    invoke-static {v0, p1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_78

    .line 538
    :cond_58
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_5e
    if-ge p1, v6, :cond_6e

    add-int/lit8 v0, p1, 0x1

    sub-int v4, v6, p1

    .line 557
    invoke-static {v7, v0, v7, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iget-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/2addr v0, v5

    shl-int/2addr v4, v5

    invoke-static {p1, v0, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    :cond_6e
    iget-object p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v0, v6, 0x1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/2addr v0, v5

    .line 562
    aput-object v1, p1, v0

    :cond_78
    :goto_78
    move v4, v6

    .line 565
    :goto_79
    iget p1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ne v3, p1, :cond_80

    .line 568
    iput v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    return-object v2

    .line 566
    :cond_80
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 390
    iget-object p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, p0, p1

    .line 391
    aput-object p2, p0, p1

    return-object v0
.end method

.method public size()I
    .registers 1

    .line 576
    iget p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 670
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo p0, "{}"

    return-object p0

    .line 674
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 676
    :goto_19
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    if-ge v1, v2, :cond_48

    if-lez v1, :cond_24

    const-string v2, ", "

    .line 678
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_24
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(this Map)"

    if-eq v2, p0, :cond_30

    .line 682
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 684
    :cond_30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_33
    const/16 v2, 0x3d

    .line 686
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {p0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_42

    .line 689
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 691
    :cond_42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_48
    const/16 p0, 0x7d

    .line 694
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 379
    iget-object p0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    return-object p0
.end method