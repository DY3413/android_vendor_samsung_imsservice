.class public final Lokhttp3/HttpUrl$Builder$Companion;
.super Ljava/lang/Object;
.source "HttpUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$parsePort(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->parsePort(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$portColonOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->portColonOffset(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$schemeDelimiterOffset(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$slashCount(Lokhttp3/HttpUrl$Builder$Companion;Ljava/lang/String;II)I
    .registers 4

    .line 1483
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/HttpUrl$Builder$Companion;->slashCount(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private final parsePort(Ljava/lang/String;II)I
    .registers 16

    const/4 p0, -0x1

    .line 1546
    :try_start_1
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf8

    const/4 v11, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v11}, Lokhttp3/HttpUrl$Companion;->canonicalize$okhttp$default(Lokhttp3/HttpUrl$Companion;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1547
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_18} :catch_24

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-gt p3, p1, :cond_21

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_21

    move p2, p3

    :cond_21
    if-eqz p2, :cond_24

    move p0, p1

    :catch_24
    :cond_24
    return p0
.end method

.method private final portColonOffset(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_1f

    .line 1530
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5b

    if-ne p0, v0, :cond_17

    :cond_a
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_1c

    .line 1533
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5d

    if-ne p0, v0, :cond_a

    goto :goto_1c

    :cond_17
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_1c

    return p2

    :cond_1c
    :goto_1c
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1f
    return p3
.end method

.method private final schemeDelimiterOffset(Ljava/lang/String;II)I
    .registers 12

    sub-int p0, p3, p2

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ge p0, v0, :cond_7

    return v1

    .line 1493
    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x61

    .line 1494
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    const/16 v3, 0x41

    if-ltz v2, :cond_1d

    const/16 v2, 0x7a

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-lez v2, :cond_2d

    :cond_1d
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-ltz v2, :cond_7f

    const/16 v2, 0x5a

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    if-lez p0, :cond_2d

    goto/16 :goto_7f

    :cond_2d
    const/4 p0, 0x1

    add-int/2addr p2, p0

    :goto_2f
    if-ge p2, p3, :cond_7f

    add-int/lit8 v2, p2, 0x1

    .line 1497
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    if-gt v0, v4, :cond_40

    const/16 v6, 0x7b

    if-ge v4, v6, :cond_40

    move v6, p0

    goto :goto_41

    :cond_40
    move v6, v5

    :goto_41
    if-eqz v6, :cond_45

    :goto_43
    move v6, p0

    goto :goto_4d

    :cond_45
    if-gt v3, v4, :cond_4c

    const/16 v6, 0x5b

    if-ge v4, v6, :cond_4c

    goto :goto_43

    :cond_4c
    move v6, v5

    :goto_4d
    const/16 v7, 0x3a

    if-eqz v6, :cond_53

    :goto_51
    move v6, p0

    goto :goto_5b

    :cond_53
    const/16 v6, 0x30

    if-gt v6, v4, :cond_5a

    if-ge v4, v7, :cond_5a

    goto :goto_51

    :cond_5a
    move v6, v5

    :goto_5b
    if-eqz v6, :cond_5f

    :goto_5d
    move v6, p0

    goto :goto_65

    :cond_5f
    const/16 v6, 0x2b

    if-ne v4, v6, :cond_64

    goto :goto_5d

    :cond_64
    move v6, v5

    :goto_65
    if-eqz v6, :cond_69

    :goto_67
    move v6, p0

    goto :goto_6f

    :cond_69
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_6e

    goto :goto_67

    :cond_6e
    move v6, v5

    :goto_6f
    if-eqz v6, :cond_73

    :goto_71
    move v5, p0

    goto :goto_78

    :cond_73
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_78

    goto :goto_71

    :cond_78
    :goto_78
    if-eqz v5, :cond_7c

    move p2, v2

    goto :goto_2f

    :cond_7c
    if-ne v4, v7, :cond_7f

    move v1, p2

    :cond_7f
    :goto_7f
    return v1
.end method

.method private final slashCount(Ljava/lang/String;II)I
    .registers 6

    const/4 p0, 0x0

    :goto_1
    if-ge p2, p3, :cond_15

    add-int/lit8 v0, p2, 0x1

    .line 1516
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x5c

    if-eq p2, v1, :cond_11

    const/16 v1, 0x2f

    if-ne p2, v1, :cond_15

    :cond_11
    add-int/lit8 p0, p0, 0x1

    move p2, v0

    goto :goto_1

    :cond_15
    return p0
.end method
