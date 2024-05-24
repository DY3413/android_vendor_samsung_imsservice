.class public Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$McsNotificationChannels;
.super Ljava/lang/Object;
.source "OMAApiRequestParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McsNotificationChannels"
.end annotation


# instance fields
.field public notificationChannel:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
