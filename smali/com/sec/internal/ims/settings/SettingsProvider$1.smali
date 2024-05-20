.class Lcom/sec/internal/ims/settings/SettingsProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/settings/SettingsProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/settings/SettingsProvider;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.carrier.extra.CARRIER_STATE"

    .line 268
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 270
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getCarrierId(IZ)I

    move-result v2

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent : action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsSettingsProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 274
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/settings/SettingsProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p1

    const-string v3, "UPDATED"

    .line 276
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x4

    if-eqz v3, :cond_0

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {p0, p1, v1, v2}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mdoCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/SettingsProvider;Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V

    .line 278
    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 279
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p0, p1, :cond_2

    .line 280
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->onCarrierUpdate(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v3, "LOADED"

    .line 282
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mgetSavedCarrierId(Lcom/sec/internal/ims/settings/SettingsProvider;I)I

    move-result v0

    .line 285
    iget-object v3, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mgetSavedSwVersion(Lcom/sec/internal/ims/settings/SettingsProvider;I)Ljava/lang/String;

    move-result-object v3

    .line 286
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 288
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isCarrierFeatureChanged(I)Z

    move-result v7

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saved CarrierId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Current Carrier Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " / saved Sw Ver : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " current Sw Ver : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " / isCarrierFeatureChanged : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_1

    .line 294
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_2

    .line 296
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {p0, p1, v1, v2}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mdoCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/SettingsProvider;Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V

    .line 297
    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 298
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p0, p1, :cond_2

    .line 299
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->onCarrierUpdate(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
