.class Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;
.super Lcom/sec/ims/IRttEventListener$Stub;
.source "ImsCallSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/imsphone/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V
    .registers 2

    .line 744
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-direct {p0}, Lcom/sec/ims/IRttEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRttEvent(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    return-void
.end method

.method public onRttEventBySession(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->-$$Nest$mgetSessionId(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)I

    move-result v0

    if-ne v0, p1, :cond_f

    .line 753
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onSendRttSessionModifyRequest(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    if-ne v0, p1, :cond_1a

    .line 760
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 761
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    :cond_1a
    return-void
.end method

.method public onSendRttSessionModifyResponse(IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    if-ne v0, p1, :cond_31

    const/4 p1, 0x1

    if-ne p2, p3, :cond_15

    .line 769
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    goto :goto_1f

    .line 771
    :cond_15
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p2, p2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    :goto_1f
    if-eqz p3, :cond_29

    .line 774
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    goto :goto_31

    .line 776
    :cond_29
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;->this$0:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V

    :cond_31
    :goto_31
    return-void
.end method
