.class public Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;
.super Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;
.source "GlobalSettingsRepoKorChnx.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoBase;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private isSupport5GConcept()Z
    .registers 3

    const/4 p0, 0x0

    :try_start_1
    const-string/jumbo v0, "ro.telephony.default_network"

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
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1a} :catch_20

    const/16 v1, 0x17

    if-lt v0, v1, :cond_24

    const/4 p0, 0x1

    goto :goto_24

    :catch_20
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_24
    :goto_24
    return p0
.end method


# virtual methods
.method protected preUpdateSystemSettings(Lcom/sec/internal/constants/Mno;IZZ)I
    .registers 8

    if-nez p4, :cond_3

    return p2

    .line 35
    :cond_3
    iget-object p4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iget v1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p4, v0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_14

    if-eqz p2, :cond_12

    goto :goto_14

    :cond_12
    move p4, v0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p4, 0x1

    .line 38
    :goto_15
    sget-object v1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_4c

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_1e

    goto :goto_4c

    .line 45
    :cond_1e
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_38

    .line 47
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->isSupport5GConcept()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isMainlandChinaOmcCode()Z

    move-result v1

    if-eqz v1, :cond_6d

    if-eqz p4, :cond_6d

    .line 48
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p2, v0, p4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    goto :goto_6c

    .line 51
    :cond_38
    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_6d

    .line 53
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isMainlandChinaOmcCode()Z

    move-result v1

    if-eqz v1, :cond_6d

    if-eqz p4, :cond_6d

    .line 54
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p2, v0, p4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    goto :goto_6c

    .line 39
    :cond_4c
    :goto_4c
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/GlobalSettingsRepoKorChnx;->isSupport5GConcept()Z

    move-result v1

    if-nez v1, :cond_5d

    const-string/jumbo v1, "ro.product.first_api_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_6d

    .line 40
    :cond_5d
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isChinaOmcCode()Z

    move-result v1

    if-eqz v1, :cond_6d

    if-eqz p4, :cond_6d

    .line 42
    iget-object p2, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p4, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p2, v0, p4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    :goto_6c
    move p2, v0

    .line 59
    :cond_6d
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result p4

    if-nez p4, :cond_7a

    sget-object p4, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, p4, :cond_78

    goto :goto_7a

    :cond_78
    move v0, p2

    goto :goto_83

    :cond_7a
    :goto_7a
    if-eqz p3, :cond_83

    .line 62
    iget-object p1, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/settings/GlobalSettingsRepo;->mPhoneId:I

    invoke-static {p1, v0, p0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    :cond_83
    :goto_83
    return v0
.end method
