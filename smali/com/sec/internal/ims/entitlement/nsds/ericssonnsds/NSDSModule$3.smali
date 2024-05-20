.class Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;
.super Landroid/database/ContentObserver;
.source "NSDSModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Landroid/os/Handler;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 235
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri changed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object p1

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 242
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$sfgetsUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    const/16 v1, 0x47

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mperformOnDeviceReadyIf(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mqueueUpdateDeviceName(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    goto :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$misDeviceReady(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const-string v1, "SimSwapCache is ready"

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mhandleSimSwapEvent(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM swap will be handled after device is ready"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$sfgetsServiceLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetmBaseFlowImpl(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getSimSwapFlow(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISimSwapFlow;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mHandleSimSwapAfterDeviceIsReady:Z

    goto :goto_0

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mperformProceduresOnConfigRefreshComplete(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    .line 267
    :cond_6
    :goto_0
    invoke-interface {p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->shouldChangedUriTriggerNsdsService(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$menableOrDisableNSDSService(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V

    :cond_7
    return-void

    .line 239
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Uri changed: null mnoStrategy or null url"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
