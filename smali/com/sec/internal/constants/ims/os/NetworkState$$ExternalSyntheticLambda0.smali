.class public final synthetic Lcom/sec/internal/constants/ims/os/NetworkState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/telephony/CellInfo;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->$r8$lambda$mmVTc2rywU8FJRk9eAmWrLqz7E8(Landroid/telephony/CellInfo;)Z

    move-result p0

    return p0
.end method
