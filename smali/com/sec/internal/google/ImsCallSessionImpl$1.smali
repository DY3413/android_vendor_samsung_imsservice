.class Lcom/sec/internal/google/ImsCallSessionImpl$1;
.super Lcom/sec/ims/IRttEventListener$Stub;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsCallSessionImpl;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-direct {p0}, Lcom/sec/ims/IRttEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRttEvent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onRttEventBySession(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->-$$Nest$mgetSessionId(Lcom/sec/internal/google/ImsCallSessionImpl;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 746
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSendRttSessionModifyRequest(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 753
    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 754
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public onSendRttSessionModifyResponse(IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    if-ne p2, p3, :cond_0

    .line 762
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    goto :goto_0

    .line 764
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/google/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    :goto_0
    if-eqz p3, :cond_1

    .line 767
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    goto :goto_1

    .line 769
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/google/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    :cond_2
    :goto_1
    return-void
.end method
