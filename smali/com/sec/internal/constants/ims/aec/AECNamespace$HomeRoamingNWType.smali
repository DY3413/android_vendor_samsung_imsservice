.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$HomeRoamingNWType;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeRoamingNWType"
.end annotation


# static fields
.field public static final ALL:I = 0x1

.field public static final HOME:I = 0x2

.field public static final ROAMING:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
