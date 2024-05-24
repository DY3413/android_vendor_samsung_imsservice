.class Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.super Ljava/lang/Object;
.source "SimDataAdaptor.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "SimDataAdaptor"


# instance fields
.field protected mLastOperator:Ljava/lang/String;

.field protected mPreferredImpuIndex:I

.field protected mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

.field protected mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    .line 29
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimpleEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 30
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    return-void
.end method

.method public static getSimDataAdaptor(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
    .registers 3

    .line 34
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_e

    .line 37
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorTmoUs;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorTmoUs;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0

    .line 38
    :cond_e
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_18

    .line 39
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorAtt;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorAtt;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0

    .line 40
    :cond_18
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_22

    .line 41
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0

    .line 42
    :cond_22
    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2c

    .line 43
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorGcf;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorGcf;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0

    .line 44
    :cond_2c
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_36

    .line 45
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorKddi;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0

    .line 46
    :cond_36
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_40

    .line 47
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorCmcc;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorCmcc;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0

    .line 48
    :cond_40
    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4a

    .line 49
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0

    .line 50
    :cond_4a
    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_54

    .line 51
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0

    .line 52
    :cond_54
    sget-object v1, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_5e

    .line 53
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorBog;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorBog;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0

    .line 54
    :cond_5e
    sget-object v1, Lcom/sec/internal/constants/Mno;->ONENONE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_68

    .line 55
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorONENONE;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorONENONE;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0

    .line 57
    :cond_68
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object v0
.end method


# virtual methods
.method public getEmergencyImpu(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    sget-object p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getEmergencyImpu:"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-eqz p1, :cond_24

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_24

    :cond_11
    const/4 v0, 0x0

    .line 70
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_24
    :goto_24
    return-object p0
.end method

.method public getImpuFromList(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getImpuFromList:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_41

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_41

    .line 82
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3c

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 84
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mPreferredImpuIndex:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 86
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getValidImpu(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_41
    :goto_41
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getValidImpu(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasValidMsisdn()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public needHandleLoadedAgain(Ljava/lang/String;)Z
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 105
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Different operator. Last:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->mLastOperator:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method
