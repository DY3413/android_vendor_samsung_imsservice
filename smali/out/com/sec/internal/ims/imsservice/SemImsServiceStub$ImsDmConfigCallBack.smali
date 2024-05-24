.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;
.super Lcom/sec/ims/IImsDmConfigListener$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsDmConfigCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V
    .registers 2

    .line 679
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/IImsDmConfigListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V

    return-void
.end method


# virtual methods
.method public onChangeDmValue(Ljava/lang/String;Z)V
    .registers 5

    .line 682
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmDmConfigListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 684
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_c
    if-lez v0, :cond_1f

    add-int/lit8 v0, v0, -0x1

    .line 688
    :try_start_10
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemImsDmConfigListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/ims/SemImsDmConfigListener;->onChangeDmValue(Ljava/lang/String;Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_c

    :catch_1a
    move-exception v1

    .line 690
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c

    .line 693
    :cond_1f
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_22
    return-void
.end method
