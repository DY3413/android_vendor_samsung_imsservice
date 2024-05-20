.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;
.super Lcom/sec/ims/IAutoConfigurationListener$Stub;
.source "SemImsServiceStub.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoConfigCallBack"
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

.field private mPhoneId:I

.field mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemAutoConfigListener;I)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/IAutoConfigurationListener$Stub;-><init>()V

    .line 697
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

    .line 698
    iput p3, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mPhoneId:I

    .line 700
    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/ims/SemAutoConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 744
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mToken:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterAutoConfigurationListener(Ljava/lang/String;I)V

    .line 745
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->reset()V

    return-void
.end method

.method public onAutoConfigurationCompleted(Z)V
    .locals 0

    .line 736
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/ims/SemAutoConfigListener;->onAutoConfigurationCompleted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 738
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onIidTokenNeeded()V
    .locals 0

    .line 727
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

    invoke-interface {p0}, Lcom/samsung/android/ims/SemAutoConfigListener;->onIidTokenNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 729
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMsisdnNumberNeeded()V
    .locals 0

    .line 718
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

    invoke-interface {p0}, Lcom/samsung/android/ims/SemAutoConfigListener;->onMsisdnNumberNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 720
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onVerificationCodeNeeded()V
    .locals 0

    .line 709
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

    invoke-interface {p0}, Lcom/samsung/android/ims/SemAutoConfigListener;->onVerificationCodeNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 711
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected reset()V
    .locals 2

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

    invoke-interface {v0}, Lcom/samsung/android/ims/SemAutoConfigListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
