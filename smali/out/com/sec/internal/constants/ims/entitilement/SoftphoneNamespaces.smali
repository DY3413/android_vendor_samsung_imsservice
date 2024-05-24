.class public Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;
.super Ljava/lang/Object;
.source "SoftphoneNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$Intent;,
        Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneCallHandling;,
        Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneAlarm;,
        Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneEvents;,
        Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneSharedPref;,
        Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneModels;,
        Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneSettings;
    }
.end annotation


# static fields
.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final mTimeoutType1:[J

.field public static final mTimeoutType2:[J

.field public static final mTimeoutType3:[J

.field public static final mTimeoutType4:[J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v1, v0, [J

    .line 286
    fill-array-data v1, :array_1e

    sput-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    new-array v1, v0, [J

    .line 290
    fill-array-data v1, :array_2e

    sput-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    new-array v1, v0, [J

    .line 294
    fill-array-data v1, :array_3e

    sput-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType3:[J

    new-array v0, v0, [J

    .line 298
    fill-array-data v0, :array_4e

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    return-void

    :array_1e
    .array-data 8
        0x7d0
        0x1388
        0x4e20
    .end array-data

    :array_2e
    .array-data 8
        0xbb8
        0x1b58
        0x61a8
    .end array-data

    :array_3e
    .array-data 8
        0x1b58
        0x3a98
        0x88b8
    .end array-data

    :array_4e
    .array-data 8
        0x1388
        0x3a98
        0xafc8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
