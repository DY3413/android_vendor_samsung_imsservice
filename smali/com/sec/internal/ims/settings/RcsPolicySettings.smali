.class public Lcom/sec/internal/ims/settings/RcsPolicySettings;
.super Ljava/lang/Object;
.source "RcsPolicySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicy;,
        Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsPolicySettings"

.field private static final RCS_AS_POLICY:Ljava/lang/String; = "rcs_as_policy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mPhoneId:I

.field private mRcsPolicy:Lcom/google/gson/JsonElement;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mContext:Landroid/content/Context;

    .line 381
    sget-object v0, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    iput-object v0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    .line 386
    iput-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mContext:Landroid/content/Context;

    .line 387
    iput p2, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    .line 388
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0x12c

    invoke-direct {p2, p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const/4 p1, 0x0

    .line 389
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->load(Z)Z

    return-void
.end method


# virtual methods
.method public load(Z)Z
    .locals 12

    .line 393
    iget v0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    .line 394
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->getPolicyType(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 396
    iget-object v2, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    const-string v3, ""

    const-string v4, "policy_name"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 399
    :goto_0
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    const-string v0, "policy not changed skip reloading"

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v5

    .line 408
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load from rcspolicy.json "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 411
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f06000b

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :try_start_1
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 413
    new-instance v6, Lcom/google/gson/stream/JsonReader;

    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v6, v7}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 414
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 415
    invoke-virtual {v6}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 416
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 421
    :cond_2
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v2, "default_rcs_policy"

    .line 422
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    const-string v7, "default_up_policy"

    .line 423
    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    .line 424
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_3

    .line 431
    :cond_3
    invoke-static {v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->fromString(Ljava/lang/String;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isUp()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v2, v7

    move-object v6, v8

    :cond_4
    const-string v5, "rcs_policy"

    .line 436
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 437
    sget-object v5, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 439
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    .line 440
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 441
    invoke-static {v1, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v5, v8

    .line 448
    :cond_6
    sget-object v7, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne v5, v7, :cond_7

    .line 451
    iget-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v4, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No policy for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in rcspolicy.json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v4, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_1

    .line 452
    :cond_7
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v9, "rcs_as_policy"

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 454
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 455
    iget-object v8, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v9, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "use RCS AS policy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 456
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    .line 457
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 458
    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v7, v8

    .line 466
    :cond_9
    :goto_1
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    if-ne v7, p1, :cond_a

    .line 467
    iget-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v4, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    const-string v8, "No rcsAsPolicy in rcspolicy.json"

    invoke-virtual {p1, v4, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 470
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    invoke-static {p1, v4}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object p1

    .line 472
    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->isUp()Z

    move-result v0

    invoke-virtual {p1, v6, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getRcsDefaultPolicyUpdate(Lcom/google/gson/JsonElement;Z)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 473
    invoke-virtual {p1, v7, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getRcsPolicyUpdate(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 474
    invoke-virtual {p1, v5, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getRcsPolicyUpdate(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 476
    invoke-static {p1}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 477
    iget-object v2, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v4, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "policy updated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 478
    invoke-static {v3}, Lcom/sec/internal/helper/JsonUtil;->isValidJsonElement(Lcom/google/gson/JsonElement;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 479
    invoke-static {v3, p1}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 481
    :cond_b
    invoke-static {v0, p1}, Lcom/sec/internal/helper/JsonUtil;->merge(Lcom/google/gson/JsonElement;Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    goto :goto_2

    .line 483
    :cond_c
    iget-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "policy not valid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " use updated default policy "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 485
    iput-object v0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    :goto_2
    const/4 p0, 0x1

    return p0

    .line 425
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mPhoneId:I

    const-string v0, "load: No default_rcs_policy or default_up_policy. load failed"

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v5

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_e

    .line 411
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_4
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 417
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v5
.end method

.method public readBool(Ljava/lang/String;)Z
    .locals 3

    .line 494
    iget-object p0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 495
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    .line 502
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readBool:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 498
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readBool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public readInt(Ljava/lang/String;)I
    .locals 3

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 509
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    .line 516
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readInt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 512
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readInt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 522
    iget-object p0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 523
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    .line 530
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 526
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public readStringArray(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    iget-object p0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->mRcsPolicy:Lcom/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    .line 537
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "readStringArray: "

    if-eqz v1, :cond_0

    .line 538
    sget-object v1, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 540
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
