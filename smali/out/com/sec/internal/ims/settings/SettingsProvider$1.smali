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
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 266
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.carrier.extra.CARRIER_STATE"

    .line 267
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.carrier.extra.CARRIER_GROUP_CHANGED"

    const/4 v2, 0x0

    .line 268
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    .line 269
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 270
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getCarrierId(IZ)I

    move-result v2

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent : action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , carrierState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", currentCarrierId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", GroupChanged : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ImsSettingsProvider"

    invoke-static {v4, v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_168

    .line 276
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/settings/SettingsProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p1

    const-string v1, "UPDATED"

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x4

    if-eqz v1, :cond_7e

    .line 279
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {p0, p1, v3, v2}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mdoCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/SettingsProvider;Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V

    .line 280
    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    .line 281
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p0, p1, :cond_168

    .line 282
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->onCarrierUpdate(Landroid/content/Intent;)V

    goto/16 :goto_168

    :cond_7e
    const-string v1, "LOADED"

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, -0x1

    if-eqz v1, :cond_149

    if-eq v2, v6, :cond_168

    .line 290
    invoke-static {v3}, Lcom/sec/internal/helper/OmcCode;->getCurrentNWCode(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v3}, Lcom/sec/internal/helper/OmcCode;->getLastOmcNwCode(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 293
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_9b
    invoke-static {v3, v0}, Lcom/sec/internal/helper/OmcCode;->saveLastOmcNwCode(ILjava/lang/String;)V

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check omcnw changed : currOmcNwCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " / lastOmcNwCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    .line 301
    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->resetLoaded()V

    .line 302
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mresetStoredConfig(Lcom/sec/internal/ims/settings/SettingsProvider;Z)V

    .line 303
    iget-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/settings/SettingsProvider;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.sec.ims.settings/mnomap_updated"

    .line 304
    invoke-static {p2, v3}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_143

    .line 309
    :cond_de
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {v0, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mgetSavedCarrierId(Lcom/sec/internal/ims/settings/SettingsProvider;I)I

    move-result v0

    .line 310
    iget-object v1, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {v1, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mgetSavedSwVersion(Lcom/sec/internal/ims/settings/SettingsProvider;I)Ljava/lang/String;

    move-result-object v1

    .line 311
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 313
    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->isCarrierFeatureChanged(I)Z

    move-result v7

    .line 314
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saved CarrierId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Current Carrier Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " / saved Sw Ver : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " current Sw Ver : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " / isCarrierFeatureChanged : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_12f

    .line 319
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    if-eqz v7, :cond_143

    .line 321
    :cond_12f
    iget-object v0, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {v0, p1, v3, v2}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mdoCarrierFeatureUpdate(Lcom/sec/internal/ims/settings/SettingsProvider;Lcom/sec/internal/ims/settings/ImsAutoUpdate;II)V

    .line 322
    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->selectResource(I)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 323
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-eq p1, v0, :cond_143

    .line 324
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->onCarrierUpdate(Landroid/content/Intent;)V

    .line 328
    :cond_143
    :goto_143
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {p0, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mupdateOtherVoLTEIconSetting(Lcom/sec/internal/ims/settings/SettingsProvider;I)V

    goto :goto_168

    :cond_149
    const-string p1, "READY"

    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_159

    if-eq v2, v6, :cond_159

    .line 331
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {p0, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mupdateOtherVoLTEIconSetting(Lcom/sec/internal/ims/settings/SettingsProvider;I)V

    goto :goto_168

    :cond_159
    const-string p1, "ABSENT"

    .line 332
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_163

    if-ne v2, v6, :cond_168

    .line 333
    :cond_163
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider$1;->this$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    invoke-static {p0, v3}, Lcom/sec/internal/ims/settings/SettingsProvider;->-$$Nest$mupdateOtherVoLTEIconSetting(Lcom/sec/internal/ims/settings/SettingsProvider;I)V

    :cond_168
    :goto_168
    return-void
.end method
