.class public Lcom/sec/internal/omanetapi/nc/data/LongPollingData;
.super Lcom/sec/internal/omanetapi/nc/data/ChannelData;
.source "LongPollingData.java"


# instance fields
.field public channelURL:Ljava/net/URL;

.field public maxNotifications:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/sec/internal/omanetapi/nc/data/ChannelData;-><init>()V

    return-void
.end method
