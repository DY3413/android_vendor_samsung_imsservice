.class public Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;
.super Ljava/lang/Object;
.source "PhoneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "PhoneStateManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListenEvent:I

.field private mListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListenerInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mSubManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mListener:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mListenEvent:I

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 45
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mSubManager:Landroid/telephony/SubscriptionManager;

    .line 46
    iput p2, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mListenEvent:I

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mListener:Ljava/util/Map;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    return-void
.end method

.method private getPhoneStateListenerInternal(I)Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;
    .locals 2

    .line 64
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;

    .line 65
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->getSimSlot()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private registerPhoneStateListenerInternal(II)V
    .locals 4

    .line 73
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;II)V

    .line 74
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 78
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener subid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mListenEvent:I

    invoke-virtual {p2, v0, p0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private unRegisterPhoneStateListenerInternal(I)V
    .locals 3

    .line 84
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->getPhoneStateListenerInternal(I)Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterPhoneStateListenerInternal, phoneStateListenerInternal["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not exist. return.."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->getPhoneStateListenerInternal(I)Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 91
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "registerPhoneStateListenerInternal:"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager$PhoneStateListenerInternal;->getSubId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public registerListener(Landroid/telephony/PhoneStateListener;I)V
    .locals 3

    .line 52
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mListener:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->registerPhoneStateListenerInternal(II)V

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "registerListener:"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterListener(I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->unRegisterPhoneStateListenerInternal(I)V

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/PhoneStateManager;->mListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
