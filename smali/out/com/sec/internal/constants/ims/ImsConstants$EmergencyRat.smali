.class public Lcom/sec/internal/constants/ims/ImsConstants$EmergencyRat;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmergencyRat"
.end annotation


# static fields
.field public static final IWLAN:Ljava/lang/String; = "VoWIFI"

.field public static final LTE:Ljava/lang/String; = "VoLTE"

.field public static final NR:Ljava/lang/String; = "VoNR"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
