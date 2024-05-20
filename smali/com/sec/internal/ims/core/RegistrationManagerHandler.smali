.class public Lcom/sec/internal/ims/core/RegistrationManagerHandler;
.super Landroid/os/Handler;
.source "RegistrationManagerHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-Handler"

.field private static final OMADM_TIMEOUT:I = 0x1e


# instance fields
.field protected mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field protected mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field protected mContext:Landroid/content/Context;

.field mDsacEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mGvnIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mHasPendingRecoveryAction:Z

.field protected final mImsDmConfigListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/IImsDmConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

.field protected final mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

.field protected mObserverManager:Lcom/sec/internal/ims/core/RegistrationObserverManager;

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mPhoneCount:I

.field protected mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

.field protected mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field final mRetrySetupEventReceiver:Landroid/content/BroadcastReceiver;

.field final mRilEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field final mUserEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

.field final mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field protected mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field mVzwEmmIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$KHP5HZV7osoopvYoq2Mnjmm35q4(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$registerInternalListeners$0(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VjA6kEwjpbXlTTMOtNVfT8s9GD0(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$notifySendReRegisterRequested$2(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hEEqw5eqrdceOJswh9u3sH5aToc(Lcom/sec/internal/ims/core/RegistrationManagerHandler;ILcom/sec/internal/constants/Mno;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->lambda$notifySendDeRegisterRequested$1(ILcom/sec/internal/constants/Mno;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 131
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    .line 240
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$1;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEventReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$2;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$3;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$3;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRilEventReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRetrySetupEventReceiver:Landroid/content/BroadcastReceiver;

    .line 320
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$5;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mDsacEventReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$6;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$6;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mGvnIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$7;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$7;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVzwEmmIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 435
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 142
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    .line 143
    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 144
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    .line 145
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string p3, "RegiMgr-Handler"

    const/16 p4, 0x12c

    invoke-direct {p1, p2, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;",
            "Lcom/sec/internal/ims/core/NetworkEventController;",
            "Lcom/sec/internal/ims/core/UserEventController;",
            "Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2, p3, p9}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;)V

    .line 153
    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 154
    iput-object p6, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    .line 155
    iput-object p7, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 156
    iput-object p8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    .line 157
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 158
    new-instance p1, Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object p5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-direct {p1, p3, p4, p5, p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Ljava/util/List;Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mObserverManager:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 159
    iput-object p10, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    .line 160
    iput-object p11, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 161
    invoke-static {p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    return-void
.end method

.method private allocateAdhocProfileId(I)I
    .locals 4

    .line 1618
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1619
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x2710

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x4e1f

    if-le v1, v3, :cond_1

    .line 1621
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1623
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1624
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/2addr p1, v2

    add-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$notifySendDeRegisterRequested$1(ILcom/sec/internal/constants/Mno;I)V
    .locals 9

    .line 1670
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1672
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1673
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    const/16 v3, 0x7c

    const-string v6, "RegiMgr-Handler"

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v7, 0xf

    if-eq v2, v7, :cond_c

    .line 1675
    invoke-static {p1, p2, v1, p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->ignoreSendDeregister(ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/RegisterTask;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1679
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendDeregister : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1682
    :cond_2
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiCause(I)V

    .line 1684
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result v2

    const/16 v7, 0x1f

    if-ne v2, v7, :cond_4

    const/16 v2, 0x31

    .line 1686
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1687
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1691
    :cond_3
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v7, 0x1770

    invoke-virtual {p0, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    const/16 v2, 0x3e8

    if-ne p3, v2, :cond_5

    .line 1693
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    const/16 v2, 0x8f

    if-ne p3, v2, :cond_7

    .line 1694
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x327

    if-ne p3, v2, :cond_8

    .line 1696
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v5, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0xc

    if-ne p3, v2, :cond_9

    const-string v2, "Do not disconnect IMS PDN while shutting down or APM on!"

    .line 1698
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_0

    .line 1700
    :cond_9
    sget-object v2, Lcom/sec/internal/constants/Mno;->UMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq p2, v2, :cond_a

    sget-object v2, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    if-ne p2, v2, :cond_b

    :cond_a
    if-ne p3, v3, :cond_b

    .line 1701
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez v2, :cond_b

    const-string v2, "Wifi disconnected, send local deregister"

    .line 1702
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_0

    .line 1705
    :cond_b
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0x82

    if-ne p3, v2, :cond_d

    .line 1707
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v4, :cond_d

    const-string v2, "Stop pdn when device shut down..."

    .line 1708
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1710
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto/16 :goto_0

    :cond_d
    if-ne p3, v3, :cond_0

    .line 1711
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1712
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isSupportVoWiFiDisable5GSA(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1713
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 1714
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getNrInterworkingMode(I)I

    move-result v2

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$NrInterworking;->FULL_SUPPORT:I

    if-eq v2, v3, :cond_0

    .line 1715
    :cond_e
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    const-string v2, "TaskState is CONNECTED. Received Epdg Deregister Request."

    .line 1716
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1718
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    const-wide/16 v1, 0x1f4

    .line 1719
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method private synthetic lambda$notifySendReRegisterRequested$2(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 6

    .line 1728
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 1729
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setUpdateRegistering(Z)V

    .line 1730
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1731
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/sec/internal/ims/core/RegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v0

    .line 1732
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "RegiMgr-Handler"

    const-string v1, "sendReRegister : deregister task due to empty services"

    .line 1733
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1736
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$registerInternalListeners$0(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 5

    .line 412
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    const-string v1, "RegiMgr-Handler"

    const-string v2, "Register SIM Event"

    .line 414
    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 415
    invoke-interface {p1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 416
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x15

    invoke-interface {p1, p0, v4, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForUiccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v2, 0x24

    .line 417
    invoke-interface {p1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    invoke-interface {p1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string p1, "Register PhoneStatelistener."

    .line 420
    invoke-static {v1, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/PdnController;->unRegisterPhoneStateListener(I)V

    .line 422
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->registerPhoneStateListener(I)V

    return-void
.end method

.method private onDmState(Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onDmState:"

    .line 1811
    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "EAB_SETTING"

    .line 1813
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1814
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "omadm/./3GPP_IMS/EAB_SETTING"

    invoke-static {p0, v2, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string v1, "LVC_ENABLED"

    .line 1815
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1816
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "omadm/./3GPP_IMS/LVC_ENABLED"

    invoke-static {p0, v2, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    const-string v1, "VOLTE_ENABLED"

    .line 1817
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1818
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "omadm/./3GPP_IMS/VOLTE_ENABLED"

    invoke-static {p0, v2, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_2
    const-string p0, "Ignore DM value"

    .line 1820
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1823
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new onDmState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "- state: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method private onEventSimReady(I)Z
    .locals 4

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onEventSimReady:"

    .line 546
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 548
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onSimReady(ZI)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method


# virtual methods
.method protected doRecoveryAction(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 6

    .line 1315
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doRecoveryAction; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",RECOVERY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/core/RegisterTask;->mRecoveryReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x11010007

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    const/4 v0, 0x0

    move v3, v0

    .line 1318
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_1

    .line 1319
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v4

    if-eq v4, v5, :cond_0

    if-eqz v4, :cond_0

    .line 1321
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    .line 1322
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1323
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doRecoveryAction : active call in phoneId["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]. postpone recovery"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",POSTPONE RECOVERY: ACTIVE CALL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1328
    :cond_1
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    .line 1329
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRecoveryReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v2, v5

    goto :goto_2

    :sswitch_0
    const-string v2, "UACreateFailed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_1
    const-string v3, "NoUserAgent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :sswitch_2
    const-string v2, "UaStateMismatch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v0

    :cond_4
    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 1331
    :pswitch_0
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RECOVERY_UA_CREATION_FAIL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    goto :goto_3

    .line 1337
    :pswitch_1
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RECOVERY_UA_MISSING:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    goto :goto_3

    .line 1334
    :pswitch_2
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RECOVERY_UA_MISMATCH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 1340
    :goto_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->clearUserAgent()V

    .line 1341
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    const/4 p1, 0x0

    .line 1342
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    .line 1343
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d9f89cd -> :sswitch_2
        -0x2c774ee7 -> :sswitch_1
        -0x24009efb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 2

    .line 580
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "RegiMgr-Handler"

    const-string v1, "getNetworkEvent is not exist. Return null.."

    .line 582
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method protected handleDelayedStopPdn(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 754
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 755
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 756
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 757
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p1

    if-nez p1, :cond_0

    .line 758
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    goto :goto_0

    .line 760
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    goto :goto_0

    .line 763
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 764
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    :goto_0
    const/16 p1, 0x20

    .line 767
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x2

    .line 768
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected handleDynamicConfigUpdated(I)V
    .locals 3

    .line 739
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x95

    .line 740
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 741
    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 743
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationEvents;->msgToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-static {p1, p0, v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationEvents;->handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected handleMnoMapUpdated(I)V
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x94

    .line 729
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x0

    .line 730
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "RegiMgr-Handler"

    const-string p1, "imsservice reboot"

    .line 732
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x11010007

    const/4 p1, 0x1

    const-string v0, "MnoMap Updated"

    .line 733
    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 734
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method protected handleSimReady(ILcom/sec/internal/helper/AsyncResult;)V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    const-string v1, "com.android.phone"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/os/PackageUtils;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x14

    const-string v2, "RegiMgr-Handler"

    if-nez v0, :cond_0

    const-string v0, "phone process is not ready."

    .line 592
    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 593
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 597
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->isReadyToStartRegistration(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x320

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 602
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onEventSimReady(I)Z

    move-result p2

    .line 603
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->startCmcRegistration()V

    if-nez p2, :cond_2

    .line 604
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p2, "SimReady: readiness false but CMC exists"

    .line 605
    invoke-static {v2, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x1

    .line 608
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    return-void
.end method

.method protected handleUiccChanged(I)V
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifySimChange(I)V

    return-void
.end method

.method public hasDelayedStopPdnEvent()Z
    .locals 1

    const/16 v0, 0x85

    .line 1900
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public hasNetworModeChangeEvent()Z
    .locals 1

    const/16 v0, 0x31

    .line 1904
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public hasVolteSettingOffEvent()Z
    .locals 1

    const/16 v0, 0x83

    .line 1883
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method protected init()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    .line 166
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->registerInternalListeners()V

    .line 167
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->registerIntentReceivers()V

    .line 168
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mAdhocProfileCounter:Lcom/sec/internal/helper/PhoneIdKeyMap;

    return-void
.end method

.method isReadyToStartRegistration(I)Z
    .locals 5

    const-string v0, "RegiMgr-Handler"

    const-string v1, "isReadyToStartRegistration:"

    .line 552
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 557
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x24

    .line 558
    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "Sim refresh is ongoing. SIM readyretry after"

    .line 559
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_1
    const/16 v4, 0x6b

    .line 561
    invoke-virtual {p0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p0, "Deregistering is not completed"

    .line 562
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 564
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 565
    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "IMEI is empty"

    .line 566
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 568
    :cond_3
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result p0

    const/4 v4, 0x5

    if-ne p0, v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "OperatorCode is empty"

    .line 569
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 571
    :cond_4
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "IMSI is not valid"

    .line 572
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public notifyAirplaneModeChanged(I)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, -0x1

    .line 1460
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyChatbotAgreementChanged(I)V
    .locals 1

    .line 1487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyConfigChanged(Landroid/net/Uri;I)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1436
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v2, "RegiMgr-Handler"

    const-string v3, "notifyConfigChanged, it should be fixed to include phoneId!"

    .line 1438
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public notifyContactActivated(II)V
    .locals 1

    const/16 v0, 0x329

    .line 1537
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDeRegistered(Landroid/os/Bundle;)V
    .locals 3

    .line 1515
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v1, "profileId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "phoneId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    const/16 v1, 0x64

    .line 1516
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v0, 0x65

    .line 1517
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyDmValueChanged(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "RegiMgr-Handler"

    const-string v1, "notifyDmValueChanged:"

    .line 1784
    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1787
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1788
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onDmState(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1790
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/IImsDmConfigListener;

    .line 1791
    invoke-interface {v4, p1, v2}, Lcom/sec/ims/IImsDmConfigListener;->onChangeDmValue(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1793
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1795
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1798
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "omadm/./3GPP_IMS/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3, p2}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1801
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1802
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.ims.dm.DM_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "item"

    .line 1803
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "value"

    .line 1804
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "phoneId"

    .line 1805
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1806
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public notifyDnsResponse(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    const/16 v0, 0x39

    .line 1575
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyEcVbcSettingChanged(I)V
    .locals 2

    const/16 v0, 0x9c

    const/4 v1, -0x1

    .line 1482
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyEmergencyReady(I)V
    .locals 2

    const/16 v0, 0x77

    const/4 v1, -0x1

    .line 1501
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyImsSettingChanged(Landroid/net/Uri;I)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1406
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1407
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_PROFILE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 p1, 0xf

    .line 1408
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1409
    invoke-virtual {p0, p1, p2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1410
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_DOWNLOAD_CONFIG_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_DOWNLOAD_CONFIG_RESET_URI:Landroid/net/Uri;

    .line 1411
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1416
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_CARRIER_FEATURE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x198

    .line 1417
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1418
    invoke-virtual {p0, p1, p2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1420
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->forceCallOnServiceSwitched(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x95

    .line 1412
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1413
    invoke-virtual {p0, p1, p2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1415
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->forceCallOnServiceSwitched(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public notifyImsSettingUpdated(I)V
    .locals 2

    .line 1377
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyLocalIpChanged(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 4

    .line 1556
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1557
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    .line 1558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLocalIpChanged: isStackedIpChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], RCS AS ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr-Handler"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1559
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "jibe"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1560
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p2, 0x5

    .line 1561
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p2, 0x2

    .line 1564
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public notifyLocationModeChanged()V
    .locals 1

    const/16 v0, 0x321

    .line 1455
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyLteDataNetworkModeSettingChanged(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x32

    .line 1450
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyManualDeRegisterRequested(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1642
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualDeRegisterRequested(IIZ)V

    return-void
.end method

.method protected notifyManualDeRegisterRequested(IIZ)V
    .locals 3

    .line 1646
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deregisterProfile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const v0, 0x11010006

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",DEREG REQ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1651
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    .line 1652
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "explicitDeregi"

    .line 1653
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "phoneId"

    .line 1654
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xa

    .line 1656
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyManualDeRegisterRequested(Ljava/util/List;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .line 1628
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1629
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p3}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfile(Landroid/content/Context;II)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1633
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    .line 1634
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "explicitDeregi"

    .line 1635
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "phoneId"

    .line 1636
    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0xa

    .line 1637
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected notifyManualRegisterRequested(Lcom/sec/ims/settings/ImsProfile;ZI)I
    .locals 3

    .line 1589
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isProper()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1601
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "D;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^a-zA-Z0-9\\s]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1601
    invoke-virtual {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->setAppId(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 1607
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    const/4 v0, 0x3

    if-ge p2, v0, :cond_2

    .line 1608
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->allocateAdhocProfileId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    :cond_2
    const/16 p2, 0x9

    const/4 v0, 0x0

    .line 1611
    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1613
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "registerProfile: id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RegiMgr-Handler"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    return p0
.end method

.method protected notifyManualRegisterRequested(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1579
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1580
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfile(Landroid/content/Context;II)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 1584
    invoke-virtual {p0, v1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyMnoMapUpdated(Landroid/net/Uri;I)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 p1, 0x94

    .line 1428
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1429
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public notifyMobileDataPressedSettingeChanged(II)V
    .locals 2

    const/16 v0, 0x99

    const/4 v1, 0x0

    .line 1470
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyMobileDataSettingeChanged(II)V
    .locals 2

    const/16 v0, 0x22

    const/4 v1, 0x0

    .line 1465
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const/16 v0, 0x16

    .line 1546
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifyPdnDisconnected(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const/16 v0, 0x17

    .line 1550
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRcsUserSettingChanged(II)V
    .locals 2

    .line 1395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x93

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRefreshRegNotification(I)V
    .locals 2

    const/16 v0, 0x8d

    const/4 v1, -0x1

    .line 1532
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRegEventContactUriNotification(Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x32a

    .line 1542
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRegistered(IILcom/sec/ims/ImsRegistration;)V
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1508
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    const/16 p2, 0x64

    .line 1509
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public notifyRegistrationError(Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x68

    .line 1522
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRoamingDataSettigChanged(II)V
    .locals 2

    const/16 v0, 0x2c

    const/4 v1, 0x0

    .line 1400
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifySendDeRegisterRequested(Lcom/sec/internal/constants/Mno;II)V
    .locals 1

    .line 1669
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;ILcom/sec/internal/constants/Mno;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected notifySendReRegisterRequested(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    .line 1727
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifySetupWizardCompleted()V
    .locals 3

    const/4 v0, 0x0

    .line 1383
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    if-ge v0, v1, :cond_2

    .line 1384
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1385
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x32b

    .line 1386
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public notifySubscribeError(Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x6c

    .line 1527
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1

    const/16 v0, 0x86

    .line 1492
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected notifyUpdateRegisterRequested(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x19

    .line 1664
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public notifyVolteSettingChanged(ZZI)V
    .locals 1

    if-eqz p2, :cond_0

    const/16 p2, 0x7f

    goto :goto_0

    :cond_0
    const/16 p2, 0x7d

    :goto_0
    const/4 v0, -0x1

    .line 1477
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1476
    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1475
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyVolteSettingOff(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1

    const/16 v0, 0x83

    .line 1496
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public notifyVowifiSettingChanged(IJ)V
    .locals 3

    const/16 v0, 0x7a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1445
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public notifyX509CertVerificationRequested([Ljava/security/cert/X509Certificate;)V
    .locals 1

    const/16 v0, 0x1e

    .line 1570
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onBlockRegistrationRoamingTimer(II)V
    .locals 3

    .line 918
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 920
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Orange Group, VoWIFI Error in Roaming"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 921
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->addDelay(I)V

    :cond_0
    return-void
.end method

.method onBootCompleted()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1220
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1221
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1223
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 1224
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v4, v0

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1225
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 1227
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onConfigUpdated(Ljava/lang/String;I)V
    .locals 2

    .line 1287
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/NetworkEventController;->onConfigUpdated(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1288
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1289
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1290
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1292
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1294
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method onDelayedDeregisterInternal(Lcom/sec/internal/ims/core/RegisterTask;Z)V
    .locals 2

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDelayedDeregisterInternal: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    return-void
.end method

.method onDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 10

    .line 1118
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "RegiMgr-Handler"

    const-string v2, "onDeregisterTimeout:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1119
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUpdateRegisteringFlag()V

    .line 1121
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    const/16 v2, 0x86

    if-nez v0, :cond_4

    .line 1122
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v3, "onDeregisterTimeout: no object"

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1124
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1126
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 1127
    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    .line 1128
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 1129
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1130
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 1131
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1132
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1133
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/sec/internal/ims/core/RegistrationManager;->getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 1134
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 1135
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setRegiRat(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 1136
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1140
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const-string v4, ""

    const/16 v5, 0x29

    const/4 v6, 0x0

    if-eq v1, v3, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v1

    const/16 v3, 0x48

    if-ne v1, v3, :cond_2

    .line 1141
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    new-instance v7, Lcom/sec/ims/ImsRegistrationError;

    const/16 v8, 0x20

    invoke-direct {v7, v6, v4, v3, v8}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v1, v0, v6, p1, v7}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    goto :goto_0

    .line 1143
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    new-instance v3, Lcom/sec/ims/ImsRegistrationError;

    sget-object v7, Lcom/sec/internal/constants/ims/SipErrorBase;->TEMPORARILY_UNAVAIABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v7}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v8

    .line 1144
    invoke-virtual {v7}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x10

    invoke-direct {v3, v8, v7, v5, v9}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    .line 1143
    invoke-virtual {v1, v0, v6, p1, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 1146
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "NoUserAgent"

    .line 1147
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRecoveryReason(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1150
    :cond_3
    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 1151
    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    return-void

    .line 1155
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 1157
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getStateName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "InitialState"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "UaStateMismatch"

    .line 1158
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRecoveryReason(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1161
    :cond_5
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->deregisterLocal()V

    return-void
.end method

.method protected onDeregistered(Ljava/lang/Object;)V
    .locals 9

    .line 629
    check-cast p1, Landroid/os/Bundle;

    .line 630
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v1, "profileId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "phoneId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v4

    const/16 v0, 0x86

    .line 632
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v4, :cond_0

    .line 633
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v1, :cond_0

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    const-string v2, "onDeregistered : mHasPendingRecoveryAction"

    invoke-virtual {v0, v1, v4, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    :goto_0
    const/16 v0, 0x6b

    .line 640
    invoke-virtual {p0, v0, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    if-eqz v4, :cond_2

    .line 643
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string p0, "error"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/sec/ims/util/SipError;

    const-string p0, "retryAfter"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string p0, "isRequestedDeregi"

    .line 644
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string p0, "pcscfGone"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 643
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;IZZ)V

    :cond_2
    return-void
.end method

.method onDeregistrationRequest(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V
    .locals 2

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregistrationRequest: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return-void
.end method

.method protected onDisableChatFeatureBySipForbidden(I)V
    .locals 4

    .line 841
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    .line 842
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string v3, "im"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 843
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string v3, "ft"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 844
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string v3, "ft_http"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 845
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string/jumbo v3, "slm"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "onDisableChatFeatureBySipForbidden: Trigger forced update registration"

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 847
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method onDisconnectPdnByHDvoiceRoamingOff(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3

    .line 1013
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnectPdnByHDvoiceRoamingOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Handler"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1014
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1015
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1016
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    return-void
.end method

.method onDisconnectPdnByTimeout(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 12

    .line 959
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnectPdnByTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RegiMgr-Handler"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 961
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 966
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->notifyReattachToRil()V

    .line 967
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x2

    if-eq v0, v4, :cond_1

    .line 968
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    invoke-virtual {v0, v4, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 969
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 970
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 973
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    .line 978
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 979
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v8

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 980
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 982
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v8, v9, :cond_3

    .line 983
    invoke-virtual {v4, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    :cond_3
    new-array v8, v7, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 986
    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v4, v8}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "onDisconnectPdnByTimeout - REGISTERED or REGISTERING"

    .line 987
    invoke-virtual {v4, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 988
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v8, v4, v11, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 989
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_1

    .line 990
    :cond_4
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v8, v9, :cond_5

    const-string v8, "onDisconnectPdnByTimeout - EMERGENCY"

    .line 991
    invoke-virtual {v4, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v8, 0x3

    .line 992
    invoke-virtual {v4, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 993
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v8, v4, v11, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 994
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 995
    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 996
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/core/SlotBasedConfig;->removeExtendedProfile(I)V

    goto :goto_1

    .line 997
    :cond_5
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v8, v9, :cond_6

    .line 998
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_1

    .line 1000
    :cond_6
    iget-object v8, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1001
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v8, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1002
    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v4, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1005
    :goto_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 1007
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    goto/16 :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method onDsacModeChanged()V
    .locals 4

    .line 1080
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1081
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "re-regi by dsac"

    .line 1082
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1083
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    :cond_1
    return-void
.end method

.method onFlightModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x86

    .line 1281
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1283
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/UserEventController;->onFlightModeChanged(Z)V

    return-void
.end method

.method onGeoLocationUpdated()V
    .locals 8

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onGeoLocationUpdated:"

    .line 1020
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 1022
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1023
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1024
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isDeregisterOnLocationUpdate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1025
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v4, 0x322

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    goto :goto_1

    .line 1029
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 1031
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ims"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1038
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1042
    :cond_1
    iget v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    .line 1045
    :cond_2
    iget v4, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    const-string v5, "geolocation changed"

    .line 1048
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1049
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegistrationManager;->getTelephonyCallStatus(I)I

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    move v6, v0

    :goto_3
    invoke-virtual {v5, v3, v4, v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZ)Z

    goto :goto_1

    .line 1051
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected onLocationCacheExpired(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onLocationCacheExpired"

    .line 799
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x323

    .line 800
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 801
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLocationCacheExpiry()V

    return-void
.end method

.method protected onLocationTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onLocationTimerExpired"

    .line 778
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x320

    .line 779
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->notifyLocationTimeout()V

    return-void
.end method

.method protected onPcoInfo(III)V
    .locals 3

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPcoInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->fromType(I)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 854
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 858
    :cond_0
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 859
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onUpdatedPcoInfo(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x16

    .line 861
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 863
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->onPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onRCSAllowedChangedbyMDM()V
    .locals 8

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onRCSAllowedChangedbyMDM:"

    .line 892
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    .line 893
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    if-ge v2, v3, :cond_5

    .line 894
    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 896
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 897
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v5

    const-string v6, "chat"

    invoke-static {v5, v6}, Lcom/sec/internal/ims/util/ImsUtil;->isMatchedService(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 898
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v6, v5, v1

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "RCS allowed changed"

    .line 899
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 900
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v4, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_1

    .line 902
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 903
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v5

    if-eq v2, v5, :cond_3

    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip RCS tryRegister due to non activeDataPhoneId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 904
    invoke-static {v0, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 909
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected onRcsDelayedDeregister()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 881
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    if-ge v1, v2, :cond_2

    .line 882
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 883
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    .line 884
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 885
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onRegEventContactUriNotified(Ljava/lang/Object;)V
    .locals 5

    .line 1090
    check-cast p1, Landroid/os/Bundle;

    .line 1091
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v1, "handle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    const-string v1, "contact_uri_list"

    .line 1092
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "emergencyNumbers"

    .line 1093
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isRegi"

    .line 1095
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "contactUriType"

    .line 1096
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 1098
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4, v1, v3, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegEventContactUriNotification(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_2

    .line 1103
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmcType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isRegi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    if-eq v0, p1, :cond_1

    const/4 p1, 0x7

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    if-ne v3, p1, :cond_2

    .line 1107
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsNotifier()Lcom/sec/internal/interfaces/google/IImsNotifier;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/google/IImsNotifier;->onP2pRegCompleteEvent()V

    :cond_2
    return-void
.end method

.method protected onRegisterError(Ljava/lang/Object;)V
    .locals 5

    .line 657
    check-cast p1, Landroid/os/Bundle;

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v1, "profileId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "phoneId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    if-nez v0, :cond_0

    const-string p0, "onRegisterError: task is null!"

    .line 661
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v2, 0x86

    .line 665
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 666
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v3, :cond_1

    .line 667
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-string v4, "onRegisterError : mHasPendingRecoveryAction"

    invoke-virtual {v2, v3, v0, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-string v4, "onRegisterError. Remove RegisteringRecovery message"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 670
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    const/16 v2, 0x6b

    .line 674
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 675
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-string v4, "onRegisterError. Remove EVENT_DEREGISTER_TIMEOUT"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 676
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const-string v1, ""

    .line 677
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v1, 0x29

    .line 678
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 681
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v1, "handle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "error"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/SipError;

    const-string v3, "retryAfter"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;I)V

    return-void
.end method

.method protected onRegistered(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3

    const/16 v0, 0x86

    .line 612
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    const-string v2, "onRegistered : mHasPendingRecoveryAction"

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 620
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x98

    .line 621
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x84

    .line 623
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    return-void
.end method

.method protected onRequestLocation()V
    .locals 6

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onRequestLocation"

    .line 785
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x321

    .line 786
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 787
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPhoneCount:I

    if-ge v1, v2, :cond_2

    .line 788
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 789
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 790
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "onRequestLocation: request location fetch"

    .line 791
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->requestLocation(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onRequestNotifyVolteSettingsOff(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onRequestNotifyVolteSettingsOff"

    .line 772
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x83

    .line 773
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 774
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->notifyVoLteOnOffToRil(Z)V

    return-void
.end method

.method onSSACRegiRequested(IZ)V
    .locals 4

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSSACRegiRequested : enabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 941
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 945
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    const/16 p2, 0x79

    .line 946
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 948
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 949
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    const-string v3, "mmtel"

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 950
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSSACRegiRequested: update registration "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "SSAC updated"

    .line 951
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 952
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    :cond_2
    return-void
.end method

.method onSimSubscribeIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .locals 3

    .line 1058
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimSubscribeIdChanged, SimSlot: , subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Handler"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1060
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 1062
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->unRegisterPhoneStateListener(I)V

    .line 1063
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->registerPhoneStateListener(I)V

    .line 1065
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager;->unRegisterPhoneStateListener()V

    .line 1068
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager;->registerPhoneStateListener()V

    .line 1071
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1072
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1073
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method onSubscribeError(Ljava/lang/Object;)V
    .locals 3

    .line 649
    check-cast p1, Landroid/os/Bundle;

    .line 650
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v1, "profileId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "phoneId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onSubscribeError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)V

    :cond_0
    return-void
.end method

.method onTelephonyCallStatusChanged(II)V
    .locals 2

    .line 1235
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->setCallState(I)V

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTelephonyCallStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p2, :cond_0

    .line 1238
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz v0, :cond_0

    .line 1239
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "onTelephonyCallStatusChanged : do recovery after call end"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const p1, 0x11010007

    .line 1240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",DO RECOVERY: CALL END"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    .line 1242
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    const-string p2, "PostponedRecovery"

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setRecoveryReason(Ljava/lang/String;)V

    const/16 p1, 0x86

    .line 1243
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTaskPendingRecoveryAction:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1247
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1249
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1250
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onTelephonyCallStatusChanged(I)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_5

    const/16 p2, 0x20

    .line 1255
    invoke-virtual {p0, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1256
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1259
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1260
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DSDS_DI"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1261
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1265
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_5

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v0, "mmtel"

    const/16 v1, 0x14

    .line 1266
    invoke-interface {p2, v0, v1, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1267
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1268
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 p2, 0x4

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V

    goto :goto_1

    .line 1270
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 p2, 0x3

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1274
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onThirdParyFeatureTagsUpdated(I)V
    .locals 6

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onThirdParyFeatureTagsUpdated"

    .line 926
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 927
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 929
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x0

    .line 930
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v5, v3, v4

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onThirdParyFeatureTagsUpdated: force update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "3rd party feature tag updated"

    .line 932
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 933
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onTimsTimerExpired(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimsTimerExpired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x98

    .line 808
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x84

    .line 810
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 812
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq p0, v0, :cond_1

    .line 813
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onTimsTimerExpired()V

    goto :goto_1

    :cond_1
    const-string p0, "Registered. Igonre onTimsTimerExpired."

    .line 815
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected onUpdateChatServiceByDmaChange(IZ)V
    .locals 4

    .line 820
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    .line 821
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 822
    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->hasChatService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateChatServiceByDmaChange: Ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-Handler"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 830
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "onUpdateChatServiceByDmaChange: Postpone the update registration till next own cap. change by force ACS"

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 832
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->postponeUpdateRegistrationByDmaChange(I)V

    goto :goto_0

    .line 834
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "onUpdateChatServiceByDmaChange: Trigger forced update registration. By timeout"

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 835
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method onUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)V
    .locals 4

    const-string v0, "RegiMgr-Handler"

    const-string v1, "onUpdateRegistration:"

    .line 691
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "onUpdateRegistration: registration task not found."

    .line 695
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 699
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->addExtendedProfile(ILcom/sec/ims/settings/ImsProfile;)V

    .line 701
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 704
    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "onUpdateRegistration: imsprofile changed."

    .line 705
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setExtImpuList(Ljava/util/List;)V

    const/4 p1, 0x2

    new-array v0, p1, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    .line 710
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "External IMPU list changed"

    .line 711
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v0, 0x1c

    .line 712
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p2, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 714
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "onUpdateRegistration: For KDDI, LGT(ImsNotAvailable) Send the Refresh Reg even thoug there is no change in services."

    .line 722
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onWfcSwitchProfile([BI)V
    .locals 1

    const-string p0, "RegiMgr-Handler"

    const-string v0, "onWfcSwitchProfile:"

    .line 870
    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 871
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 875
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 876
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onWfcProfileChanged([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3

    const-string v0, "RegiMgr-Handler"

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 1768
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1770
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected registerIntentReceivers()V
    .locals 7

    .line 381
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    .line 383
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    sget-object v0, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/sec/ims/extensions/ContextExt;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mGvnIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "action_wfc_switch_profile_broadcast"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mDsacEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.ims.hvolte.MODE_SWITCH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRilEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.UPDATE_IMS_REGISTRATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.retryTimeExpired"

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.retrySetupData"

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRetrySetupEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mVzwEmmIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.EMM_ERROR"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 400
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$ImsStubActionReceiver;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    .line 402
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.ims.MOCK_IMS_EVENT"

    .line 403
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected registerInternalListeners()V
    .locals 3

    const/16 v0, 0x2c3

    const/4 v1, 0x0

    .line 409
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    const/16 v0, 0x2be

    .line 426
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V

    .line 432
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mObserverManager:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->init()V

    return-void
.end method

.method public removeDmConfigTimeout(I)V
    .locals 3

    .line 1896
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method public removeRecoveryAction()V
    .locals 2

    const/16 v0, 0x86

    .line 1304
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1305
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mHasPendingRecoveryAction:Z

    if-eqz v1, :cond_0

    .line 1306
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "Do not remove RecoveryAction while pending"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 1310
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public removeVolteSettingOffEvent()V
    .locals 1

    const/16 v0, 0x83

    .line 1887
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected requestDelayedDeRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZJ)V
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x91

    .line 1743
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestForcedUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1

    const/16 v0, 0x8c

    .line 1863
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestPendingDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZJ)V
    .locals 1

    const/16 v0, 0x78

    .line 1867
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendCheckUnprocessedOmadmConfig(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const/16 v0, 0x197

    .line 1875
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDisconnectPdnByHdVoiceRoamingOff(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const/16 v0, 0x196

    .line 1847
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDmConfigTimeout(ILjava/lang/String;)V
    .locals 3

    .line 1891
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p2, p0, v1, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method public sendFinishOmadmProvisioningUpdate(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1

    const/16 v0, 0x27

    .line 1851
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendOmadmProvisioningUpdateStarted(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 1

    const/16 v0, 0x26

    .line 1921
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public sendRequestDmConfig(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const/16 v0, 0x1c

    .line 1871
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSuspend(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x97

    .line 1934
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendTryRegister(I)V
    .locals 1

    .line 1926
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendTryRegister(IJ)V
    .locals 1

    .line 1930
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;IJ)V
    .locals 2

    const/16 v0, 0x19

    const/4 v1, -0x1

    .line 1843
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    return-void
.end method

.method protected setDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 8

    .line 1348
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x6b

    if-ne v0, v1, :cond_0

    .line 1349
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1350
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    const/16 v1, 0xd

    invoke-static {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getDeregistrationTimeout(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p1

    int-to-long v1, p1

    .line 1349
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1351
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "RegiMgr-Handler"

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v4

    sget-object v7, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v3

    sget-object v7, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    aput-object v7, v6, v1

    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v6, :cond_2

    const-string p0, "KOR, OPTUS,KODO TELUS Emergency no need to Dereg Timer"

    .line 1352
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1353
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v6, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1354
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v6, 0x48

    if-ne v0, v6, :cond_3

    const-string p0, "block Registration Retries for the T3402 Timer on Epdg"

    .line 1355
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1356
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    new-array v1, v1, [Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    aput-object v6, v1, v4

    sget-object v4, Lcom/sec/internal/constants/Mno;->ORANGE_ROMANIA:Lcom/sec/internal/constants/Mno;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1357
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_4

    const-string v0, "EPDG Deregister, set as default dereg timeout"

    .line 1358
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1360
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_5

    const-string v0, "APM/PWR OFF case. We don\'t have much time! Wait 2.5 sec!"

    .line 1361
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x9c4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1366
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_6

    .line 1367
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1369
    :cond_6
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1370
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result p1

    invoke-static {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getDeregistrationTimeout(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p1

    int-to-long v1, p1

    .line 1369
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public startDisconnectPdnTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;
    .locals 1

    const/16 v0, 0x194

    .line 1855
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public startDmConfigTimer(Lcom/sec/internal/ims/core/RegisterTask;J)Landroid/os/Message;
    .locals 1

    const/16 v0, 0x1c

    .line 1859
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public startLocationRequestTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;
    .locals 1

    const/16 v0, 0x320

    .line 1879
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;
    .locals 2

    .line 1831
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p3, p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    return-object p0
.end method

.method public startRegistrationTimer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Landroid/os/Message;
    .locals 1

    const/4 v0, 0x4

    .line 1909
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/DelayedMessage;->getMsg()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method protected startTimsEshtablishTimer(Lcom/sec/internal/ims/core/RegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;
    .locals 1

    .line 1913
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x98

    .line 1914
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x84

    .line 1916
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->startPreciseAlarmTimer(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;J)Lcom/sec/internal/helper/DelayedMessage;

    move-result-object p0

    return-object p0
.end method

.method public stopTimer(Landroid/os/Message;)V
    .locals 0

    .line 1835
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method public stopTimer(Lcom/sec/internal/helper/DelayedMessage;)V
    .locals 0

    .line 1839
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mPreAlarmMgr:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Lcom/sec/internal/helper/DelayedMessage;)V

    return-void
.end method

.method public unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3

    const-string v0, "RegiMgr-Handler"

    .line 1774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 1778
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mImsDmConfigListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1780
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected updateSipDelegateRegistration(IZ)V
    .locals 4

    const-wide/16 v0, 0x1388

    const/16 v2, 0x3a

    if-eqz p2, :cond_0

    .line 1748
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1750
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v2, 0x3b

    invoke-virtual {p0, v2, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1751
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1754
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v3, "updateSipDelegateRegistration: Send delayed update"

    invoke-virtual {p2, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1755
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method verifyX509Certificate([Ljava/security/cert/X509Certificate;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "RegiMgr-Handler"

    const-string/jumbo v3, "verifyX509Certificate()"

    .line 1165
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    sget-object v3, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_9

    .line 1169
    array-length v6, v1

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    goto/16 :goto_4

    .line 1175
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/os/SystemUtil;->verifyCerts([Ljava/security/cert/X509Certificate;)Z

    move-result v6

    .line 1177
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v8

    move v9, v5

    move v10, v9

    :goto_0
    const-string/jumbo v11, "verifyId "

    if-ge v9, v8, :cond_6

    .line 1182
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", maxSimCount "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    iget-object v12, v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mSimManagers:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1184
    iget-object v13, v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v13, v9}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v13

    if-eqz v12, :cond_5

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_5

    const-string v12, "Verifying certificate names..."

    .line 1190
    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1193
    invoke-interface {v13}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v14

    sget-object v15, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v14, v15, :cond_2

    invoke-interface {v13}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v14

    sget-object v15, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v14, v15, :cond_3

    .line 1194
    :cond_2
    invoke-interface {v13}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPcscfHostname()Ljava/lang/String;

    move-result-object v14

    .line 1195
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking task: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    goto :goto_1

    .line 1200
    :cond_4
    aget-object v7, v1, v5

    invoke-virtual {v3, v14, v7}, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    if-nez v10, :cond_7

    .line 1211
    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->verifyCmcCertificate([Ljava/security/cert/X509Certificate;)Z

    move-result v10

    .line 1214
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verified "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nameMatch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    if-eqz v6, :cond_8

    if-eqz v10, :cond_8

    const/4 v5, 0x1

    :cond_8
    invoke-virtual {v0, v5, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendX509CertVerifyResponse(ZLjava/lang/String;)V

    return-void

    :cond_9
    :goto_4
    const-string/jumbo v0, "there is no certificate"

    .line 1170
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendX509CertVerifyResponse(ZLjava/lang/String;)V

    return-void
.end method
