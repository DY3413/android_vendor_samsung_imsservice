.class Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$ManageServiceErrorTranslator;
.super Ljava/lang/Object;
.source "NSDSErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManageServiceErrorTranslator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate(II)I
    .locals 11

    const/16 v0, 0x6a4

    const/16 v1, 0x5dc

    const/16 v2, 0x418

    const-string v3, "could not translate nsds error code:"

    const/16 v4, 0x457

    const/16 v5, 0x405

    const/16 v6, 0x400

    const/16 v7, 0x3ec

    const-string v8, "ManageServiceErrorTranslator"

    if-eqz p0, :cond_7

    const/4 v9, 0x1

    const/16 v10, 0x41d

    if-eq p0, v9, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not translate operation:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    if-eq p1, v7, :cond_c

    if-eq p1, v6, :cond_c

    if-eq p1, v5, :cond_c

    if-eq p1, v10, :cond_c

    if-eq p1, v4, :cond_c

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    if-eq p1, v7, :cond_b

    if-eq p1, v6, :cond_b

    if-eq p1, v5, :cond_b

    if-eq p1, v10, :cond_b

    if-eq p1, v4, :cond_b

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    if-eq p1, v7, :cond_c

    if-eq p1, v6, :cond_c

    if-eq p1, v5, :cond_4

    if-eq p1, v10, :cond_3

    if-eq p1, v4, :cond_c

    .line 264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v0, 0x6a6

    goto :goto_1

    :cond_4
    const/16 v0, 0x6a5

    goto :goto_1

    :cond_5
    if-eq p1, v7, :cond_6

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_6

    if-eq p1, v2, :cond_6

    if-eq p1, v10, :cond_6

    if-eq p1, v4, :cond_6

    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/16 v0, 0x640

    goto :goto_1

    :cond_7
    if-eq p1, v7, :cond_b

    if-eq p1, v6, :cond_a

    if-eq p1, v5, :cond_b

    const/16 p0, 0x414

    if-eq p1, p0, :cond_9

    if-eq p1, v2, :cond_8

    if-eq p1, v4, :cond_b

    const/16 p0, 0x410

    if-eq p1, p0, :cond_b

    const/16 p0, 0x411

    if-eq p1, p0, :cond_b

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :cond_8
    const/16 v0, 0x5df

    goto :goto_1

    :cond_9
    const/16 v0, 0x5de

    goto :goto_1

    :cond_a
    const/16 v0, 0x5dd

    goto :goto_1

    :cond_b
    move v0, v1

    :cond_c
    :goto_1
    return v0
.end method
