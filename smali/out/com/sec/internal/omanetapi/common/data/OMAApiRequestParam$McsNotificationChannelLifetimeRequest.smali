.class public Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$McsNotificationChannelLifetimeRequest;
.super Ljava/lang/Object;
.source "OMAApiRequestParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McsNotificationChannelLifetimeRequest"
.end annotation


# instance fields
.field public notificationChannelLifetime:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
