.class public final synthetic Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda11;->f$0:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda11;->f$0:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg;->$r8$lambda$KYQmYCzgC2Sv4r2F3Geuh2rmY8U(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Ljava/util/List;)Lcom/sec/internal/constants/ims/SipMsg$Header;

    move-result-object p0

    return-object p0
.end method
