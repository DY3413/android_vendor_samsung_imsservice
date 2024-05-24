.class Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$ManageConnectivityErrorTranslator;
.super Ljava/lang/Object;
.source "NSDSErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManageConnectivityErrorTranslator"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate(II)I
    .registers 8

    const-string v0, "could not translate nsds error code:"

    const/16 v1, 0x457

    const/16 v2, 0x41e

    const/16 v3, 0x3ec

    const-string v4, "ManageConnectivityErrorTranslator"

    if-eqz p0, :cond_40

    const/4 v5, 0x3

    if-eq p0, v5, :cond_24

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not translate operation:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_24
    if-eq p1, v3, :cond_3d

    if-eq p1, v2, :cond_3d

    if-eq p1, v1, :cond_3d

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    :cond_3d
    const/16 p0, 0x578

    goto :goto_67

    :cond_40
    if-eq p1, v3, :cond_65

    const/16 p0, 0x3fe

    if-eq p1, p0, :cond_65

    const/16 p0, 0x401

    if-eq p1, p0, :cond_65

    if-eq p1, v2, :cond_62

    if-eq p1, v1, :cond_65

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    const/4 p0, -0x1

    goto :goto_67

    :cond_62
    const/16 p0, 0x515

    goto :goto_67

    :cond_65
    const/16 p0, 0x514

    :goto_67
    return p0
.end method
