.class public final synthetic Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/sec/internal/ims/settings/DeviceConfigManager;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->$r8$lambda$ToZTK_PkBLan-RO8ExxbPGuq4aI(Lcom/sec/internal/ims/settings/DeviceConfigManager;)V

    return-void
.end method
