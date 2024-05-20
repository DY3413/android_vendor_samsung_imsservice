.class public Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;
.super Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
.source "GlobalSettingsRepoKorChnx.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private isSupport5GConcept()Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "ro.telephony.default_network"

    const-string v1, "0,0"

    .line 73
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    aget-object v0, v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return p0
.end method


# virtual methods
.method protected preUpdateSystemSettings(Lcom/sec/internal/constants/Mno;IZZ)I
    .locals 3

    if-nez p4, :cond_0

    return p2

    .line 35
    :cond_0
    iget-object p4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p4, v0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p4, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p4, 0x1

    .line 38
    :goto_1
    sget-object v1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_3

    goto :goto_2

    .line 45
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_4

    .line 47
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->isSupport5GConcept()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isMainlandChinaOmcCode()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p4, :cond_7

    .line 48
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p2, v0, p4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    goto :goto_3

    .line 51
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_7

    .line 53
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isMainlandChinaOmcCode()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p4, :cond_7

    .line 54
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p2, v0, p4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    goto :goto_3

    .line 39
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->isSupport5GConcept()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ro.product.first_api_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_7

    .line 40
    :cond_6
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isChinaOmcCode()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p4, :cond_7

    .line 42
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p2, v0, p4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    :goto_3
    move p2, v0

    .line 59
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result p4

    if-nez p4, :cond_9

    sget-object p4, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, p4, :cond_8

    goto :goto_4

    :cond_8
    move v0, p2

    goto :goto_5

    :cond_9
    :goto_4
    if-eqz p3, :cond_a

    .line 62
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p1, v0, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    :cond_a
    :goto_5
    return v0
.end method
