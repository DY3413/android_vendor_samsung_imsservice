.class Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;
.super Ljava/lang/Object;
.source "UtStateMachine.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/PdnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0

    .line 2104
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(ILandroid/net/Network;)V
    .locals 4

    .line 2107
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mPdnType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 2109
    invoke-virtual {p2}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object p1

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 2110
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fputmNetwork(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Landroid/net/Network;)V

    const/4 p1, 0x0

    .line 2113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 2114
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2115
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2117
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    .line 2119
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fgetmConfig(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fputmApn(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;)V

    .line 2121
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$mupdateDnsInfo(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    .line 2122
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public onDisconnected(I)V
    .locals 4

    .line 2128
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2129
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 2130
    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$fputmNetwork(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Landroid/net/Network;)V

    .line 2131
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->-$$Nest$mrefreshDns(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    .line 2132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onResumed(I)V
    .locals 4

    .line 2145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    if-ne p1, v1, :cond_0

    .line 2146
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResumed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2147
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    .line 2148
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    if-eqz v0, :cond_0

    .line 2149
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    const/4 p1, 0x1

    .line 2150
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onSuspended(I)V
    .locals 4

    .line 2137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    if-ne p1, v1, :cond_0

    .line 2138
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuspended "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2139
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    :cond_0
    return-void
.end method
