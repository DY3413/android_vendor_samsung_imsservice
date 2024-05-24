.class public Lcom/sec/internal/constants/ims/SipErrorKdi;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorKdi.java"


# static fields
.field public static final MULTIPARTY_CALL_IS_ESTABLISHED:Lcom/sec/ims/util/SipError;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x1e6

    const-string v2, "Already On Two Calls"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorKdi;->MULTIPARTY_CALL_IS_ESTABLISHED:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    .line 22
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->DECLINE:Lcom/sec/ims/util/SipError;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/SipErrorBase;->mDefaultRejectReason:Lcom/sec/ims/util/SipError;

    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .registers 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/16 v0, 0xd

    if-eq p1, v0, :cond_c

    .line 33
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0

    .line 29
    :cond_c
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVER_INTERNAL_ERROR:Lcom/sec/ims/util/SipError;

    return-object p0

    .line 31
    :cond_f
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->DECLINE:Lcom/sec/ims/util/SipError;

    return-object p0
.end method
