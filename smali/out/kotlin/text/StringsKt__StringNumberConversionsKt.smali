.class Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "StringNumberConversions.kt"


# direct methods
.method public static toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 57
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 12
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    .line 77
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    const v5, -0x7fffffff

    if-gez v4, :cond_33

    const/4 v4, 0x1

    if-ne v0, v4, :cond_24

    return-object v1

    :cond_24
    const/16 v6, 0x2d

    if-ne v3, v6, :cond_2c

    const/high16 v5, -0x80000000

    move v3, v4

    goto :goto_35

    :cond_2c
    const/16 v6, 0x2b

    if-ne v3, v6, :cond_32

    move v3, v2

    goto :goto_35

    :cond_32
    return-object v1

    :cond_33
    move v3, v2

    move v4, v3

    :goto_35
    const v6, -0x38e38e3

    move v7, v6

    :goto_39
    if-ge v4, v0, :cond_59

    .line 102
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, p1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v8

    if-gez v8, :cond_46

    return-object v1

    :cond_46
    if-ge v2, v7, :cond_4f

    if-ne v7, v6, :cond_4e

    .line 107
    div-int v7, v5, p1

    if-ge v2, v7, :cond_4f

    :cond_4e
    return-object v1

    :cond_4f
    mul-int/2addr v2, p1

    add-int v9, v5, v8

    if-ge v2, v9, :cond_55

    return-object v1

    :cond_55
    sub-int/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_59
    if-eqz v3, :cond_60

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_65

    :cond_60
    neg-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_65
    return-object p0
.end method
