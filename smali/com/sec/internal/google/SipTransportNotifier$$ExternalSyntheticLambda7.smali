.class public final synthetic Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/google/SipTransportNotifier$$ExternalSyntheticLambda7;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/sec/internal/google/SipTransportNotifier;->$r8$lambda$6gWjYML4ebFsa8UHIMcmX4euzck(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
