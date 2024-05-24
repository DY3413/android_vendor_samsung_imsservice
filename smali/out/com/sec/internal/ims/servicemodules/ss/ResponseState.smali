.class public Lcom/sec/internal/ims/servicemodules/ss/ResponseState;
.super Lcom/sec/internal/helper/State;
.source "ResponseState.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

.field private mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    return-void
.end method

.method private cfAllInfoFromCache(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 270
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x5

    const/4 v4, 0x0

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    move v1, v4

    .line 274
    :goto_f
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v2

    array-length v5, v2

    move-object/from16 v6, p2

    move v7, v4

    :goto_17
    if-ge v7, v5, :cond_b3

    aget-object v8, v2, v7

    .line 275
    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MEDIA = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v9, -0x1

    const/4 v10, 0x0

    move v11, v1

    move v12, v9

    :goto_39
    const/4 v13, 0x4

    if-ge v11, v13, :cond_95

    .line 281
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v6, v11, v8}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v6

    .line 282
    sget-object v13, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v14, v14, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET RULE ID "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v14, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    if-nez v3, :cond_6e

    :goto_6c
    move v3, v4

    goto :goto_96

    :cond_6e
    if-ne v12, v9, :cond_75

    .line 290
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v12, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    goto :goto_7c

    .line 291
    :cond_75
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-eq v12, v3, :cond_7c

    goto :goto_6c

    :cond_7c
    :goto_7c
    if-nez v12, :cond_7f

    goto :goto_92

    :cond_7f
    if-nez v10, :cond_87

    .line 301
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    move-object v10, v3

    goto :goto_92

    .line 302
    :cond_87
    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_92

    goto :goto_6c

    :cond_92
    :goto_92
    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    :cond_95
    const/4 v3, 0x1

    :goto_96
    if-eqz v3, :cond_ad

    .line 309
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v9, "This target number is valid for CF ALL."

    invoke-static {v3, v8, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v3

    move-object/from16 v8, p1

    .line 311
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_af

    :cond_ad
    move-object/from16 v8, p1

    :goto_af
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_17

    :cond_b3
    return-void
.end method

.method private cfInfoFromCache()V
    .registers 14

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 202
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v4, 0x4

    const/4 v5, 0x5

    if-eq v3, v4, :cond_133

    if-ne v3, v5, :cond_16

    goto/16 :goto_133

    .line 215
    :cond_16
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    const-string v6, "] "

    const-string v7, "GET RULE ID ["

    if-eqz v4, :cond_6d

    .line 216
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_26
    if-ge v4, v3, :cond_f7

    aget-object v8, v1, v4

    .line 217
    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v8, v9, :cond_2f

    goto :goto_6a

    .line 220
    :cond_2f
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v10, v9, v8}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 221
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v11, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6a

    .line 224
    invoke-direct {p0, v9}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v8

    .line 225
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6a
    :goto_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 229
    :cond_6d
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 230
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a4

    .line 233
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v1

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_a4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 238
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_b0
    if-ge v4, v3, :cond_f7

    aget-object v8, v1, v4

    .line 239
    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v8, v9, :cond_b9

    goto :goto_f4

    .line 242
    :cond_b9
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v10, v9, v8}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v9

    .line 243
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v11, v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v11, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    iget-object v8, v9, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f4

    .line 246
    invoke-direct {p0, v9}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v8

    .line 247
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f4
    :goto_f4
    add-int/lit8 v4, v4, 0x1

    goto :goto_b0

    .line 253
    :cond_f7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_170

    .line 254
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 255
    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v8, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 257
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;

    move-result-object v1

    .line 258
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_170

    :cond_133
    :goto_133
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->cfAllInfoFromCache(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)V

    .line 205
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_170

    .line 206
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "There is no matched rule for CF ALL."

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "status"

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const-string/jumbo v2, "serviceClass"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v2, "condition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    return-void

    .line 262
    :cond_170
    :goto_170
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 263
    invoke-virtual {v1, v5}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 264
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    .line 265
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    new-array v1, v2, [Landroid/os/Bundle;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    return-void
.end method

.method private completeGetSdByRetry()V
    .registers 5

    .line 525
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->recoverUtProfileAfter404Retry()V

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-eq v1, v2, :cond_60

    const/16 v2, 0x66

    if-eq v1, v2, :cond_60

    const/16 v2, 0x68

    if-eq v1, v2, :cond_60

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_41

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_2b

    const/16 p0, 0x72

    if-eq v1, p0, :cond_26

    .line 550
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto :goto_87

    :cond_26
    const/4 p0, 0x1

    .line 537
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Z)V

    goto :goto_87

    .line 545
    :cond_2b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x4

    .line 546
    filled-new-array {v3, v1}, [I

    move-result-object v1

    const-string/jumbo v2, "queryClir"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 547
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto :goto_87

    .line 540
    :cond_41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 541
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v1, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v1

    const-string v2, "imsSsInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 542
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto :goto_87

    .line 530
    :cond_60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "status"

    .line 531
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const-string/jumbo v2, "serviceClass"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v2, "condition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    :goto_87
    return-void
.end method

.method private createRuleId(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 563
    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 564
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    const-string v2, "DBL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 565
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v5, :cond_51

    const-string v5, "$"

    .line 570
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_51
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_3d

    .line 575
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const-string/jumbo v3, "status"

    if-eqz v2, :cond_82

    .line 577
    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_85

    .line 579
    :cond_82
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 581
    :goto_85
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const-string v2, "condition"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 582
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_93
    return-object p0
.end method

.method private handleHttpResult()V
    .registers 8

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0xc

    const/16 v3, 0x74

    if-eq v0, v1, :cond_ce

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1a

    goto/16 :goto_ce

    .line 94
    :cond_1a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x194

    const/4 v4, 0x1

    if-ne v0, v1, :cond_58

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportSimservsRetry:Z

    if-eqz v1, :cond_94

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-eq v1, v3, :cond_94

    .line 97
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "Requested document is not found. Get simserv document."

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    .line 99
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 100
    iput v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 101
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 104
    :cond_58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_94

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    const/4 v5, 0x3

    if-ge v1, v5, :cond_94

    .line 106
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v6, 0x65

    if-eq v5, v6, :cond_87

    const/16 v6, 0x67

    if-eq v5, v6, :cond_87

    const/16 v6, 0x69

    if-eq v5, v6, :cond_87

    const/16 v6, 0x73

    if-eq v5, v6, :cond_7e

    goto :goto_94

    .line 117
    :cond_7e
    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    add-int/2addr v1, v4

    .line 118
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 119
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    :cond_87
    const/4 v2, -0x1

    .line 110
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    add-int/2addr v1, v4

    .line 111
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 113
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->clearCachedSsData(I)V

    .line 114
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 124
    :cond_94
    :goto_94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v1, v3, :cond_a3

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    if-eqz v0, :cond_a3

    .line 125
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->recoverUtProfileAfter404Retry()V

    .line 128
    :cond_a3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_cd

    .line 131
    :cond_c2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    :goto_cd
    return-void

    .line 79
    :cond_ce
    :goto_ce
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 80
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responsePutResult()V

    goto :goto_108

    .line 82
    :cond_de
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ee

    .line 83
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetResult()V

    goto :goto_108

    .line 85
    :cond_ee
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v1, v3, :cond_fd

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    if-eqz v0, :cond_fd

    .line 86
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->recoverUtProfileAfter404Retry()V

    .line 88
    :cond_fd
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    :goto_108
    return-void
.end method

.method private handleResponseSd()Z
    .registers 6

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8d

    .line 488
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    const-string v4, "Unknown access. mUsm.mPrevGetType: "

    if-eqz v2, :cond_62

    .line 489
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    const/16 v2, 0x68

    if-ne v1, v2, :cond_20

    .line 491
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x69

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 492
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    .line 493
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    goto :goto_8b

    :cond_20
    const/16 v2, 0x66

    if-ne v1, v2, :cond_30

    .line 495
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x67

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 496
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    .line 497
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    goto :goto_8b

    :cond_30
    const/16 v2, 0x64

    if-ne v1, v2, :cond_40

    .line 499
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x65

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 500
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 501
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    goto :goto_8b

    .line 503
    :cond_40
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 504
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 505
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->completeGetSdByRetry()V

    goto :goto_8b

    .line 507
    :cond_62
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    if-eqz v1, :cond_6a

    .line 508
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->completeGetSdByRetry()V

    goto :goto_8b

    .line 510
    :cond_6a
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    .line 511
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 512
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->completeGetSdByRetry()V

    :goto_8b
    const/4 p0, 0x1

    return p0

    :cond_8d
    return v3
.end method

.method private makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;
    .registers 4

    .line 639
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 641
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const-string/jumbo v1, "status"

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    .line 642
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_17

    :cond_13
    const/4 v0, 0x0

    .line 644
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 646
    :goto_17
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const-string v1, "condition"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 647
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertMediaTypeToSsClass(Ljava/util/List;)I

    move-result p1

    const-string/jumbo v0, "serviceClass"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private makeCFBundle(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;)Landroid/os/Bundle;
    .registers 9

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 591
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 592
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const/4 v3, 0x1

    const-string/jumbo v4, "status"

    const/4 v5, 0x0

    if-eqz v2, :cond_26

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 593
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_29

    .line 595
    :cond_26
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    :goto_29
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v4, "condition"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 600
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "ToA"

    if-eqz v2, :cond_52

    const/16 v2, 0x91

    .line 601
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_57

    :cond_52
    const/16 v2, 0x81

    .line 603
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    :goto_57
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 606
    sget-object v4, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    const/16 v6, 0x2b

    if-eq v0, v4, :cond_69

    sget-object v4, Lcom/sec/internal/constants/Mno;->VODAFONE_QATAR:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_73

    .line 607
    :cond_69
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_73

    .line 608
    invoke-static {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeInternationalNumber(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v2

    .line 612
    :cond_73
    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_83

    .line 613
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_83

    const-string v4, "+81"

    .line 614
    invoke-static {v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_83
    const-string v4, "number"

    .line 618
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_88
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertMediaTypeToSsClass(Ljava/util/List;)I

    move-result p1

    .line 622
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/16 v4, 0xff

    const-string/jumbo v5, "serviceClass"

    if-ne v0, v2, :cond_9f

    if-ne p1, v4, :cond_9f

    .line 623
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b6

    .line 624
    :cond_9f
    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_ab

    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_ab

    sget-object v2, Lcom/sec/internal/constants/Mno;->YOIGO_SPAIN:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_b3

    :cond_ab
    if-ne p1, v4, :cond_b3

    const/16 p1, 0x31

    .line 626
    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b6

    .line 629
    :cond_b3
    invoke-virtual {v1, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 632
    :goto_b6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz p0, :cond_c5

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    if-eqz p0, :cond_c5

    const-string p1, "NoReplyTimer"

    .line 633
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_c5
    return-object v1
.end method

.method private recoverUtProfileAfter404Retry()V
    .registers 3

    .line 555
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v0, -0x1

    .line 556
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    return-void
.end method

.method private responseGetFromCache()V
    .registers 15

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_181

    const/16 v1, 0x66

    const/16 v2, 0x68

    if-eq v0, v1, :cond_14

    if-eq v0, v2, :cond_14

    goto/16 :goto_184

    .line 323
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v4, v2, :cond_24

    .line 328
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    goto :goto_26

    .line 330
    :cond_24
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 333
    :goto_26
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    const/4 v6, 0x0

    const-string v7, "] "

    const-string v8, "GET RULE ID ["

    if-eqz v5, :cond_c3

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->noMediaForCB:Z

    if-nez v1, :cond_c3

    .line 334
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    array-length v3, v1

    move v5, v6

    :goto_3b
    if-ge v5, v3, :cond_80

    aget-object v9, v1, v5

    .line 335
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v9, v10, :cond_44

    goto :goto_7d

    .line 338
    :cond_44
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v4, v10, v9}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v10

    .line 339
    sget-object v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v12, v12, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v12, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    iget-object v9, v10, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7d

    .line 342
    invoke-direct {p0, v10}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v9

    .line 343
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7d
    :goto_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 347
    :cond_80
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 348
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    .line 349
    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->LOG_TAG:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15a

    .line 352
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v1

    .line 353
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15a

    .line 357
    :cond_c3
    iget v1, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v4, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    .line 358
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_fa

    .line 361
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->createRuleId(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Ljava/util/List;

    move-result-object v0

    goto :goto_109

    .line 362
    :cond_fa
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_109

    .line 363
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v1

    .line 364
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_109
    :goto_109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 368
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    array-length v3, v1

    move v5, v6

    :goto_115
    if-ge v5, v3, :cond_15a

    aget-object v9, v1, v5

    .line 369
    sget-object v10, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v9, v10, :cond_11e

    goto :goto_157

    .line 373
    :cond_11e
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v10, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v4, v10, v9}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v10

    .line 374
    sget-object v11, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v12, v12, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v12, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 376
    iget-object v9, v10, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_157

    .line 377
    invoke-direct {p0, v10}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->makeCBBundle(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;)Landroid/os/Bundle;

    move-result-object v9

    .line 378
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_157
    :goto_157
    add-int/lit8 v5, v5, 0x1

    goto :goto_115

    .line 386
    :cond_15a
    :goto_15a
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/4 v4, 0x1

    if-ne v3, v2, :cond_166

    .line 387
    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    goto :goto_168

    .line 389
    :cond_166
    iput-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    :goto_168
    const/4 v2, 0x5

    .line 391
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 392
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    new-array v1, v6, [Landroid/os/Bundle;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    goto :goto_184

    .line 319
    :cond_181
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->cfInfoFromCache()V

    :goto_184
    return-void
.end method

.method private responsePutResult()V
    .registers 11

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x6d

    const/16 v4, 0x9

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v2, v3, :cond_30

    .line 137
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string/jumbo v3, "ss_clir_pref"

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    goto :goto_6a

    :cond_30
    const/16 v3, 0x65

    if-ne v2, v3, :cond_4c

    .line 140
    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v3, v6, :cond_4c

    .line 142
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 144
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v0

    .line 142
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->copyRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    goto :goto_6a

    :cond_4c
    const/16 v3, 0x69

    if-ne v2, v3, :cond_6a

    .line 145
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    if-eqz v2, :cond_6a

    .line 146
    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    .line 147
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    const/16 v2, 0x67

    .line 148
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 149
    iput v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 150
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 156
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    const/4 v2, 0x7

    if-eqz v1, :cond_84

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    if-nez v1, :cond_84

    .line 157
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    return-void

    .line 161
    :cond_84
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    const/4 v3, 0x6

    if-eqz v1, :cond_98

    .line 162
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    return-void

    .line 166
    :cond_98
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    if-eqz v1, :cond_ef

    .line 167
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mUsm.mProfile.condition : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v9, v9, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v0, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v1, v6, :cond_ed

    if-ne v1, v3, :cond_c5

    goto :goto_ed

    :cond_c5
    const/16 v1, 0xf

    .line 171
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v3, 0x3f9

    const-wide/16 v4, 0x7ef4

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v3, v2, :cond_e0

    const/4 v2, 0x2

    .line 174
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 176
    :cond_e0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 169
    :cond_ed
    :goto_ed
    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    .line 183
    :cond_ef
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    if-eqz v1, :cond_104

    .line 184
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 186
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    return-void

    .line 190
    :cond_104
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedFirstGet:Z

    if-eqz v1, :cond_10d

    .line 191
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->clearCachedSsData(I)V

    .line 193
    :cond_10d
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 194
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    return-void
.end method

.method private sendHttp()V
    .registers 3

    .line 520
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 521
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .line 0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 35
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseState::ProcessMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 37
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_89

    const/4 v2, 0x3

    const/16 v4, 0xc

    if-eq v1, v2, :cond_83

    const/16 v2, 0x64

    if-eq v1, v2, :cond_7b

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_90

    goto :goto_8e

    :pswitch_3c
    return v2

    .line 43
    :pswitch_3d
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetFromCache()V

    goto :goto_8e

    .line 65
    :pswitch_41
    sget-object p1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v0, p1, :cond_49

    sget-object p1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, p1, :cond_56

    :cond_49
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    if-eqz p1, :cond_56

    .line 66
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    .line 67
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_56
    return v2

    .line 47
    :pswitch_57
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    .line 48
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 49
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 50
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v1, v2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_8e

    .line 52
    :cond_6b
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v4, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_8e

    .line 39
    :pswitch_71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 40
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->handleHttpResult()V

    goto :goto_8e

    .line 59
    :cond_7b
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 p1, 0x3f8

    invoke-virtual {p0, v4, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    goto :goto_8e

    .line 56
    :cond_83
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_8e

    .line 62
    :cond_89
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->disconnectPdn()V

    :goto_8e
    return v3

    nop

    :pswitch_data_90
    .packed-switch 0xa
        :pswitch_71
        :pswitch_57
        :pswitch_41
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method

.method public responseGetResult()V
    .registers 8

    .line 400
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;-><init>()V

    .line 402
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Print GET Result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v4, 0x64

    const/4 v5, 0x0

    if-eq v3, v4, :cond_125

    const/16 v4, 0x66

    const/16 v6, 0x68

    if-eq v3, v4, :cond_eb

    if-eq v3, v6, :cond_eb

    const/16 v4, 0x6a

    if-eq v3, v4, :cond_c2

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_7b

    const/16 v4, 0x72

    if-eq v3, v4, :cond_5c

    const/16 v0, 0x74

    if-eq v3, v0, :cond_4e

    goto/16 :goto_150

    .line 480
    :cond_4e
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->handleResponseSd()Z

    move-result v0

    if-eqz v0, :cond_55

    return-void

    .line 481
    :cond_55
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto/16 :goto_150

    .line 406
    :cond_5c
    iget-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    if-eqz v3, :cond_6a

    const/16 v0, 0x73

    .line 407
    iput v0, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 408
    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    .line 409
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 413
    :cond_6a
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallWaitingOrClip(Ljava/lang/String;)Z

    move-result v0

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Z)V

    goto/16 :goto_150

    .line 464
    :cond_7b
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseClir(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    .line 465
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 467
    aget v1, v0, v5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b0

    .line 468
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v3, "ss_clir_pref"

    invoke-virtual {v1, v2, v3, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v1

    aput v1, v0, v5

    .line 472
    :cond_b0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "queryClir"

    .line 473
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto/16 :goto_150

    .line 455
    :cond_c2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallWaitingOrClip(Ljava/lang/String;)Z

    move-result v0

    .line 457
    new-instance v1, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v1, v0}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v0

    .line 458
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "imsSsInfo"

    .line 459
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 460
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto :goto_150

    .line 430
    :cond_eb
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallBarring(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v3, v6, :cond_10f

    .line 433
    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 434
    iget-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    if-eqz v0, :cond_121

    const/16 v0, 0x69

    .line 435
    iput v0, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 436
    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 437
    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    .line 438
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 442
    :cond_10f
    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 443
    iget-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    if-eqz v0, :cond_121

    const/16 v0, 0x67

    .line 444
    iput v0, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 445
    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 446
    iput-boolean v5, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    .line 447
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 451
    :cond_121
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetFromCache()V

    goto :goto_150

    .line 417
    :cond_125
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mResponseData:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseCallForwarding(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 419
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->mUsm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    if-eqz v1, :cond_14d

    .line 420
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x65

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 421
    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    .line 422
    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    .line 423
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->sendHttp()V

    return-void

    .line 426
    :cond_14d
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;->responseGetFromCache()V

    :goto_150
    return-void
.end method
