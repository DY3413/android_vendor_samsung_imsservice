.class public final synthetic Lcom/sec/internal/ims/settings/GlobalSettingsRepo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;->cleanUp()V

    return-void
.end method
