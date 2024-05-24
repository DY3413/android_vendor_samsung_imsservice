.class public Lcom/sec/internal/constants/ims/SipErrorSprint;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorSprint.java"


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

    const/4 v0, 0x7

    if-eq p1, v0, :cond_8

    .line 23
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0

    .line 21
    :cond_8
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    return-object p0
.end method
