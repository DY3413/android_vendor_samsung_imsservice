.class public final synthetic Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/constants/ims/SipMsg;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/constants/ims/SipMsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/constants/ims/SipMsg;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/ImsSipDelegate$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/constants/ims/SipMsg;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/internal/google/ImsSipDelegate;->$r8$lambda$II8pgPcsQKuA0A8_xeX78u4Vedg(Lcom/sec/internal/constants/ims/SipMsg;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
