.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessType"
.end annotation


# static fields
.field public static final LTE_4G:I = 0x1

.field public static final NG_RAN_5G:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
