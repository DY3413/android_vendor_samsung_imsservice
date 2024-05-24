.class public final synthetic Lcom/sec/internal/google/SecImsNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/sec/ims/util/NameAddr;

    invoke-static {p1}, Lcom/sec/internal/google/SecImsNotifier;->$r8$lambda$dBUGXr6MXodn8XmjJv5faYPcQ5E(Lcom/sec/ims/util/NameAddr;)Z

    move-result p0

    return p0
.end method
