.class public final synthetic Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/sec/ims/util/NameAddr;

    invoke-static {p1}, Lcom/sec/internal/google/GoogleImsService;->$r8$lambda$wJB_eIO-c-EgndmY8t5taB_PslY(Lcom/sec/ims/util/NameAddr;)Z

    move-result p0

    return p0
.end method
