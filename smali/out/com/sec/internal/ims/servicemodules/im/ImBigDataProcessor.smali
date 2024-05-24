.class public Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;
.super Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;
.source "ImBigDataProcessor.java"


# instance fields
.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/RcsBigDataProcessor;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-void
.end method


# virtual methods
.method protected getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .registers 2

    .line 19
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method protected getImsRegistration(I)Lcom/sec/ims/ImsRegistration;
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method protected getMessageType(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)Ljava/lang/String;
    .registers 4

    .line 31
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$Type:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    .line 39
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "SLM"

    goto :goto_23

    :cond_1b
    const-string p0, "IM"

    goto :goto_23

    :cond_1e
    const-string p0, "GLS"

    goto :goto_23

    :cond_21
    const-string p0, "FT"

    :goto_23
    if-eqz p2, :cond_36

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_CHATBOT"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_36
    return-object p0
.end method

.method protected getMessageTypeForILA(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_74

    goto :goto_58

    :sswitch_c
    const-string p0, "FT_CHATBOT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_58

    :cond_15
    const/4 v0, 0x6

    goto :goto_58

    :sswitch_17
    const-string p0, "SLM_CHATBOT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto :goto_58

    :cond_20
    const/4 v0, 0x5

    goto :goto_58

    :sswitch_22
    const-string p0, "IM_CHATBOT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_58

    :cond_2b
    const/4 v0, 0x4

    goto :goto_58

    :sswitch_2d
    const-string p0, "SLM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_58

    :cond_36
    const/4 v0, 0x3

    goto :goto_58

    :sswitch_38
    const-string p0, "GLS"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_58

    :cond_41
    const/4 v0, 0x2

    goto :goto_58

    :sswitch_43
    const-string p0, "FT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto :goto_58

    :cond_4c
    const/4 v0, 0x1

    goto :goto_58

    :sswitch_4e
    const-string p0, "GLS_CHATBOT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    packed-switch v0, :pswitch_data_92

    const-string p0, "RIOS"

    return-object p0

    :pswitch_5e
    const-string p0, "MFOS"

    return-object p0

    :pswitch_61
    const-string p0, "MSOS"

    return-object p0

    :pswitch_64
    const-string p0, "MIOS"

    return-object p0

    :pswitch_67
    const-string p0, "RSOS"

    return-object p0

    :pswitch_6a
    const-string p0, "RGOS"

    return-object p0

    :pswitch_6d
    const-string p0, "RFOS"

    return-object p0

    :pswitch_70
    const-string p0, "MGOS"

    return-object p0

    nop

    :sswitch_data_74
    .sparse-switch
        -0x392b9be2 -> :sswitch_4e
        0x8ce -> :sswitch_43
        0x1140e -> :sswitch_38
        0x14114 -> :sswitch_2d
        0x24efe334 -> :sswitch_22
        0x47f22b24 -> :sswitch_17
        0x55f298de -> :sswitch_c
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
    .end packed-switch
.end method

.method protected isChatBot(ILcom/sec/internal/ims/servicemodules/im/ImSession;)Z
    .registers 3

    .line 24
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p0

    if-nez p0, :cond_12

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method protected isWifiConnected()Z
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isWifiConnected()Z

    move-result p0

    return p0
.end method
