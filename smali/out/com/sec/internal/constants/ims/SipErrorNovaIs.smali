.class public Lcom/sec/internal/constants/ims/SipErrorNovaIs;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorNovaIs.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .registers 3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_9

    .line 12
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0

    .line 10
    :cond_9
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->REQUEST_TIMEOUT:Lcom/sec/ims/util/SipError;

    return-object p0
.end method
