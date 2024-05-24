.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$Protocol;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Protocol"
.end annotation


# static fields
.field public static final SENDER_PD:Ljava/lang/String; = "standard"

.field public static final SENDER_SD:Ljava/lang/String; = "oasis"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
