.class public Lcom/sec/internal/google/ImsUtEventListener;
.super Lcom/sec/ims/ss/IImsUtEventListener$Stub;
.source "ImsUtEventListener.java"


# instance fields
.field mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsUtImpl;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    return-void
.end method


# virtual methods
.method public onUtConfigurationCallBarringQueried(I[Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v0, :cond_2

    .line 89
    sget-object v0, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    array-length v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/ims/ImsSsInfo;

    const/4 v1, 0x0

    move v2, v1

    .line 90
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 91
    aget-object v3, p2, v2

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 92
    aget-object v4, p2, v2

    const-string v5, "condition"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 94
    aget-object v4, p2, v2

    const-string v5, "number"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v5, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 96
    invoke-virtual {v5, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 99
    :cond_0
    aget-object v4, p2, v2

    const-string v5, "serviceClass"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 100
    new-instance v5, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v5, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 101
    invoke-virtual {v5, v4}, Landroid/telephony/ims/ImsSsInfo$Builder;->setServiceClass(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    :cond_2
    return-void
.end method

.method public onUtConfigurationCallForwardQueried(I[Landroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Landroid/telephony/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    array-length v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/ims/ImsCallForwardInfo;

    const/4 v1, 0x0

    move v2, v1

    .line 68
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 69
    aget-object v3, p2, v2

    const-string/jumbo v4, "status"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 70
    aget-object v3, p2, v2

    const-string v4, "condition"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 71
    aget-object v3, p2, v2

    const-string v4, "NoReplyTimer"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 72
    aget-object v3, p2, v2

    const-string v4, "ToA"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 73
    aget-object v3, p2, v2

    const-string v4, "number"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, ""

    :cond_0
    move-object v10, v3

    .line 77
    aget-object v3, p2, v2

    const-string v4, "serviceClass"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 78
    new-instance v3, Landroid/telephony/ims/ImsCallForwardInfo;

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    .line 80
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    :cond_2
    return-void
.end method

.method public onUtConfigurationCallWaitingQueried(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Landroid/telephony/ims/ImsSsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/ims/ImsSsInfo;

    .line 58
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const/4 p2, 0x0

    .line 59
    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    aput-object v1, v0, p2

    .line 60
    iget-object p0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v0}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    :cond_0
    return-void
.end method

.method public onUtConfigurationQueried(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 43
    invoke-interface {p0, v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onUtConfigurationQueryFailed(ILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v0, :cond_0

    const-string v0, "errorCode"

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "errorMsg"

    .line 34
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 35
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {v0}, Lcom/sec/internal/google/DataTypeConvertor;->convertUtErrorReasonToFw(I)I

    move-result v0

    invoke-direct {v2, v0, v1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 36
    iget-object p0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public onUtConfigurationUpdateFailed(ILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object v0, v0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz v0, :cond_0

    const-string v0, "errorCode"

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "errorMsg"

    .line 24
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 25
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {v0}, Lcom/sec/internal/google/DataTypeConvertor;->convertUtErrorReasonToFw(I)I

    move-result v0

    invoke-direct {v2, v0, v1, p2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public onUtConfigurationUpdated(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/sec/internal/google/ImsUtEventListener;->mImsUtImpl:Lcom/sec/internal/google/ImsUtImpl;

    iget-object p0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Lcom/android/ims/internal/IImsUtListener;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 50
    invoke-interface {p0, v0, p1}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    :cond_0
    return-void
.end method
