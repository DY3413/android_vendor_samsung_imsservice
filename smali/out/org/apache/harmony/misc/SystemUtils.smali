.class public Lorg/apache/harmony/misc/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field private static os:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public static getOS()I
    .registers 3

    .line 45
    sget v0, Lorg/apache/harmony/misc/SystemUtils;->os:I

    if-nez v0, :cond_2c

    const-string v0, "os.name"

    .line 46
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "win"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    .line 48
    sput v0, Lorg/apache/harmony/misc/SystemUtils;->os:I

    goto :goto_2c

    :cond_1d
    const-string v1, "lin"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x2

    .line 51
    sput v0, Lorg/apache/harmony/misc/SystemUtils;->os:I

    goto :goto_2c

    :cond_29
    const/4 v0, -0x1

    .line 53
    sput v0, Lorg/apache/harmony/misc/SystemUtils;->os:I

    .line 56
    :cond_2c
    :goto_2c
    sget v0, Lorg/apache/harmony/misc/SystemUtils;->os:I

    return v0
.end method
