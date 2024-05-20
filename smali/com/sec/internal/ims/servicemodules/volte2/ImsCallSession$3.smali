.class Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$3;
.super Ljava/lang/Object;
.source "ImsCallSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setNrSaMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$3;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$3;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 372
    fill-array-data v2, :array_0

    new-array v1, v1, [B

    .line 373
    fill-array-data v1, :array_1

    .line 374
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$3;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNrSaMode : start, subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$3;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_2

    .line 377
    invoke-virtual {v3, v0, v2, v1}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v0

    .line 378
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$3;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNrSaMode : respLen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$3;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-interface {v1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateNrSaMode(IZ)V

    goto :goto_1

    .line 382
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession$3;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateNrSaMode(IZ)V

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 1
        0x2t
        -0x7ct
        0x0t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
