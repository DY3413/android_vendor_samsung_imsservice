.class public Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;
.super Ljava/lang/Object;
.source "FeatureUpdater.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FeatureUpdater"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFeatures:J

.field private mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-void
.end method

.method private isGlsEnabled(I)Z
    .locals 2

    .line 98
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string v0, "geolocPushAuth"

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 99
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnableGls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private updateChatBotFeatures()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v2, "chatbot-communication"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->BOTH_SESSION_AND_SLM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 166
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->SESSION_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-ne v0, v1, :cond_2

    .line 167
    :cond_1
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 170
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->BOTH_SESSION_AND_SLM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 171
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->SLM_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-ne v0, v1, :cond_4

    .line 172
    :cond_3
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_4
    return-void
.end method

.method private updateExtendedBotMsgFeature()V
    .locals 5

    .line 179
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 180
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v1

    .line 181
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FEATURE_CHATBOT_EXTENDED_MSG enabled ver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    const-string v1, "0.0"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    .line 185
    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    :cond_1
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    goto :goto_1

    .line 183
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_3
    :goto_1
    return-void
.end method

.method private updateFtFeatures()V
    .locals 6

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v2, "ft"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFtHttpOnlySupported(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtThumb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v3, "ft_http"

    invoke-static {v0, v3, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_3
    return-void
.end method

.method private updateGlsFeatures()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v2, "gls"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->isGlsEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGlsPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v0, :cond_1

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCustomizedFeature(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGlsPullEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_2
    :goto_0
    return-void
.end method

.method private updateImFeatures()V
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v2, "im"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGroupChatEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v0, v2, :cond_1

    .line 109
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    goto :goto_0

    .line 111
    :cond_1
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isGroupChatFullStandFwd()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFullSFGroupChat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    :cond_2
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isJoynIntegratedMessaging()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultMessageAppInUse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "support_cancel_message"

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 122
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v3, "plug-in"

    invoke-static {v0, v3, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPlugInEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 125
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_6
    :goto_1
    return-void
.end method

.method private updateMnoCustomizedFeatures()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCustomizedFeature(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCustomizedFeature(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_2
    return-void
.end method

.method private updateSlmFeatures()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string/jumbo v2, "slm"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-eq v0, v1, :cond_0

    .line 88
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_0
    return-void
.end method


# virtual methods
.method public updateExtendedBotMsgFeature(IJ)J
    .locals 0

    .line 67
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    .line 68
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 69
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateExtendedBotMsgFeature()V

    .line 70
    iget-wide p0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    return-wide p0
.end method

.method public updateFeatures(ILcom/sec/internal/ims/servicemodules/im/ImConfig;)J
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 47
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    .line 48
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 49
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 52
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateImFeatures()V

    .line 53
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateFtFeatures()V

    .line 54
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateSlmFeatures()V

    .line 55
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateGlsFeatures()V

    .line 56
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateChatBotFeatures()V

    .line 57
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateMnoCustomizedFeatures()V

    .line 58
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateExtendedBotMsgFeature()V

    .line 60
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateFeatures: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    invoke-static {v0, v1}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-wide p0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    return-wide p0

    .line 41
    :cond_2
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    const-string p2, "RCS is disabled."

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x40000000    # 2.0f

    const-string p2, "none"

    .line 42
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;)V

    return-wide v2
.end method
