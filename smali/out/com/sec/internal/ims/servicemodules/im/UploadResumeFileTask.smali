.class public Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;
.super Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;
.source "UploadResumeFileTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UploadResumeFileTask"


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)V
    .registers 5

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)V

    .line 57
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "phoneId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;)Z
    .registers 1

    .line 52
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result p0

    return p0
.end method

.method private doResumeFile(Ljava/net/URL;JJJ)Z
    .registers 32

    move-object/from16 v1, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    const-string v13, " IOException happened."

    .line 203
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doResumeFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p6

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 205
    iput-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 208
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 210
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v16, v7

    move-wide/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/helper/HttpRequest;->contentRange(JJJ)Lcom/sec/internal/helper/HttpRequest;

    const/4 v8, 0x0

    .line 213
    :try_start_4a
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_50} :catch_37c

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc8

    const-string v7, " happened. Retry Upload Task."

    if-eq v2, v3, :cond_12e

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_d2

    const/16 v3, 0x191

    if-eq v2, v3, :cond_9f

    const/16 v0, 0x194

    if-eq v2, v0, :cond_93

    const/16 v0, 0x19a

    if-eq v2, v0, :cond_93

    .line 264
    :try_start_88
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 265
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v0, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    return v8

    .line 244
    :cond_93
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 245
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    return v8

    :cond_9f
    const/4 v3, 0x1

    .line 230
    iget v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PUT"

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 233
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 234
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v0, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    return v8

    .line 237
    :cond_bf
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    .line 238
    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/HttpRequest;->useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v3

    .line 239
    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    goto :goto_134

    .line 249
    :cond_d2
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 250
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10b

    .line 251
    new-instance v2, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v6, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;
    :try_end_e8
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_88 .. :try_end_e8} :catch_128
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_e8} :catch_124

    :try_start_e8
    iget-object v8, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move/from16 v23, v4

    invoke-direct/range {v18 .. v23}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10b

    .line 254
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 255
    invoke-static {v2}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    goto :goto_134

    :cond_10b
    const-string v2, "doResumeFile: OpenId process failed!"

    .line 259
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 261
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;
    :try_end_117
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_e8 .. :try_end_117} :catch_348
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e8 .. :try_end_117} :catch_325

    const/4 v2, 0x0

    :try_start_118
    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_11b
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_118 .. :try_end_11b} :catch_120
    .catch Ljava/lang/IllegalArgumentException; {:try_start_118 .. :try_end_11b} :catch_11c

    return v2

    :catch_11c
    move-exception v0

    move v15, v2

    goto/16 :goto_327

    :catch_120
    move-exception v0

    move v15, v2

    move-object v14, v7

    goto :goto_12b

    :catch_124
    move-exception v0

    move v15, v8

    goto/16 :goto_327

    :catch_128
    move-exception v0

    move-object v14, v7

    move v15, v8

    :goto_12b
    const/4 v2, -0x1

    goto/16 :goto_34c

    .line 226
    :cond_12e
    :try_start_12e
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/HttpRequest;->put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2
    :try_end_132
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_12e .. :try_end_132} :catch_348
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12e .. :try_end_132} :catch_325

    :try_start_132
    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;
    :try_end_134
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_132 .. :try_end_134} :catch_320
    .catch Ljava/lang/IllegalArgumentException; {:try_start_132 .. :try_end_134} :catch_325

    .line 283
    :goto_134
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    const-wide/16 v18, 0x14

    div-long v2, v2, v18

    move-object v6, v5

    const-wide/32 v4, 0xf000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0x7d000

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 288
    :try_start_14c
    new-instance v8, Ljava/io/BufferedInputStream;
    :try_end_14e
    .catch Ljava/lang/NullPointerException; {:try_start_14c .. :try_end_14e} :catch_314
    .catch Ljava/io/FileNotFoundException; {:try_start_14c .. :try_end_14e} :catch_314
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14e} :catch_2fe

    :try_start_14e
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v8, v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_15f
    .catch Ljava/lang/NullPointerException; {:try_start_14e .. :try_end_15f} :catch_2fa
    .catch Ljava/io/FileNotFoundException; {:try_start_14e .. :try_end_15f} :catch_2fa
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_15f} :catch_2fe

    .line 290
    :try_start_15f
    invoke-virtual {v8, v9, v10}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v3
    :try_end_163
    .catch Ljava/lang/NullPointerException; {:try_start_15f .. :try_end_163} :catch_2fa
    .catch Ljava/io/FileNotFoundException; {:try_start_15f .. :try_end_163} :catch_2fa
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_163} :catch_2f5

    cmp-long v5, v3, v9

    if-gez v5, :cond_1a9

    .line 294
    :try_start_167
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16a
    .catch Ljava/lang/NullPointerException; {:try_start_167 .. :try_end_16a} :catch_16b
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16a} :catch_16b

    goto :goto_16f

    :catch_16b
    move-exception v0

    .line 297
    :try_start_16c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    :goto_16f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Try to skip "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bytes actually skipped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    :try_end_194
    .catch Ljava/lang/NullPointerException; {:try_start_16c .. :try_end_194} :catch_314
    .catch Ljava/io/FileNotFoundException; {:try_start_16c .. :try_end_194} :catch_314
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_194} :catch_1a4

    const/4 v3, 0x0

    const/4 v5, -0x1

    :try_start_196
    invoke-virtual {v1, v0, v5, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_199
    .catch Ljava/lang/NullPointerException; {:try_start_196 .. :try_end_199} :catch_19f
    .catch Ljava/io/FileNotFoundException; {:try_start_196 .. :try_end_199} :catch_19f
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_199} :catch_19a

    return v3

    :catch_19a
    move-exception v0

    move v15, v3

    move-object v7, v8

    goto/16 :goto_302

    :catch_19f
    move-exception v0

    move v15, v3

    move v2, v5

    goto/16 :goto_317

    :catch_1a4
    move-exception v0

    move-object v7, v8

    const/4 v15, 0x0

    goto/16 :goto_302

    :cond_1a9
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 323
    :try_start_1ab
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;
    :try_end_1ad
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1ab .. :try_end_1ad} :catch_29f
    .catch Ljava/lang/IllegalStateException; {:try_start_1ab .. :try_end_1ad} :catch_281
    .catchall {:try_start_1ab .. :try_end_1ad} :catchall_27e

    :try_start_1ad
    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentType:Ljava/lang/String;

    if-eqz v3, :cond_1b2

    goto :goto_1bc

    .line 326
    :cond_1b2
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFileName:Ljava/lang/String;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentUri:Landroid/net/Uri;

    invoke-static {v3, v5, v4}, Lcom/sec/internal/helper/FileUtils;->getContentType(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 329
    :goto_1bc
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 330
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/HttpRequest;->bufferSize(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    .line 331
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->contentType(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    sub-long v3, v11, v9

    const-wide/16 v18, 0x1

    add-long v3, v3, v18

    .line 332
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->contentLength(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2
    :try_end_1d7
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1ad .. :try_end_1d7} :catch_279
    .catch Ljava/lang/IllegalStateException; {:try_start_1ad .. :try_end_1d7} :catch_275
    .catchall {:try_start_1ad .. :try_end_1d7} :catchall_27e

    const/4 v5, 0x1

    const/16 v11, 0x1e

    const/4 v12, 0x0

    move-wide/from16 v3, p2

    move/from16 v16, v5

    move-object v12, v6

    const/4 v11, 0x3

    const/16 v17, -0x1

    move-wide/from16 v5, p4

    move-object v14, v7

    move-object v11, v8

    const/4 v15, 0x0

    move-wide/from16 v7, p6

    .line 333
    :try_start_1ea
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/helper/HttpRequest;->contentRange(JJJ)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;

    invoke-direct {v3, v1, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;J)V

    .line 334
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/HttpRequest;->progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;

    .line 358
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2, v11}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result v2
    :try_end_1ff
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1ea .. :try_end_1ff} :catch_273
    .catch Ljava/lang/IllegalStateException; {:try_start_1ea .. :try_end_1ff} :catch_271
    .catchall {:try_start_1ea .. :try_end_1ff} :catchall_2e3

    if-eqz v2, :cond_212

    .line 387
    :try_start_201
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_204
    .catch Ljava/io/IOException; {:try_start_201 .. :try_end_204} :catch_205

    goto :goto_20a

    .line 390
    :catch_205
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_20a
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_211

    .line 393
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_211
    return v15

    :cond_212
    :try_start_212
    const-string v2, "Upload file done. Read http response."

    .line 364
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->ok()Z

    move-result v2

    if-nez v2, :cond_25b

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doResumeFile: Failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v0, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_24a
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_212 .. :try_end_24a} :catch_273
    .catch Ljava/lang/IllegalStateException; {:try_start_212 .. :try_end_24a} :catch_271
    .catchall {:try_start_212 .. :try_end_24a} :catchall_2e3

    .line 387
    :try_start_24a
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_24d
    .catch Ljava/io/IOException; {:try_start_24a .. :try_end_24d} :catch_24e

    goto :goto_253

    .line 390
    :catch_24e
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_253
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_25a

    .line 393
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_25a
    return v15

    :cond_25b
    :try_start_25b
    const-string v2, "doResumeFile: Success"

    .line 371
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_260
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_25b .. :try_end_260} :catch_273
    .catch Ljava/lang/IllegalStateException; {:try_start_25b .. :try_end_260} :catch_271
    .catchall {:try_start_25b .. :try_end_260} :catchall_2e3

    .line 387
    :try_start_260
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_263
    .catch Ljava/io/IOException; {:try_start_260 .. :try_end_263} :catch_264

    goto :goto_269

    .line 390
    :catch_264
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_269
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_270

    .line 393
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_270
    return v16

    :catch_271
    move-exception v0

    goto :goto_284

    :catch_273
    move-exception v0

    goto :goto_2a3

    :catch_275
    move-exception v0

    move-object v11, v8

    const/4 v15, 0x0

    goto :goto_284

    :catch_279
    move-exception v0

    move-object v14, v7

    move-object v11, v8

    const/4 v15, 0x0

    goto :goto_2a3

    :catchall_27e
    move-exception v0

    move-object v11, v8

    goto :goto_2e4

    :catch_281
    move-exception v0

    move v15, v3

    move-object v11, v8

    .line 383
    :goto_284
    :try_start_284
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 384
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_28e
    .catchall {:try_start_284 .. :try_end_28e} :catchall_2e3

    .line 387
    :try_start_28e
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_291
    .catch Ljava/io/IOException; {:try_start_28e .. :try_end_291} :catch_292

    goto :goto_297

    .line 390
    :catch_292
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_297
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_2e2

    .line 393
    :goto_29b
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    goto :goto_2e2

    :catch_29f
    move-exception v0

    move v15, v3

    move-object v14, v7

    move-object v11, v8

    .line 375
    :goto_2a3
    :try_start_2a3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 376
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v2

    if-eqz v2, :cond_2b5

    .line 377
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v2, 0x1e

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_2d4

    .line 379
    :cond_2b5
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v2, v3, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_2d4
    .catchall {:try_start_2a3 .. :try_end_2d4} :catchall_2e3

    .line 387
    :goto_2d4
    :try_start_2d4
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2d7
    .catch Ljava/io/IOException; {:try_start_2d4 .. :try_end_2d7} :catch_2d8

    goto :goto_2dd

    .line 390
    :catch_2d8
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_2dd
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v0, :cond_2e2

    goto :goto_29b

    :cond_2e2
    :goto_2e2
    return v15

    :catchall_2e3
    move-exception v0

    .line 387
    :goto_2e4
    :try_start_2e4
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2e7
    .catch Ljava/io/IOException; {:try_start_2e4 .. :try_end_2e7} :catch_2e8

    goto :goto_2ed

    .line 390
    :catch_2e8
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_2ed
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_2f4

    .line 393
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 395
    :cond_2f4
    throw v0

    :catch_2f5
    move-exception v0

    move-object v11, v8

    const/4 v15, 0x0

    move-object v7, v11

    goto :goto_302

    :catch_2fa
    move-exception v0

    const/4 v15, 0x0

    const/4 v2, -0x1

    goto :goto_317

    :catch_2fe
    move-exception v0

    const/4 v15, 0x0

    move-object/from16 v7, v16

    .line 308
    :goto_302
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 311
    :try_start_305
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_308
    .catch Ljava/lang/NullPointerException; {:try_start_305 .. :try_end_308} :catch_309
    .catch Ljava/io/IOException; {:try_start_305 .. :try_end_308} :catch_309

    goto :goto_30d

    :catch_309
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    :goto_30d
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    return v15

    :catch_314
    move-exception v0

    const/4 v2, -0x1

    const/4 v15, 0x0

    .line 304
    :goto_317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v0, v2, v2, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    return v15

    :catch_320
    move-exception v0

    move-object v14, v7

    const/4 v15, 0x0

    goto/16 :goto_12b

    :catch_325
    move-exception v0

    const/4 v15, 0x0

    .line 278
    :goto_327
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " happened. Cancel resume."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    return v15

    :catch_348
    move-exception v0

    move-object v14, v7

    const/4 v2, -0x1

    const/4 v15, 0x0

    .line 269
    :goto_34c
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 270
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v3

    if-eqz v3, :cond_35d

    .line 271
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x1e

    invoke-virtual {v1, v0, v3, v2, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_37b

    .line 273
    :cond_35d
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3, v2, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    :goto_37b
    return v15

    :catch_37c
    move-exception v0

    move v15, v8

    const/4 v2, -0x1

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v0, v2, v2, v15}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    return v15
.end method

.method private getRequestUrl()Ljava/lang/String;
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 66
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5b

    .line 68
    :cond_34
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    goto :goto_5b

    .line 71
    :cond_39
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5b

    .line 74
    :cond_57
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    :goto_5b
    return-object p0
.end method

.method private getUploadInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .registers 23

    move-object/from16 v1, p0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&get_upload_info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 84
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUploadInfo: params="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 85
    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 89
    :try_start_41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v10, v10, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v9

    iput-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 92
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;
    :try_end_5f
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_41 .. :try_end_5f} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_5f} :catch_23c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_41 .. :try_end_5f} :catch_23c
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_5f} :catch_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41 .. :try_end_5f} :catch_22d
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_5f} :catch_22d
    .catchall {:try_start_41 .. :try_end_5f} :catchall_22a

    const-string v10, "mHttpRequest is null"

    if-nez v9, :cond_73

    .line 93
    :try_start_63
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_6b
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_63 .. :try_end_6b} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_6b} :catch_23c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_63 .. :try_end_6b} :catch_23c
    .catch Ljava/lang/NullPointerException; {:try_start_63 .. :try_end_6b} :catch_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_63 .. :try_end_6b} :catch_22d
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6b} :catch_22d
    .catchall {:try_start_63 .. :try_end_6b} :catchall_22a

    .line 193
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_72

    .line 194
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_72
    return-object v4

    .line 99
    :cond_73
    :try_start_73
    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v9
    :try_end_77
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_73 .. :try_end_77} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_77} :catch_23c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_73 .. :try_end_77} :catch_23c
    .catch Ljava/lang/NullPointerException; {:try_start_73 .. :try_end_77} :catch_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_77} :catch_22d
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_77} :catch_22d
    .catchall {:try_start_73 .. :try_end_77} :catchall_22a

    const-string v11, " "

    const-string v12, "fthttp_upload_resume_from_the_start"

    const/16 v13, 0x1f7

    const/16 v14, 0xc8

    if-eq v9, v14, :cond_1a1

    const/16 v15, 0x12e

    if-eq v9, v15, :cond_147

    const/16 v15, 0x191

    if-eq v9, v15, :cond_de

    if-eq v9, v13, :cond_be

    .line 154
    :try_start_8b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUploadInfo: Receive "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_b6
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_8b .. :try_end_b6} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_b6} :catch_23c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8b .. :try_end_b6} :catch_23c
    .catch Ljava/lang/NullPointerException; {:try_start_8b .. :try_end_b6} :catch_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_b6} :catch_22d
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_b6} :catch_22d
    .catchall {:try_start_8b .. :try_end_b6} :catchall_22a

    .line 193
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_bd

    .line 194
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_bd
    return-object v4

    :cond_be
    :try_start_be
    const-string v2, "Receive 503 Unavailable"

    .line 127
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    invoke-interface {v2, v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 129
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v9, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_d6

    .line 131
    :cond_d1
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_d6
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_be .. :try_end_d6} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_d6} :catch_23c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_be .. :try_end_d6} :catch_23c
    .catch Ljava/lang/NullPointerException; {:try_start_be .. :try_end_d6} :catch_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_be .. :try_end_d6} :catch_22d
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_d6} :catch_22d
    .catchall {:try_start_be .. :try_end_d6} :catchall_22a

    .line 193
    :goto_d6
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_dd

    .line 194
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_dd
    return-object v4

    .line 107
    :cond_de
    :try_start_de
    iget v15, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v14, "GET"

    invoke-virtual {v1, v15, v13, v4, v14}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_103

    goto/16 :goto_1a6

    .line 111
    :cond_103
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v9}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 113
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v13, v13, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 115
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    .line 116
    invoke-virtual {v2, v6}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 118
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-nez v2, :cond_142

    .line 119
    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_139
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_de .. :try_end_139} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_de .. :try_end_139} :catch_23c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_de .. :try_end_139} :catch_23c
    .catch Ljava/lang/NullPointerException; {:try_start_de .. :try_end_139} :catch_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_de .. :try_end_139} :catch_22d
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_139} :catch_22d
    .catchall {:try_start_de .. :try_end_139} :catchall_22a

    .line 193
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_140

    .line 194
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_140
    const/4 v1, 0x0

    return-object v1

    .line 123
    :cond_142
    :try_start_142
    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v9

    goto :goto_1a6

    .line 136
    :cond_147
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v4, "Location"

    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 137
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18e

    .line 138
    new-instance v2, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v10, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    iget-object v13, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object/from16 v16, v2

    move/from16 v17, v4

    move-object/from16 v19, v10

    move-object/from16 v20, v13

    move/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18e

    .line 141
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 142
    invoke-static {v2}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 144
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2, v6}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 145
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v9

    goto :goto_1a6

    :cond_18e
    const-string v2, "getUploadInfo: openId process failed"

    .line 149
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_198
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_142 .. :try_end_198} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_142 .. :try_end_198} :catch_23c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_142 .. :try_end_198} :catch_23c
    .catch Ljava/lang/NullPointerException; {:try_start_142 .. :try_end_198} :catch_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_142 .. :try_end_198} :catch_22d
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_198} :catch_22d
    .catchall {:try_start_142 .. :try_end_198} :catchall_22a

    .line 193
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_19f

    .line 194
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_19f
    const/4 v1, 0x0

    return-object v1

    :cond_1a1
    :try_start_1a1
    const-string v2, "Receive 200 OK"

    .line 103
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a6
    const/16 v2, 0xc8

    if-ne v2, v9, :cond_1da

    const-string v2, "getUploadInfo: Success"

    .line 160
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v2

    .line 162
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUploadInfo: Received. body="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parseResume(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object v2
    :try_end_1d2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1a1 .. :try_end_1d2} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a1 .. :try_end_1d2} :catch_23c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a1 .. :try_end_1d2} :catch_23c
    .catch Ljava/lang/NullPointerException; {:try_start_1a1 .. :try_end_1d2} :catch_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a1 .. :try_end_1d2} :catch_22d
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1d2} :catch_22d
    .catchall {:try_start_1a1 .. :try_end_1d2} :catchall_22a

    .line 193
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_1d9

    .line 194
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_1d9
    return-object v2

    .line 167
    :cond_1da
    :try_start_1da
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUploadInfo: Failed, Receive "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v4}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1f7

    if-ne v2, v9, :cond_220

    .line 169
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    invoke-interface {v2, v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_212

    .line 170
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v9, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_217

    .line 172
    :cond_212
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_217
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1da .. :try_end_217} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1da .. :try_end_217} :catch_23c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1da .. :try_end_217} :catch_23c
    .catch Ljava/lang/NullPointerException; {:try_start_1da .. :try_end_217} :catch_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1da .. :try_end_217} :catch_22d
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_217} :catch_22d
    .catchall {:try_start_1da .. :try_end_217} :catchall_22a

    .line 193
    :goto_217
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_21e

    .line 194
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_21e
    const/4 v1, 0x0

    return-object v1

    .line 176
    :cond_220
    :try_start_220
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1, v2, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_225
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_220 .. :try_end_225} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_220 .. :try_end_225} :catch_23c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_220 .. :try_end_225} :catch_23c
    .catch Ljava/lang/NullPointerException; {:try_start_220 .. :try_end_225} :catch_23c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_220 .. :try_end_225} :catch_22d
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_225} :catch_22d
    .catchall {:try_start_220 .. :try_end_225} :catchall_22a

    .line 193
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_24d

    goto :goto_24a

    :catchall_22a
    move-exception v0

    move-object v2, v0

    goto :goto_287

    :catch_22d
    move-exception v0

    move-object v2, v0

    .line 190
    :try_start_22f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_237
    .catchall {:try_start_22f .. :try_end_237} :catchall_22a

    .line 193
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_24d

    goto :goto_24a

    :catch_23c
    move-exception v0

    move-object v2, v0

    .line 187
    :try_start_23e
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v7, v7, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_246
    .catchall {:try_start_23e .. :try_end_246} :catchall_22a

    .line 193
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_24d

    .line 194
    :goto_24a
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_24d
    const/4 v1, 0x0

    goto :goto_286

    :catch_24f
    move-exception v0

    move-object v2, v0

    .line 179
    :try_start_251
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 180
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v3

    if-eqz v3, :cond_262

    .line 181
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v7, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_281

    .line 183
    :cond_262
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " happened. Retry Upload Task."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v1, v2, v5, v7, v6}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_281
    .catchall {:try_start_251 .. :try_end_281} :catchall_22a

    .line 193
    :goto_281
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_24d

    goto :goto_24a

    :goto_286
    return-object v1

    :goto_287
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz v1, :cond_28e

    .line 194
    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 196
    :cond_28e
    throw v2
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Long;
    .registers 16

    .line 480
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 481
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v2, "mMnoStrategy is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 483
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 486
    :cond_19
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 487
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 489
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    .line 493
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getUploadInfo()Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object v2

    if-nez v2, :cond_50

    const-string v1, "Failed to get upload info."

    .line 495
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 500
    :cond_50
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v7, v7, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    cmp-long v3, v3, v7

    const/4 v4, 0x1

    if-lez v3, :cond_7b

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploaded over than requested size.  : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    move v1, v4

    goto :goto_a9

    .line 503
    :cond_7b
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v9, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    cmp-long v3, v7, v9

    if-nez v3, :cond_8e

    const-string v1, "Already uploaded."

    .line 504
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 507
    :cond_8e
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getUrl()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_a9

    .line 508
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getUrl()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;->getEnd()J

    move-result-wide v0

    add-long v9, v0, v5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v13, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    sub-long v11, v13, v5

    move-object v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->doResumeFile(Ljava/net/URL;JJJ)Z

    move-result v1

    :cond_a9
    :goto_a9
    if-eqz v1, :cond_b8

    .line 513
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getDownloadInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 516
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onCompleted(Ljava/lang/String;)V

    .line 520
    :cond_b8
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->doInBackground()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected getDownloadInfo()Ljava/lang/String;
    .registers 15

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&get_download_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 403
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadInfo: params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 406
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 410
    :try_start_57
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v5
    :try_end_5d
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_57 .. :try_end_5d} :catch_1b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_5d} :catch_186
    .catchall {:try_start_57 .. :try_end_5d} :catchall_184

    const-string v6, " "

    const/16 v7, 0xc8

    if-eq v5, v7, :cond_13a

    const/16 v8, 0x12e

    if-eq v5, v8, :cond_ef

    const/16 v8, 0x191

    if-eq v5, v8, :cond_99

    .line 447
    :try_start_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_6b .. :try_end_91} :catch_1b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_91} :catch_186
    .catchall {:try_start_6b .. :try_end_91} :catchall_184

    .line 470
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_98

    .line 471
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_98
    return-object v2

    .line 417
    :cond_99
    :try_start_99
    iget v8, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v11, v11, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "GET"

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 418
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_be

    goto/16 :goto_13f

    .line 421
    :cond_be
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 424
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 425
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0, v8}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 426
    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v5

    goto :goto_13f

    .line 430
    :cond_ef
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v5, "Location"

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 431
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12d

    .line 432
    new-instance v0, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v11, v5, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    iget-object v12, v5, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-boolean v13, v5, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12d

    .line 435
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 436
    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 437
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v5

    goto :goto_13f

    :cond_12d
    const-string v0, "getDownloadInfo: OPenID Process failed!"

    .line 443
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_132
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_99 .. :try_end_132} :catch_1b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_132} :catch_186
    .catchall {:try_start_99 .. :try_end_132} :catchall_184

    .line 470
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_139

    .line 471
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_139
    return-object v2

    :cond_13a
    :try_start_13a
    const-string v0, "Receive 200 OK"

    .line 413
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13f
    if-ne v7, v5, :cond_154

    const-string v0, "getDownloadInfo: Success"

    .line 452
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v0
    :try_end_14c
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_13a .. :try_end_14c} :catch_1b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13a .. :try_end_14c} :catch_186
    .catchall {:try_start_13a .. :try_end_14c} :catchall_184

    .line 470
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_153

    .line 471
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_153
    return-object v0

    .line 455
    :cond_154
    :try_start_154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDownloadInfo: Failed, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v5}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, v0, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    :try_end_17f
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_154 .. :try_end_17f} :catch_1b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_154 .. :try_end_17f} :catch_186
    .catchall {:try_start_154 .. :try_end_17f} :catchall_184

    .line 470
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_1e9

    goto :goto_1e6

    :catchall_184
    move-exception v0

    goto :goto_1ea

    :catch_186
    move-exception v0

    .line 467
    :try_start_187
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDownloadInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " happened. Cancel."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v0, v3, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_1ab
    .catchall {:try_start_187 .. :try_end_1ab} :catchall_184

    .line 470
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_1e9

    goto :goto_1e6

    :catch_1b0
    move-exception v0

    .line 459
    :try_start_1b1
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 460
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 461
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_1e2

    .line 463
    :cond_1c2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " happened. Retry Upload Task."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_1e2
    .catchall {:try_start_1b1 .. :try_end_1e2} :catchall_184

    .line 470
    :goto_1e2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_1e9

    .line 471
    :goto_1e6
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    :cond_1e9
    return-object v2

    .line 470
    :goto_1ea
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-eqz p0, :cond_1f1

    .line 471
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 473
    :cond_1f1
    throw v0
.end method
