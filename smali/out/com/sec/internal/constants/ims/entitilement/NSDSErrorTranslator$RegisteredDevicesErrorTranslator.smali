.class Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$RegisteredDevicesErrorTranslator;
.super Ljava/lang/Object;
.source "NSDSErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RegisteredDevicesErrorTranslator"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate(I)I
    .registers 3

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_24

    const/16 v0, 0x405

    if-eq p0, v0, :cond_24

    const/16 v0, 0x457

    if-eq p0, v0, :cond_24

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not translate nsds error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegisteredDevicesErrorTranslator"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    goto :goto_26

    :cond_24
    const/16 p0, 0x7d0

    :goto_26
    return p0
.end method
