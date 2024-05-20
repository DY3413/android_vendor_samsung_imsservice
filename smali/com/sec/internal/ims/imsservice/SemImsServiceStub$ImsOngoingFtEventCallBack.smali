.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;
.super Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsOngoingFtEventCallBack"
.end annotation


# instance fields
.field mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;-><init>()V

    const/4 p1, 0x0

    .line 818
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;->mToken:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V

    return-void
.end method


# virtual methods
.method public onFtStateChanged(Z)V
    .locals 1

    .line 822
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmOngoingFtEventListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;

    .line 824
    :try_start_0
    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemImsFtCallBack;->mListener:Lcom/samsung/android/ims/ft/SemImsFtListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/ims/ft/SemImsFtListener;->onFtStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 826
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
