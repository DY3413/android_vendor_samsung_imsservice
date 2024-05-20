.class Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;
.super Landroid/telephony/TelephonyCallback;
.source "SimManagerFactory.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TelephonyCallbackListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 3

    .line 193
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActiveDataSubscriptionIdChanged subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimManagerFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 196
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->isValidSimSlot(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ltz p1, :cond_2

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->-$$Nest$sfgetmDefaultSimSubId()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->setActiveDataPhoneId(I)V

    .line 203
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->-$$Nest$sfputmDefaultSimSubId(I)V

    .line 204
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->-$$Nest$sfgetmIsMultiSimSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 205
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notify ADS changed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->-$$Nest$sfgetmADSChangeRegistrants()Lcom/sec/internal/helper/RegistrantList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    :cond_1
    return-void

    .line 198
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Current default subId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->-$$Nest$sfgetmDefaultSimSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " slot="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
