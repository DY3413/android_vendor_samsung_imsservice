.class public Lcom/sec/internal/ims/core/sim/SimManagerFactory;
.super Ljava/lang/Object;
.source "SimManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimManagerFactory"

.field public static final PHONE_ID_NON_EXISTING:I = -0x1

.field private static mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private static mContext:Landroid/content/Context;

.field private static mCreated:Z

.field private static mDefaultSimSubId:I

.field private static mIsMultiSimSupported:Z

.field private static mLooper:Landroid/os/Looper;

.field private static mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private static mSubMan:Landroid/telephony/SubscriptionManager;

.field private static mTelephonyCallbackListener:Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;

.field private static volatile sSimManagerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/SimManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetmADSChangeRegistrants()Lcom/sec/internal/helper/RegistrantList;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmDefaultSimSubId()I
    .registers 1

    .line 0
    sget v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsMultiSimSupported()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mIsMultiSimSupported:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmSubIdChangeRegistrants()Lcom/sec/internal/helper/RegistrantList;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmSubMan()Landroid/telephony/SubscriptionManager;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSimManagerList()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmDefaultSimSubId(I)V
    .registers 1

    .line 0
    sput p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    const/4 v0, 0x0

    .line 44
    sput-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mCreated:Z

    .line 46
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 47
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 49
    sput v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    .line 50
    sput-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mIsMultiSimSupported:Z

    .line 54
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;-><init>(Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener-IA;)V

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mTelephonyCallbackListener:Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 12

    .line 57
    sget-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mCreated:Z

    if-eqz v0, :cond_5

    return-void

    .line 61
    :cond_5
    sput-object p1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    .line 62
    sput-object p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mLooper:Landroid/os/Looper;

    const-string/jumbo p0, "telephony_subscription_service"

    .line 64
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    sput-object p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    .line 65
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->setSubMgr(Landroid/telephony/SubscriptionManager;)V

    .line 67
    sget-object p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p0

    .line 68
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->setPhoneCount(I)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxSimCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManagerFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-le p0, v2, :cond_40

    move v3, v2

    goto :goto_41

    :cond_40
    move v3, v0

    .line 71
    :goto_41
    sput-boolean v3, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mIsMultiSimSupported:Z

    .line 73
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v3

    sput v3, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current default subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConfigDualIMS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_77
    if-ge v0, p0, :cond_96

    .line 80
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v8

    .line 81
    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManager;

    sget-object v5, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mLooper:Landroid/os/Looper;

    sget-object v6, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v9

    move-object v4, v1

    move v7, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/sim/SimManager;-><init>(Landroid/os/Looper;Landroid/content/Context;ILandroid/telephony/SubscriptionInfo;Lcom/sec/internal/helper/os/ITelephonyManager;)V

    .line 83
    sget-object v3, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 86
    :cond_96
    sput-boolean v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mCreated:Z

    return-void
.end method

.method public static dump()V
    .registers 2

    const-string v0, "SimManagerFactory"

    const-string v1, "Dump of SimManagerFactory:"

    .line 212
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 214
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->dump()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public static getAllSimManagers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    return-object v0
.end method

.method public static getImsiFromPhoneId(I)Ljava/lang/String;
    .registers 2

    .line 246
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 247
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 248
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPhoneId(Ljava/lang/String;)I
    .registers 4

    .line 229
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 230
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 232
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p0

    return p0

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public static declared-synchronized getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .registers 5

    const-class v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;

    monitor-enter v0

    .line 141
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 142
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_45

    if-ne v3, v4, :cond_9

    .line 143
    monitor-exit v0

    return-object v2

    .line 147
    :cond_21
    :try_start_21
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "SimManagerFactory"

    const-string v2, "Not matched. Return slot 0\'s."

    .line 148
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_45

    monitor-exit v0

    return-object v1

    :cond_3b
    :try_start_3b
    const-string v1, "SimManagerFactory"

    const-string v2, "SimManager is not yet initiated!"

    .line 151
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_45

    .line 152
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_45
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .registers 5

    const-class v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;

    monitor-enter v0

    .line 157
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 158
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_27

    if-ne v3, p0, :cond_9

    .line 159
    monitor-exit v0

    return-object v2

    :cond_1d
    :try_start_1d
    const-string v1, "SimManagerFactory"

    const-string v2, "getSimManagerFromSimSlot, No matched ISimManager. Return null.."

    .line 162
    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_27

    .line 163
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getSimManagerFromSubId(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .registers 5

    const-class v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;

    monitor-enter v0

    .line 167
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 168
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v3

    if-ne v3, p0, :cond_9

    if-ltz p0, :cond_23

    .line 169
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2f

    if-nez v3, :cond_9

    .line 170
    :cond_23
    monitor-exit v0

    return-object v2

    :cond_25
    :try_start_25
    const-string v1, "SimManagerFactory"

    const-string v2, "getSimManagerFromSubId, No matched ISimManager. Return null.."

    .line 174
    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2f

    .line 175
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_2f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSlotId(I)I
    .registers 4

    const/4 v0, -0x1

    const-string v1, "SimManagerFactory"

    if-gez p0, :cond_c

    const-string/jumbo v2, "subId is wrong"

    .line 273
    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 277
    :cond_c
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSubId(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_18

    const-string p0, "Simmanager is not created yet"

    .line 279
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 282
    :cond_18
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p0

    return p0
.end method

.method public static initInstances()V
    .registers 3

    .line 90
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->sSimManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/sim/SimManager;

    .line 91
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/SimManager;->initializeSimState()V

    goto :goto_6

    .line 94
    :cond_16
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2a

    const-string v0, "SimManagerFactory"

    const-string v1, "TelephonyManager is null, should not happen"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 98
    :cond_2a
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mTelephonyCallbackListener:Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 101
    :goto_35
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public static isOutboundSim(I)Z
    .registers 2

    .line 261
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_f

    const-string p0, "SimManagerFactory"

    const-string v0, "isOutboundSim, sm is null"

    .line 263
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 268
    :cond_f
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isOutBoundSIM()Z

    move-result p0

    return p0
.end method

.method public static notifySubscriptionIdChanged(Landroid/telephony/SubscriptionInfo;)V
    .registers 2

    .line 219
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method public static registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 179
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public static registerForSubIdChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 183
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public static unregisterForADSChange(Landroid/os/Handler;)V
    .registers 2

    .line 187
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public static updateAdsSlot()V
    .registers 5

    .line 290
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    .line 291
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    .line 293
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAdsSlot: subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " curActiveDataPhone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManagerFactory"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->isValidSimSlot(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    if-ltz v0, :cond_7b

    if-ne v2, v1, :cond_41

    sget v2, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    if-eq v2, v0, :cond_7b

    .line 297
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAdsSlot: Data subscription changed: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->setActiveDataPhoneId(I)V

    .line 299
    sput v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mDefaultSimSubId:I

    .line 301
    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_6f

    const-string v0, "SimManagerMainInstance is not exist. Do not notify."

    .line 303
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 306
    :cond_6f
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->notifyADSChanged(I)V

    .line 308
    sget-boolean v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mIsMultiSimSupported:Z

    if-eqz v0, :cond_7b

    .line 309
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mADSChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    :cond_7b
    return-void
.end method
