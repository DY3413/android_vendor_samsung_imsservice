.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;
.super Lcom/sec/ims/IEpdgListener$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgListenerCallback"
.end annotation


# instance fields
.field mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V
    .locals 0

    .line 871
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/IEpdgListener$Stub;-><init>()V

    const/4 p1, 0x0

    .line 873
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->mToken:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 4

    .line 876
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 880
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v3}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgAvailable(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)[Z

    move-result-object v3

    aput-boolean v2, v3, p1

    .line 881
    iget-object v1, v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->mListener:Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v1, p1, v2, p3}, Lcom/samsung/android/ims/ISemEpdgListener;->onEpdgAvailable(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 883
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onEpdgDeregister(I)V
    .locals 0

    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

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

    check-cast v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;

    .line 894
    :try_start_0
    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->mListener:Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/ims/ISemEpdgListener;->onHandoverResult(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 896
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

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

    check-cast v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;

    .line 913
    :try_start_0
    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->mListener:Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/ims/ISemEpdgListener;->onIpsecConnection(ILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 915
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

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

    check-cast v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;

    .line 926
    :try_start_0
    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->mListener:Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ims/ISemEpdgListener;->onIpsecDisconnection(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 928
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .locals 0

    return-void
.end method

.method public onEpdgReleaseCall(I)V
    .locals 0

    return-void
.end method

.method public onEpdgShowPopup(II)V
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 942
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

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

    check-cast v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;

    .line 944
    :try_start_0
    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->mListener:Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ims/ISemEpdgListener;->onEpdgShowPopup(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 946
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
