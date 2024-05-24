.class public Lcom/sec/internal/imsphone/ImsUtEventListener;
.super Lcom/sec/ims/ss/IImsUtEventListener$Stub;
.source "ImsUtEventListener.java"


# instance fields
.field mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/imsphone/ImsUtImpl;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    return-void
.end method


# virtual methods
.method public onUtConfigurationCallBarringQueried(I[Landroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v0, :cond_65

    .line 90
    sget-object v0, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    array-length v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/ims/ImsSsInfo;

    const/4 v1, 0x0

    move v2, v1

    .line 91
    :goto_11
    array-length v3, p2

    if-ge v2, v3, :cond_5d

    .line 92
    aget-object v3, p2, v2

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 93
    aget-object v4, p2, v2

    const-string v5, "condition"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_41

    .line 95
    aget-object v4, p2, v2

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v5, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 97
    invoke-virtual {v5, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_5a

    .line 100
    :cond_41
    aget-object v4, p2, v2

    const-string/jumbo v5, "serviceClass"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 101
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v5, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 102
    invoke-virtual {v5, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setServiceClass(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 106
    :cond_5d
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    :cond_65
    return-void
.end method

.method public onUtConfigurationCallForwardQueried(I[Landroid/os/Bundle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v0, :cond_63

    .line 68
    sget-object v0, Landroid/telephony/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    array-length v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/ims/ImsCallForwardInfo;

    const/4 v1, 0x0

    move v2, v1

    .line 69
    :goto_11
    array-length v3, p2

    if-ge v2, v3, :cond_5b

    .line 70
    aget-object v3, p2, v2

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 71
    aget-object v3, p2, v2

    const-string v4, "condition"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 72
    aget-object v3, p2, v2

    const-string v4, "NoReplyTimer"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 73
    aget-object v3, p2, v2

    const-string v4, "ToA"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 74
    aget-object v3, p2, v2

    const-string v4, "number"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    const-string v3, ""

    :cond_45
    move-object v10, v3

    .line 78
    aget-object v3, p2, v2

    const-string/jumbo v4, "serviceClass"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 79
    new-instance v3, Landroid/telephony/ims/ImsCallForwardInfo;

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    .line 81
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 83
    :cond_5b
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    :cond_63
    return-void
.end method

.method public onUtConfigurationCallWaitingQueried(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v0, :cond_23

    .line 58
    sget-object v0, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/ims/ImsSsInfo;

    .line 59
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const/4 p2, 0x0

    .line 60
    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    aput-object v1, v0, p2

    .line 61
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    :cond_23
    return-void
.end method

.method public onUtConfigurationQueried(ILandroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 44
    invoke-interface {p0, v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    :cond_a
    return-void
.end method

.method public onUtConfigurationQueryFailed(ILandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v0, :cond_24

    const-string v0, "errorCode"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "errorMsg"

    .line 35
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {v0}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertUtErrorReasonToFw(I)I

    move-result v0

    invoke-direct {v2, v0, v1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    :cond_24
    return-void
.end method

.method public onUtConfigurationUpdateFailed(ILandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v0, :cond_24

    const-string v0, "errorCode"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "errorMsg"

    .line 25
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 26
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {v0}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertUtErrorReasonToFw(I)I

    move-result v0

    invoke-direct {v2, v0, v1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    :cond_24
    return-void
.end method

.method public onUtConfigurationUpdated(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/imsphone/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 51
    invoke-interface {p0, v0, p1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    :cond_a
    return-void
.end method
