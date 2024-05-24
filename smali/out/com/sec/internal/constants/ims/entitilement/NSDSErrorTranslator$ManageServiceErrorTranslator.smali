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
    .registers 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate(II)I
    .registers 12

    const/16 v0, 0x5dc

    const/16 v1, 0x418

    const-string v2, "could not translate nsds error code:"

    const/16 v3, 0x457

    const/16 v4, 0x405

    const/16 v5, 0x400

    const/16 v6, 0x3ec

    const-string v7, "ManageServiceErrorTranslator"

    if-eqz p0, :cond_bb

    const/4 v8, 0x1

    const/16 v9, 0x41d

    if-eq p0, v8, :cond_99

    const/4 v1, 0x2

    const/16 v8, 0x6a4

    if-eq p0, v1, :cond_74

    const/4 v1, 0x5

    if-eq p0, v1, :cond_56

    const/4 v0, 0x7

    if-eq p0, v0, :cond_38

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not translate operation:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e3

    :cond_38
    if-eq p1, v6, :cond_97

    if-eq p1, v5, :cond_97

    if-eq p1, v4, :cond_97

    if-eq p1, v9, :cond_97

    if-eq p1, v3, :cond_97

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e3

    :cond_56
    if-eq p1, v6, :cond_ed

    if-eq p1, v5, :cond_ed

    if-eq p1, v4, :cond_ed

    if-eq p1, v9, :cond_ed

    if-eq p1, v3, :cond_ed

    .line 282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e3

    :cond_74
    if-eq p1, v6, :cond_97

    if-eq p1, v5, :cond_97

    if-eq p1, v4, :cond_94

    if-eq p1, v9, :cond_91

    if-eq p1, v3, :cond_97

    .line 264
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    :cond_91
    const/16 v0, 0x6a6

    goto :goto_ed

    :cond_94
    const/16 v0, 0x6a5

    goto :goto_ed

    :cond_97
    move v0, v8

    goto :goto_ed

    :cond_99
    if-eq p1, v6, :cond_b8

    if-eq p1, v5, :cond_b8

    if-eq p1, v4, :cond_b8

    if-eq p1, v1, :cond_b8

    if-eq p1, v9, :cond_b8

    if-eq p1, v3, :cond_b8

    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    :cond_b8
    const/16 v0, 0x640

    goto :goto_ed

    :cond_bb
    if-eq p1, v6, :cond_ed

    if-eq p1, v5, :cond_eb

    if-eq p1, v4, :cond_ed

    const/16 p0, 0x414

    if-eq p1, p0, :cond_e8

    if-eq p1, v1, :cond_e5

    if-eq p1, v3, :cond_ed

    const/16 p0, 0x410

    if-eq p1, p0, :cond_ed

    const/16 p0, 0x411

    if-eq p1, p0, :cond_ed

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e3
    const/4 v0, -0x1

    goto :goto_ed

    :cond_e5
    const/16 v0, 0x5df

    goto :goto_ed

    :cond_e8
    const/16 v0, 0x5de

    goto :goto_ed

    :cond_eb
    const/16 v0, 0x5dd

    :cond_ed
    :goto_ed
    return v0
.end method
