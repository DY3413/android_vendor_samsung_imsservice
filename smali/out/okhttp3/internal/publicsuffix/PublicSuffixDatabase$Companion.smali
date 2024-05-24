.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;
    .registers 4

    .line 239
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->binarySearch([B[[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final binarySearch([B[[BI)Ljava/lang/String;
    .registers 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 258
    array-length v2, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_94

    add-int v5, v4, v2

    .line 261
    div-int/lit8 v5, v5, 0x2

    :goto_c
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_18

    .line 264
    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_18

    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    :cond_18
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    move v9, v8

    :goto_1c
    add-int v10, v5, v9

    .line 271
    aget-byte v11, v0, v10

    if-eq v11, v6, :cond_25

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_25
    sub-int v6, v10, v5

    move/from16 v11, p3

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2c
    const/16 v14, 0xff

    if-eqz v9, :cond_34

    const/16 v9, 0x2e

    const/4 v15, 0x0

    goto :goto_41

    .line 290
    :cond_34
    aget-object v15, v1, v11

    aget-byte v15, v15, v12

    invoke-static {v15, v14}, Lokhttp3/internal/Util;->and(BI)I

    move-result v15

    move/from16 v17, v15

    move v15, v9

    move/from16 v9, v17

    :goto_41
    add-int v16, v5, v13

    .line 293
    aget-byte v3, v0, v16

    invoke-static {v3, v14}, Lokhttp3/internal/Util;->and(BI)I

    move-result v3

    sub-int/2addr v9, v3

    if-eqz v9, :cond_4d

    goto :goto_5d

    :cond_4d
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v13, v6, :cond_54

    goto :goto_5d

    .line 302
    :cond_54
    aget-object v3, v1, v11

    array-length v3, v3

    if-ne v3, v12, :cond_92

    .line 305
    array-length v3, v1

    sub-int/2addr v3, v8

    if-ne v11, v3, :cond_8d

    :goto_5d
    if-gez v9, :cond_62

    :goto_5f
    add-int/lit8 v2, v5, -0x1

    goto :goto_6

    :cond_62
    if-lez v9, :cond_67

    :goto_64
    add-int/lit8 v4, v10, 0x1

    goto :goto_6

    :cond_67
    sub-int v3, v6, v13

    .line 322
    aget-object v7, v1, v11

    array-length v7, v7

    sub-int/2addr v7, v12

    add-int/lit8 v11, v11, 0x1

    .line 323
    array-length v8, v1

    :goto_70
    if-ge v11, v8, :cond_7a

    add-int/lit8 v9, v11, 0x1

    .line 324
    aget-object v11, v1, v11

    array-length v11, v11

    add-int/2addr v7, v11

    move v11, v9

    goto :goto_70

    :cond_7a
    if-ge v7, v3, :cond_7d

    goto :goto_5f

    :cond_7d
    if-le v7, v3, :cond_80

    goto :goto_64

    .line 333
    :cond_80
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v5, v6, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_95

    :cond_8d
    add-int/lit8 v11, v11, 0x1

    move v12, v7

    move v9, v8

    goto :goto_2c

    :cond_92
    move v9, v15

    goto :goto_2c

    :cond_94
    const/4 v2, 0x0

    :goto_95
    return-object v2
.end method


# virtual methods
.method public final get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 250
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object p0

    return-object p0
.end method
