.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# static fields
.field private static bmparse:Z = true

.field private static ignoreMissingBoundaryParameter:Z = true

.field private static ignoreMissingEndBoundary:Z = true


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected parsed:Z

.field private preamble:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    .line 108
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_3c

    const/4 v1, 0x0

    const-string v2, "false"

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    .line 112
    :try_start_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v3

    .line 111
    :goto_15
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 113
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    goto :goto_28

    :cond_27
    move v0, v3

    .line 116
    :goto_28
    sput-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    const-string v0, "mail.mime.multipart.bmparse"

    .line 118
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3a

    :cond_39
    move v1, v3

    :goto_3a
    sput-boolean v1, Ljavax/mail/internet/MimeMultipart;->bmparse:Z
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_3c} :catch_3c

    :catch_3c
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "mixed"

    .line 161
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 173
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v2, Ljavax/mail/internet/ContentType;

    const-string v3, "multipart"

    invoke-direct {v2, v3, p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    const-string p1, "boundary"

    .line 179
    invoke-virtual {v2, p1, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 143
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 149
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 204
    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_1f

    .line 205
    move-object v0, p1

    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    .line 209
    :cond_1f
    instance-of v0, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v0, :cond_29

    .line 211
    check-cast p1, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, p1}, Ljavax/mail/Multipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    return-void

    :cond_29
    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 218
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 219
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized parsebm()V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 718
    :try_start_3
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_34d

    if-eqz v0, :cond_9

    .line 719
    monitor-exit p0

    return-void

    .line 726
    :cond_9
    :try_start_9
    iget-object v0, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 727
    instance-of v2, v0, Ljava/io/ByteArrayInputStream;

    if-nez v2, :cond_21

    .line 728
    instance-of v2, v0, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_21

    .line 729
    instance-of v2, v0, Ljavax/mail/internet/SharedInputStream;

    if-nez v2, :cond_21

    .line 730
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_20} :catch_344
    .catchall {:try_start_9 .. :try_end_20} :catchall_34d

    goto :goto_22

    :cond_21
    move-object v2, v0

    .line 734
    :goto_22
    :try_start_22
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_2a

    .line 735
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 737
    :goto_2b
    new-instance v4, Ljavax/mail/internet/ContentType;

    iget-object v5, v1, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v5, "boundary"

    .line 739
    invoke-virtual {v4, v5}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 741
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4e

    .line 742
    :cond_49
    sget-boolean v4, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_34d

    if-eqz v4, :cond_33c

    const/4 v4, 0x0

    .line 747
    :goto_4e
    :try_start_4e
    new-instance v5, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v5, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 751
    :goto_55
    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v8, :cond_62

    goto :goto_8e

    .line 759
    :cond_62
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v13

    :goto_67
    if-gez v14, :cond_6a

    goto :goto_72

    .line 760
    :cond_6a
    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v10, :cond_31c

    if-eq v15, v9, :cond_31c

    :goto_72
    add-int/lit8 v14, v14, 0x1

    .line 764
    invoke-virtual {v8, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_85

    .line 766
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_81

    goto :goto_8e

    :cond_81
    move-object/from16 v26, v5

    goto/16 :goto_2f0

    :cond_85
    const-string v14, "--"

    .line 774
    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_81

    move-object v4, v8

    :goto_8e
    if-eqz v8, :cond_2e8

    if-eqz v6, :cond_98

    .line 802
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 805
    :cond_98
    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 806
    array-length v6, v4

    const/16 v7, 0x100

    new-array v7, v7, [I

    move v8, v12

    :goto_a2
    if-lt v8, v6, :cond_2cf

    .line 818
    new-array v8, v6, [I

    move v14, v6

    :goto_a7
    if-gtz v14, :cond_29b

    add-int/lit8 v14, v6, -0x1

    .line 836
    aput v13, v8, v14

    const-wide/16 v15, 0x0

    move/from16 v19, v12

    move-wide/from16 v17, v15

    :goto_b3
    if-eqz v19, :cond_b6

    goto :goto_d0

    :cond_b6
    if-eqz v0, :cond_e3

    .line 847
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v15

    .line 849
    :cond_bc
    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_c8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v21

    if-gtz v21, :cond_bc

    :cond_c8
    if-nez v20, :cond_df

    .line 852
    sget-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v0, :cond_d7

    .line 856
    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_d0} :catch_32f
    .catchall {:try_start_4e .. :try_end_d0} :catchall_32d

    .line 1027
    :goto_d0
    :try_start_d0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_34d

    .line 1033
    :catch_d3
    :try_start_d3
    iput-boolean v13, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_d5
    .catchall {:try_start_d3 .. :try_end_d5} :catchall_34d

    .line 1034
    monitor-exit p0

    return-void

    .line 853
    :cond_d7
    :try_start_d7
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "missing multipart end boundary"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_df
    move-wide/from16 v22, v15

    const/4 v15, 0x0

    goto :goto_eb

    .line 861
    :cond_e3
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v20

    move-wide/from16 v22, v15

    move-object/from16 v15, v20

    .line 864
    :goto_eb
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v16

    if-eqz v16, :cond_293

    if-nez v0, :cond_fb

    .line 870
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v3, v16

    goto :goto_100

    .line 872
    :cond_fb
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17

    const/4 v3, 0x0

    .line 884
    :goto_100
    new-array v9, v6, [B

    .line 885
    new-array v10, v6, [B

    move/from16 v24, v13

    move v13, v12

    :goto_107
    add-int/lit8 v11, v6, 0x4

    add-int/lit16 v11, v11, 0x3e8

    .line 895
    invoke-virtual {v2, v11}, Ljava/io/InputStream;->mark(I)V

    .line 897
    invoke-static {v2, v9, v12, v6}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v11

    if-ge v11, v6, :cond_135

    .line 900
    sget-boolean v19, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v19, :cond_12d

    if-eqz v0, :cond_11e

    .line 904
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17

    .line 905
    :cond_11e
    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move-object/from16 v26, v5

    move-object/from16 v28, v8

    move/from16 v29, v12

    const/16 v19, 0x1

    move-object v12, v7

    :cond_129
    :goto_129
    move-wide/from16 v7, v17

    goto/16 :goto_1c5

    .line 901
    :cond_12d
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "missing multipart end boundary"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_135
    move/from16 v25, v14

    :goto_137
    if-gez v25, :cond_13c

    move-object/from16 v26, v5

    goto :goto_144

    .line 912
    :cond_13c
    aget-byte v12, v9, v25

    move-object/from16 v26, v5

    aget-byte v5, v4, v25

    if-eq v12, v5, :cond_286

    :goto_144
    if-gez v25, :cond_221

    const/16 v5, 0xd

    if-nez v24, :cond_168

    add-int/lit8 v25, v13, -0x1

    .line 920
    aget-byte v12, v10, v25

    if-eq v12, v5, :cond_155

    const/16 v5, 0xa

    if-ne v12, v5, :cond_168

    goto :goto_157

    :cond_155
    const/16 v5, 0xa

    :goto_157
    if-ne v12, v5, :cond_166

    const/4 v5, 0x2

    if-lt v13, v5, :cond_166

    add-int/lit8 v5, v13, -0x2

    .line 924
    aget-byte v5, v10, v5

    const/16 v12, 0xd

    if-ne v5, v12, :cond_166

    const/4 v5, 0x2

    goto :goto_169

    :cond_166
    const/4 v5, 0x1

    goto :goto_169

    :cond_168
    const/4 v5, 0x0

    :goto_169
    if-nez v24, :cond_175

    if-lez v5, :cond_16e

    goto :goto_175

    :cond_16e
    move-object/from16 v27, v4

    move-object v12, v7

    move-object/from16 v28, v8

    goto/16 :goto_211

    :cond_175
    :goto_175
    if-eqz v0, :cond_185

    .line 934
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17

    move-object v12, v7

    move-object/from16 v28, v8

    int-to-long v7, v6

    sub-long v17, v17, v7

    int-to-long v7, v5

    sub-long v17, v17, v7

    goto :goto_188

    :cond_185
    move-object v12, v7

    move-object/from16 v28, v8

    .line 937
    :goto_188
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1a2

    .line 939
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    move/from16 v29, v5

    const/16 v5, 0x2d

    if-ne v8, v5, :cond_1a4

    const/4 v5, 0x1

    .line 940
    iput-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move-wide/from16 v7, v17

    const/16 v19, 0x1

    goto :goto_1c5

    :cond_1a2
    move/from16 v29, v5

    :cond_1a4
    :goto_1a4
    const/16 v5, 0x20

    if-eq v7, v5, :cond_214

    const/16 v8, 0x9

    if-eq v7, v8, :cond_214

    const/16 v5, 0xa

    if-ne v7, v5, :cond_1b2

    goto/16 :goto_129

    :cond_1b2
    const/16 v8, 0xd

    if-ne v7, v8, :cond_20f

    const/4 v7, 0x1

    .line 952
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->mark(I)V

    .line 953
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v7

    if-eq v7, v5, :cond_129

    .line 954
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_129

    :goto_1c5
    if-eqz v0, :cond_1d6

    move-object/from16 v27, v4

    move-wide/from16 v4, v22

    .line 1010
    invoke-interface {v0, v4, v5, v7, v8}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v3

    move-wide/from16 v22, v4

    goto :goto_1f9

    :cond_1d6
    move-object/from16 v27, v4

    move-wide/from16 v4, v22

    sub-int v13, v13, v29

    if-lez v13, :cond_1e5

    move-wide/from16 v22, v4

    const/4 v4, 0x0

    .line 1014
    invoke-virtual {v3, v10, v4, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1e7

    :cond_1e5
    move-wide/from16 v22, v4

    .line 1017
    :goto_1e7
    iget-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v4, :cond_1f1

    if-lez v11, :cond_1f1

    const/4 v4, 0x0

    .line 1018
    invoke-virtual {v3, v9, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1019
    :cond_1f1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v15, v3}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v3

    .line 1021
    :goto_1f9
    invoke-super {v1, v3}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move-wide/from16 v17, v7

    move-object v7, v12

    move-wide/from16 v15, v22

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    move-object/from16 v8, v28

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_b3

    :cond_20f
    move-object/from16 v27, v4

    :goto_211
    const/16 v25, 0x0

    goto :goto_226

    :cond_214
    move-object/from16 v27, v4

    const/16 v4, 0xa

    const/16 v8, 0xd

    .line 947
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v7

    move-object/from16 v4, v27

    goto :goto_1a4

    :cond_221
    move-object/from16 v27, v4

    move-object v12, v7

    move-object/from16 v28, v8

    :goto_226
    add-int/lit8 v4, v25, 0x1

    .line 968
    aget-byte v5, v9, v25

    and-int/lit8 v5, v5, 0x7f

    aget v5, v12, v5

    sub-int/2addr v4, v5

    aget v5, v28, v25

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_262

    if-nez v0, :cond_243

    const/4 v4, 0x1

    if-le v13, v4, :cond_243

    add-int/lit8 v4, v13, -0x1

    const/4 v5, 0x0

    .line 975
    invoke-virtual {v3, v10, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 976
    :cond_243
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    const-wide/16 v4, 0x1

    .line 977
    invoke-direct {v1, v2, v4, v5}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    const/4 v5, 0x1

    if-lt v13, v5, :cond_25b

    add-int/lit8 v13, v13, -0x1

    .line 980
    aget-byte v4, v10, v13

    const/4 v7, 0x0

    aput-byte v4, v10, v7

    .line 981
    aget-byte v4, v9, v7

    aput-byte v4, v10, v5

    const/4 v13, 0x2

    goto :goto_27a

    :cond_25b
    const/4 v4, 0x0

    .line 985
    aget-byte v7, v9, v4

    aput-byte v7, v10, v4

    move v13, v5

    goto :goto_27a

    :cond_262
    const/4 v5, 0x1

    if-lez v13, :cond_26c

    if-nez v0, :cond_26c

    const/4 v7, 0x0

    .line 992
    invoke-virtual {v3, v10, v7, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_26d

    :cond_26c
    const/4 v7, 0x0

    .line 995
    :goto_26d
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    int-to-long v7, v4

    .line 996
    invoke-direct {v1, v2, v7, v8}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    move v13, v4

    move-object/from16 v30, v10

    move-object v10, v9

    move-object/from16 v9, v30

    :goto_27a
    move-object v7, v12

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    move-object/from16 v8, v28

    const/4 v12, 0x0

    const/16 v24, 0x0

    goto/16 :goto_107

    :cond_286
    move-object/from16 v27, v4

    move-object v12, v7

    move-object/from16 v28, v8

    const/4 v5, 0x1

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v5, v26

    const/4 v12, 0x0

    goto/16 :goto_137

    .line 865
    :cond_293
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "Stream doesn\'t support mark"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29b
    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-object v12, v7

    move-object/from16 v28, v8

    move v5, v13

    add-int/lit8 v3, v6, -0x1

    :goto_2a5
    if-ge v3, v14, :cond_2af

    :goto_2a7
    if-gtz v3, :cond_2aa

    goto :goto_2be

    :cond_2aa
    add-int/lit8 v3, v3, -0x1

    .line 834
    aput v14, v28, v3

    goto :goto_2a7

    .line 824
    :cond_2af
    aget-byte v4, v27, v3

    sub-int v7, v3, v14

    aget-byte v7, v27, v7

    if-ne v4, v7, :cond_2be

    add-int/lit8 v4, v3, -0x1

    .line 826
    aput v14, v28, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_2a5

    :cond_2be
    :goto_2be
    add-int/lit8 v14, v14, -0x1

    move v13, v5

    move-object v7, v12

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    move-object/from16 v8, v28

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v12, 0x0

    goto/16 :goto_a7

    :cond_2cf
    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-object v12, v7

    move v3, v9

    move v5, v13

    .line 815
    aget-byte v4, v27, v8

    add-int/lit8 v8, v8, 0x1

    aput v8, v12, v4

    move v9, v3

    move v13, v5

    move-object v7, v12

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    const/16 v10, 0x20

    const/4 v12, 0x0

    goto/16 :goto_a2

    .line 799
    :cond_2e8
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "Missing start boundary"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :goto_2f0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_2f4
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_2f4} :catch_32f
    .catchall {:try_start_d7 .. :try_end_2f4} :catchall_32d

    if-lez v3, :cond_318

    if-nez v7, :cond_304

    :try_start_2f8
    const-string v3, "line.separator"

    const-string v5, "\n"

    .line 787
    invoke-static {v3, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_300
    .catch Ljava/lang/SecurityException; {:try_start_2f8 .. :try_end_300} :catch_301
    .catch Ljava/io/IOException; {:try_start_2f8 .. :try_end_300} :catch_32f
    .catchall {:try_start_2f8 .. :try_end_300} :catchall_32d

    goto :goto_303

    :catch_301
    :try_start_301
    const-string v3, "\n"

    :goto_303
    move-object v7, v3

    :cond_304
    if-nez v6, :cond_312

    .line 794
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x2

    add-int/2addr v5, v9

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v3

    .line 795
    :cond_312
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_318
    .catch Ljava/io/IOException; {:try_start_301 .. :try_end_318} :catch_32f
    .catchall {:try_start_301 .. :try_end_318} :catchall_32d

    :cond_318
    move-object/from16 v5, v26

    goto/16 :goto_55

    :cond_31c
    move-object/from16 v26, v5

    move v3, v9

    move v10, v12

    move v5, v13

    const/4 v9, 0x2

    add-int/lit8 v14, v14, -0x1

    move v9, v3

    move v13, v5

    move v12, v10

    move-object/from16 v5, v26

    const/16 v10, 0x20

    goto/16 :goto_67

    :catchall_32d
    move-exception v0

    goto :goto_338

    :catch_32f
    move-exception v0

    .line 1024
    :try_start_330
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "IO Error"

    invoke-direct {v3, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_338
    .catchall {:try_start_330 .. :try_end_338} :catchall_32d

    .line 1027
    :goto_338
    :try_start_338
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33b
    .catch Ljava/io/IOException; {:try_start_338 .. :try_end_33b} :catch_33b
    .catchall {:try_start_338 .. :try_end_33b} :catchall_34d

    .line 1031
    :catch_33b
    :try_start_33b
    throw v0

    .line 743
    :cond_33c
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v2, "Missing boundary parameter"

    invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_344
    move-exception v0

    .line 732
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No inputstream from datasource"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_34d
    .catchall {:try_start_33b .. :try_end_34d} :catchall_34d

    :catchall_34d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    :goto_4
    if-gtz p3, :cond_7

    goto :goto_d

    .line 1056
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_12

    :goto_d
    if-lez v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    return v0

    :cond_12
    add-int/2addr p2, v1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_4
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-gtz p0, :cond_7

    return-void

    .line 1072
    :cond_7
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-lez p0, :cond_11

    sub-long/2addr p2, v2

    goto :goto_0

    .line 1074
    :cond_11
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "can\'t skip"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 325
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 326
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 327
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1092
    new-instance p0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1125
    new-instance p0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1109
    new-instance p0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object p0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 255
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 256
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 243
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 462
    :try_start_3
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_251

    if-eqz v0, :cond_9

    .line 463
    monitor-exit p0

    return-void

    .line 465
    :cond_9
    :try_start_9
    sget-boolean v0, Ljavax/mail/internet/MimeMultipart;->bmparse:Z

    if-eqz v0, :cond_12

    .line 466
    invoke-direct/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->parsebm()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_251

    .line 467
    monitor-exit p0

    return-void

    .line 475
    :cond_12
    :try_start_12
    iget-object v0, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 476
    instance-of v2, v0, Ljava/io/ByteArrayInputStream;

    if-nez v2, :cond_2a

    .line 477
    instance-of v2, v0, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_2a

    .line 478
    instance-of v2, v0, Ljavax/mail/internet/SharedInputStream;

    if-nez v2, :cond_2a

    .line 479
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_29} :catch_248
    .catchall {:try_start_12 .. :try_end_29} :catchall_251

    goto :goto_2b

    :cond_2a
    move-object v2, v0

    .line 483
    :goto_2b
    :try_start_2b
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_33

    .line 484
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    .line 486
    :goto_34
    new-instance v4, Ljavax/mail/internet/ContentType;

    iget-object v5, v1, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v5, "boundary"

    .line 488
    invoke-virtual {v4, v5}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_52

    .line 490
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "--"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_57

    .line 491
    :cond_52
    sget-boolean v4, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_251

    if-eqz v4, :cond_240

    const/4 v4, 0x0

    .line 496
    :goto_57
    :try_start_57
    new-instance v5, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v5, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 500
    :cond_5e
    :goto_5e
    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v8, :cond_6b

    goto :goto_93

    .line 508
    :cond_6b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v12

    :goto_70
    if-gez v13, :cond_73

    goto :goto_7b

    .line 509
    :cond_73
    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v10, :cond_227

    if-eq v14, v9, :cond_227

    :goto_7b
    add-int/lit8 v13, v13, 0x1

    .line 513
    invoke-virtual {v8, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_8a

    .line 515
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1fd

    goto :goto_93

    :cond_8a
    const-string v13, "--"

    .line 523
    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1fd

    move-object v4, v8

    :goto_93
    if-eqz v8, :cond_1f5

    if-eqz v6, :cond_9d

    .line 551
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 554
    :cond_9d
    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 555
    array-length v6, v4

    const-wide/16 v7, 0x0

    move-wide v13, v7

    move v15, v11

    :goto_a6
    if-eqz v15, :cond_a9

    goto :goto_c3

    :cond_a9
    if-eqz v0, :cond_d4

    .line 566
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v7

    .line 568
    :cond_af
    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_bb

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_af

    :cond_bb
    if-nez v16, :cond_d2

    .line 571
    sget-boolean v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v0, :cond_ca

    .line 575
    iput-boolean v11, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_c3} :catch_233
    .catchall {:try_start_57 .. :try_end_c3} :catchall_231

    .line 695
    :goto_c3
    :try_start_c3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_251

    .line 701
    :catch_c6
    :try_start_c6
    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_c8
    .catchall {:try_start_c6 .. :try_end_c8} :catchall_251

    .line 702
    monitor-exit p0

    return-void

    .line 572
    :cond_ca
    :try_start_ca
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "missing multipart end boundary"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d2
    const/4 v3, 0x0

    goto :goto_da

    .line 580
    :cond_d4
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v16

    move-object/from16 v3, v16

    .line 583
    :goto_da
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v17

    if-eqz v17, :cond_1ed

    if-nez v0, :cond_ea

    .line 589
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v11, v17

    goto :goto_ef

    .line 591
    :cond_ea
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v13

    const/4 v11, 0x0

    :goto_ef
    move/from16 v18, v12

    const/16 v19, -0x1

    const/16 v20, -0x1

    :goto_f5
    if-eqz v18, :cond_170

    add-int/lit8 v9, v6, 0x4

    add-int/lit16 v9, v9, 0x3e8

    .line 607
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->mark(I)V

    const/4 v9, 0x0

    :goto_ff
    if-lt v9, v6, :cond_102

    goto :goto_10c

    .line 610
    :cond_102
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    aget-byte v12, v4, v9

    and-int/lit16 v12, v12, 0xff

    if-eq v10, v12, :cond_163

    :goto_10c
    if-ne v9, v6, :cond_147

    .line 614
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_122

    .line 616
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v12

    if-ne v12, v10, :cond_122

    const/4 v10, 0x1

    .line 617
    iput-boolean v10, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    const/4 v10, 0x0

    goto/16 :goto_186

    :cond_122
    :goto_122
    const/16 v10, 0x20

    if-eq v9, v10, :cond_142

    const/16 v12, 0x9

    if-eq v9, v12, :cond_142

    const/16 v10, 0xa

    if-ne v9, v10, :cond_12f

    goto :goto_140

    :cond_12f
    const/16 v12, 0xd

    if-ne v9, v12, :cond_147

    const/4 v9, 0x1

    .line 629
    invoke-virtual {v2, v9}, Ljava/io/InputStream;->mark(I)V

    .line 630
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    if-eq v9, v10, :cond_140

    .line 631
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :cond_140
    :goto_140
    const/4 v10, 0x0

    goto :goto_187

    .line 624
    :cond_142
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    goto :goto_122

    .line 636
    :cond_147
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    move/from16 v10, v19

    const/4 v12, -0x1

    if-eqz v11, :cond_160

    if-eq v10, v12, :cond_160

    .line 641
    invoke-virtual {v11, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move/from16 v9, v20

    if-eq v9, v12, :cond_15b

    .line 643
    invoke-virtual {v11, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_15b
    move/from16 v19, v12

    move/from16 v20, v19

    goto :goto_179

    :cond_160
    move/from16 v19, v20

    goto :goto_175

    :cond_163
    move/from16 v10, v19

    move/from16 v19, v20

    const/4 v12, -0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    move/from16 v19, v10

    const/16 v10, 0x20

    goto :goto_ff

    :cond_170
    move/from16 v10, v19

    move/from16 v19, v20

    const/4 v12, -0x1

    :goto_175
    move/from16 v20, v19

    move/from16 v19, v10

    .line 649
    :goto_179
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v9

    if-gez v9, :cond_1ad

    .line 650
    sget-boolean v9, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v9, :cond_1a5

    const/4 v10, 0x0

    .line 653
    iput-boolean v10, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    :goto_186
    const/4 v15, 0x1

    :goto_187
    if-eqz v0, :cond_192

    .line 686
    invoke-interface {v0, v7, v8, v13, v14}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v3

    goto :goto_19a

    .line 688
    :cond_192
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v3

    .line 689
    :goto_19a
    invoke-super {v1, v3}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move v11, v10

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v12, 0x1

    goto/16 :goto_a6

    .line 651
    :cond_1a5
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "missing multipart end boundary"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ad
    const/16 v10, 0xd

    if-eq v9, v10, :cond_1c2

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1b6

    goto :goto_1c2

    :cond_1b6
    if-eqz v11, :cond_1bb

    .line 677
    invoke-virtual {v11, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1bb
    const/16 v10, 0x20

    const/4 v12, 0x1

    const/16 v18, 0x0

    goto/16 :goto_f5

    :cond_1c2
    :goto_1c2
    if-eqz v0, :cond_1cc

    .line 665
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v13

    const-wide/16 v21, 0x1

    sub-long v13, v13, v21

    :cond_1cc
    const/16 v10, 0xd

    if-ne v9, v10, :cond_1e4

    const/4 v10, 0x1

    .line 668
    invoke-virtual {v2, v10}, Ljava/io/InputStream;->mark(I)V

    .line 669
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v10

    const/16 v12, 0xa

    if-ne v10, v12, :cond_1e1

    move/from16 v19, v9

    move/from16 v20, v10

    goto :goto_1e6

    .line 672
    :cond_1e1
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :cond_1e4
    move/from16 v19, v9

    :goto_1e6
    const/16 v10, 0x20

    const/4 v12, 0x1

    const/16 v18, 0x1

    goto/16 :goto_f5

    .line 584
    :cond_1ed
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "Stream doesn\'t support mark"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_1f5
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "Missing start boundary"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1fd
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_201
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_201} :catch_233
    .catchall {:try_start_ca .. :try_end_201} :catchall_231

    if-lez v3, :cond_5e

    if-nez v7, :cond_211

    :try_start_205
    const-string v3, "line.separator"

    const-string v7, "\n"

    .line 536
    invoke-static {v3, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_20d
    .catch Ljava/lang/SecurityException; {:try_start_205 .. :try_end_20d} :catch_20e
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_20d} :catch_233
    .catchall {:try_start_205 .. :try_end_20d} :catchall_231

    goto :goto_210

    :catch_20e
    :try_start_20e
    const-string v3, "\n"

    :goto_210
    move-object v7, v3

    :cond_211
    if-nez v6, :cond_21f

    .line 543
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v3

    .line 544
    :cond_21f
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_225
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_225} :catch_233
    .catchall {:try_start_20e .. :try_end_225} :catchall_231

    goto/16 :goto_5e

    :cond_227
    add-int/lit8 v13, v13, -0x1

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_70

    :catchall_231
    move-exception v0

    goto :goto_23c

    :catch_233
    move-exception v0

    .line 692
    :try_start_234
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "IO Error"

    invoke-direct {v3, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_23c
    .catchall {:try_start_234 .. :try_end_23c} :catchall_231

    .line 695
    :goto_23c
    :try_start_23c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_23c .. :try_end_23f} :catch_23f
    .catchall {:try_start_23c .. :try_end_23f} :catchall_251

    .line 699
    :catch_23f
    :try_start_23f
    throw v0

    .line 492
    :cond_240
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v2, "Missing boundary parameter"

    invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_248
    move-exception v0

    .line 481
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No inputstream from datasource"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_251
    .catchall {:try_start_23f .. :try_end_251} :catchall_251

    :catchall_251
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 425
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 432
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v2, :cond_47

    .line 433
    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 434
    invoke-virtual {v1, v2}, Ljava/io/FilterOutputStream;->write([B)V

    .line 436
    array-length v3, v2

    if-lez v3, :cond_47

    .line 437
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_47

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_47

    .line 438
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    :cond_47
    const/4 v2, 0x0

    .line 442
    :goto_48
    iget-object v3, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_67

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_7b

    .line 450
    monitor-exit p0

    return-void

    .line 443
    :cond_67
    :try_start_67
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 445
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_78
    .catchall {:try_start_67 .. :try_end_78} :catchall_7b

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :catchall_7b
    move-exception p1

    monitor-exit p0

    throw p1
.end method
