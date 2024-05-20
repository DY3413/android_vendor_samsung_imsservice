.class Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;
.super Landroid/telephony/PhoneStateListener;
.source "CapabilityDiscoveryModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneStateListenerForCapability"
.end annotation


# instance fields
.field mNetworkType:I

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method public static synthetic $r8$lambda$FUk6xy4ZLOmrcyugupAKNeMImmA(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->lambda$onDataConnectionStateChanged$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$sDy3S2mpBd56_dPP19SPvXPqRvo(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->lambda$fetchCapabilities$1(I)V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 0

    .line 1275
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 p1, 0x0

    .line 1276
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->mNetworkType:I

    return-void
.end method

.method private hasCshFeature(I)Z
    .locals 2

    .line 1314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmOwnList(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmOwnList(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Ljava/util/Map;

    move-result-object p0

    .line 1315
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/options/Capabilities;

    sget p1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {p0, p1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$fetchCapabilities$1(I)V
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 1321
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setOwnCapabilities(IZ)V

    return-void
.end method

.method private synthetic lambda$onDataConnectionStateChanged$0(II)V
    .locals 2

    .line 1303
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->mNetworkType:I

    if-eq p1, v0, :cond_0

    .line 1304
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->mNetworkType:I

    .line 1305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->hasCshFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged(): state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", networkType="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CapabilityDiscModule"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->fetchCapabilities(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method fetchCapabilities(I)V
    .locals 2

    .line 1319
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 1283
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fputmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Z)V

    .line 1285
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$000(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->hasCshFeature(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1289
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->fetchCapabilities(I)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 1290
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fgetmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 1291
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->-$$Nest$fputmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Z)V

    .line 1292
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->hasCshFeature(I)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    .line 1296
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->fetchCapabilities(I)V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$PhoneStateListenerForCapability;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
