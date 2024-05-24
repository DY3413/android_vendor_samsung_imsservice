.class public Lcom/sec/internal/constants/ims/SipErrorDcm;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorDcm.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .registers 3

    if-gez p1, :cond_5

    .line 20
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    return-object p0

    :cond_5
    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const/16 v0, 0xc

    if-eq p1, v0, :cond_15

    const/16 v0, 0xe

    if-eq p1, v0, :cond_15

    .line 28
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0

    .line 26
    :cond_15
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    return-object p0
.end method
