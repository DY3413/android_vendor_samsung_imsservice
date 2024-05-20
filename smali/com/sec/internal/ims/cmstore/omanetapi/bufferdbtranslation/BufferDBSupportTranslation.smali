.class public Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;
.super Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;
.source "BufferDBSupportTranslation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MessageStatus;,
        Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;
    }
.end annotation


# static fields
.field public static final MSGAPP_FTCONTENT_URI:Ljava/lang/String; = "content://im/ft/"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected mCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final mDelimiter:Ljava/lang/String;

.field private final mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

.field protected final sFormatOfName:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 66
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    const-string p2, ";"

    .line 69
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mDelimiter:Ljava/lang/String;

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    .line 77
    new-instance p1, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    .line 78
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    const-string p0, "UTC"

    .line 80
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private getAddrFromParticipantTable(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 571
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 572
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSParticipantDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 574
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "uri"

    .line 578
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 577
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 582
    :cond_1
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 572
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 588
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAddrFromParticipantTable : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getAddrFromPduId(J)Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;
    .locals 8

    .line 778
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAddrFromPduId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 781
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 782
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 783
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 784
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryAddrBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 786
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_0
    const-string p2, "address"

    .line 788
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v4, "type"

    .line 789
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 790
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " direction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "address is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x89

    if-ne v4, v5, :cond_1

    move-object v4, v0

    goto :goto_0

    :cond_1
    const/16 v5, 0x97

    if-ne v4, v5, :cond_2

    move-object v4, v1

    goto :goto_0

    :cond_2
    const/16 v5, 0x81

    if-ne v4, v5, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    const/16 v5, 0x82

    if-ne v4, v5, :cond_6

    move-object v4, v3

    .line 804
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "insert-address-token"

    .line 807
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 808
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 810
    :cond_5
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_6
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 784
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_7
    :goto_3
    if-eqz p1, :cond_8

    .line 815
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 816
    :cond_8
    new-instance p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object p0
.end method

.method private getDataFromPartFile(J)[B
    .locals 5

    const-string v0, "getDataFromPartFile is.close() error: "

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/part/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 822
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 825
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    const/16 v2, 0x100

    :try_start_1
    new-array v2, v2, [B

    .line 828
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_0

    const/4 v4, 0x0

    .line 830
    invoke-virtual {p2, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 831
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v1, p1

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 839
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 841
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p2

    :goto_2
    if-eqz v1, :cond_2

    .line 839
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 841
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_2
    :goto_3
    throw p2

    :catch_2
    move-object p1, v1

    :catch_3
    if-eqz p1, :cond_3

    .line 839
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 841
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    return-object v1
.end method

.method private getFileContentInBytes(Landroid/net/Uri;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 853
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_2

    .line 856
    :try_start_2
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI open failed!!!! Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 876
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    .line 859
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileUri  ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 861
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    :goto_0
    const/4 v5, 0x0

    if-ltz v4, :cond_3

    .line 864
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 865
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_0

    .line 868
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFileContentInBytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " bytes "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " getVVMGreetingPayloadFromPath, all bytes: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 868
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 871
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 876
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object p1

    .line 873
    :cond_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 876
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_5

    .line 853
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_e
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception p1

    .line 877
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVVMGreetingPayloadFromPath :: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B
    .locals 7

    .line 885
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x100

    :try_start_2
    new-array v2, v2, [B

    .line 889
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_0

    .line 891
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 892
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 895
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFileContentInBytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " bytes "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " getRcsFilePayloadFromPath, all bytes: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 895
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 898
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 902
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    .line 900
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 902
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 885
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_b
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    :catch_0
    move-exception p1

    .line 903
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFileContentInBytes :: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getFilePayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 8

    if-eqz p2, :cond_2

    .line 248
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "file_name"

    .line 250
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 249
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachment;filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "content_type"

    .line 254
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 253
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {p2}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v4, p1

    .line 258
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-direct {p0, p4, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v5

    if-eqz v5, :cond_2

    .line 259
    array-length p0, v5

    if-eqz p0, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p3, :cond_1

    .line 260
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 262
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const/4 v7, 0x0

    const-string v6, "cid:thumbnail"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getFtMultiBody(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getLocalFilePathForFt(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFtMultiBody localFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "thumbnail_path"

    .line 299
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 298
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 303
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v2

    move-object v2, p2

    move-object p2, v6

    goto :goto_0

    :cond_1
    move-object v2, p2

    move-object p2, v3

    .line 310
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 311
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 315
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 317
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFilePayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 319
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_3
    invoke-direct {p0, p1, v3, p2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getThumbnailPayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 323
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filepath: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " File payload size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " thumbnailpath: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Thumbnail payload size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_8

    .line 328
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "file_name"

    .line 330
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 329
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachment;filename=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "content_type"

    .line 334
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 333
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 335
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v2

    if-eqz v2, :cond_7

    .line 336
    array-length v3, v2

    if-eqz v3, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 339
    :cond_6
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v3, p2, p1, v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 340
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    :goto_1
    return-object v4

    .line 342
    :cond_8
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "thumbnail filepath : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ,body size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_3
    invoke-static {v0}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    return-object v4
.end method

.method private getLocalFilePathForFt(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6

    const-string v0, "imdn_message_id"

    .line 276
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 275
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtRowFromTelephony(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 279
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid rowId received for imdn id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 282
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "row id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " for imdn id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "content://im/ft_original/"

    .line 284
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 285
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "file_name"

    .line 288
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 287
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 290
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getThumbnailPayloadPart(Landroid/database/Cursor;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 9

    if-eqz p2, :cond_4

    .line 214
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "file_name"

    .line 216
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 215
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "jpg"

    .line 218
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getRandomFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachment;filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content_type"

    .line 223
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 222
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    .line 225
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    invoke-static {p3}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {p2}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    move-object v5, p1

    .line 231
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-direct {p0, p4, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v6

    if-eqz v6, :cond_4

    .line 232
    array-length p0, v6

    if-eqz p0, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz p3, :cond_3

    .line 233
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "icon;filename=\"thumbnail_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const/4 v7, 0x0

    const-string/jumbo v8, "thumbnail"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_3
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {p0, v1, v5, v6}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private setSubjectAndGroup(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;)V
    .locals 4

    .line 594
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 595
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSSessionDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 597
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "subject"

    .line 600
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 599
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 604
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setSubject([Ljava/lang/String;)V

    const-string v1, "chat_type"

    .line 608
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 607
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    .line 609
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChatObjectPairFromCursor :: subject : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " chatType : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne v1, p0, :cond_1

    const-string/jumbo p0, "yes"

    .line 611
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setOpenGroup([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "no"

    .line 613
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setOpenGroup([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 595
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 617
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method private setTransToFrom(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 910
    invoke-static {p4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    const-string p4, "IN"

    .line 911
    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    const/4 p4, 0x1

    new-array v0, p4, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 914
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsed address : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " participants size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, p4, :cond_0

    .line 919
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 921
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 924
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 926
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p3, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getChatObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 459
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getChatSlmMultiBody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChatSlmMultiBody localFilePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " filePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p4, p5

    .line 369
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 371
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string p1, "form-data;name=\"attachments\";filename=\"sms.txt\""

    const-string/jumbo p3, "text/plain"

    invoke-direct {p0, p1, p3, p2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "file_name"

    .line 379
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 378
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachment;name=file;filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, v3, :cond_2

    .line 384
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachment;filename=\""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string p2, "content_type"

    .line 389
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 388
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 390
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-direct {p0, p4, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object p0

    if-eqz p0, :cond_4

    .line 391
    array-length p2, p0

    if-eqz p2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 394
    :cond_3
    new-instance p2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {p2, v1, p1, p0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 395
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    return-object v0

    .line 398
    :cond_5
    :goto_1
    invoke-static {p5}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    return-object v0
.end method

.method protected getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 930
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getE164FormatNumber: old["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    :try_start_0
    const-string v1, "US"

    .line 933
    invoke-virtual {v0, p1, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 934
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0, v1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 936
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getE164FormatNumber: E164["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 940
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberParseException was thrown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method protected getFtObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 455
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getMmsObjectFromPduAndAddress(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 13

    .line 681
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 684
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->querymmsPduBufferDB(J)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 686
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 688
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v2, "read"

    .line 691
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 690
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "msg_box"

    .line 693
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 692
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "\\Flagged"

    const-wide/16 v6, 0x2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_1

    cmp-long v2, v3, v6

    if-nez v2, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    goto :goto_1

    .line 696
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v9, "\\Seen"

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    :goto_1
    const-string/jumbo v2, "tr_id"

    .line 707
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 706
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 708
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMmsObjectFromPduAndAddress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", trid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    .line 710
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x2

    if-le v5, v9, :cond_2

    .line 711
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v2, "m_id"

    .line 714
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 713
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    .line 717
    :goto_2
    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 719
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v9, Ljava/util/Date;

    const-string v10, "date"

    .line 720
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 719
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-array v9, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    .line 721
    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 725
    iget-wide v11, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-direct {p0, v11, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getAddrFromPduId(J)Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;

    move-result-object p1

    const-wide/16 v11, 0x1

    cmp-long v5, v3, v11

    if-nez v5, :cond_3

    const-string v3, "IN"

    .line 728
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 732
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mFrom:Ljava/util/Set;

    .line 733
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 732
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    .line 735
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 736
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    cmp-long v3, v3, v6

    if-nez v3, :cond_7

    const-string v3, "OUT"

    .line 739
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 743
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 744
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mTo:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    .line 746
    :cond_4
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mBcc:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_5

    .line 747
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mBcc:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setBCC([Ljava/lang/String;)V

    .line 749
    :cond_5
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mCc:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_6

    .line 750
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation$MmsParticipant;->mCc:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCC([Ljava/lang/String;)V

    :cond_6
    new-array p1, v8, [Ljava/lang/String;

    .line 752
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v10

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :cond_7
    :goto_3
    const-string p1, "no"

    .line 755
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    const-string p1, "multimedia-message"

    .line 759
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    .line 763
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p1

    .line 764
    iput-object p1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 684
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_8
    :goto_5
    if-eqz v1, :cond_9

    .line 767
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 769
    :cond_9
    iget-object p1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 770
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getMmsObjectFromPduAndAddress: correlation id is empty!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_a
    return-object v0
.end method

.method protected getMmsPartHttpPayloadFromCursor(Landroid/database/Cursor;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 10

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 626
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    const-string v2, "_id"

    .line 629
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 628
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ct"

    .line 631
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 630
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 632
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v4, "_data"

    .line 636
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 635
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 638
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "text"

    .line 640
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 639
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 642
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    goto :goto_0

    .line 645
    :cond_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getDataFromPartFile(J)[B

    move-result-object v4

    :goto_0
    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const-string v5, "cl"

    .line 653
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 652
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachment;filename=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 657
    new-instance v7, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v7, v6, v3, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 658
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMmsPartHttpPayloadFromCursor id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", contentType: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data size: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " filename: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " HttpPostBody one attachment: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v7}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 658
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 664
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 674
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 668
    :cond_5
    :try_start_1
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v2, "form-data;name=\"attachments\""

    const-string v3, "multipart/mixed"

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 671
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMmsPartHttpPayloadFromCursor HttpPostBody: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 625
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_7
    :goto_3
    return-object v1
.end method

.method protected getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v4, p2

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    .line 472
    :cond_0
    new-instance v9, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v9}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 475
    new-instance v10, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v10, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 476
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 480
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 553
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v8

    :cond_1
    :try_start_1
    const-string v2, "chat_id"

    .line 484
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 483
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "direction"

    .line 486
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 485
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 488
    new-instance v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v5}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v5, v9, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string/jumbo v5, "status"

    .line 490
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 489
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "ft_status"

    .line 492
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 491
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 493
    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "\\Flagged"

    if-eq v5, v13, :cond_3

    .line 494
    :try_start_2
    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v5

    if-eq v6, v5, :cond_3

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 495
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 500
    :cond_2
    iget-object v5, v9, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    goto :goto_1

    .line 496
    :cond_3
    :goto_0
    iget-object v5, v9, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v6, "\\Seen"

    filled-new-array {v14, v6}, [Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 505
    :goto_1
    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    const-string v12, "inserted_timestamp"

    .line 506
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 505
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    .line 507
    invoke-virtual {v10, v12}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    .line 510
    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getObjectPairFromCursor :: direction : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " messagetype : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " date : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-direct {v0, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getAddrFromParticipantTable(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .line 513
    invoke-virtual {v0, v10, v5, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setCpmTransMessage(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Z

    move-result v12

    .line 515
    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v2, v14

    if-nez v14, :cond_5

    const-string v2, "remote_uri"

    .line 517
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 516
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 518
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v3, :cond_4

    .line 553
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v8

    .line 521
    :cond_4
    :try_start_3
    invoke-direct {v0, v7, v10, v5, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setTransToFrom(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2

    .line 522
    :cond_5
    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v14

    int-to-long v14, v14

    cmp-long v2, v2, v14

    if-nez v2, :cond_b

    const-string v2, "OUT"

    .line 523
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDirection([Ljava/lang/String;)V

    .line 526
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setTo([Ljava/lang/String;)V

    new-array v2, v6, [Ljava/lang/String;

    .line 527
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getE164FormatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-virtual {v10, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setFrom([Ljava/lang/String;)V

    :goto_2
    const-string v2, "imdn_message_id"

    .line 533
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 532
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 534
    iput-object v2, v9, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    const-string v3, "file_path"

    .line 537
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 536
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 539
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, " body : "

    const-string v13, " correlationId : "

    const-string v14, "getObjectPairFromCursor :: filepath : "

    const-string v15, "body"

    if-ne v4, v3, :cond_6

    .line 540
    :try_start_4
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 541
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    .line 542
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getChatSlmMultiBody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 543
    :cond_6
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_SLM:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne v4, v3, :cond_7

    .line 544
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 545
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v0, v7, v1, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getSlmMultiBody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 547
    :cond_7
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne v4, v2, :cond_8

    .line 548
    invoke-direct {v0, v7, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFtMultiBody(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 550
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_9

    .line 553
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v8

    :cond_9
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 555
    invoke-virtual {v0, v10, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setConversationId(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V

    if-eqz v12, :cond_a

    .line 557
    invoke-direct {v0, v11, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->setSubjectAndGroup(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;)V

    .line 560
    :cond_a
    invoke-virtual {v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object v0

    .line 561
    iput-object v0, v9, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    .line 563
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v2, "form-data;name=\"attachments\""

    const-string v3, "multipart/mixed"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 566
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v9, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 553
    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    return-object v8

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 479
    :try_start_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
.end method

.method protected getSlmMultiBody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 353
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getLocalFilePathForFt(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 356
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getChatSlmMultiBody(Landroid/database/Cursor;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getSlmObjectPairFromCursor(Landroid/database/Cursor;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 463
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_SLM:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getObjectPairFromCursor(Landroid/database/Cursor;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getVvmGreetingBodyFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 8

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 161
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const-string v1, "filepath"

    .line 165
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 164
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 170
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 172
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->getFileContentInBytes(Landroid/net/Uri;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v3, "fileName"

    .line 179
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 178
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/16 v3, 0x2f

    .line 181
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v1, "mimeType"

    .line 184
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 183
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 188
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachment;filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    new-instance v5, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v5, v4, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    const-string v4, "base64"

    .line 192
    invoke-virtual {v5, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVvmGreetingBodyFromDB data size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " filename: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " contentType: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HttpPostBody one attachment: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v2, "form-data;name=\"attachments\""

    const-string v3, "multipart/mixed"

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVvmGreetingBodyFromDB HttpPostBody: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    .line 159
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_5
    if-eqz p1, :cond_6

    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getVvmObjectFromDB(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 7

    .line 85
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Object;-><init>()V

    .line 88
    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryVvmGreetingBufferDB(J)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 90
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/FlagList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    const-string v2, "$CNS-Greeting-On"

    .line 94
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    .line 99
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 101
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->sFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 102
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setDate([Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/Util;->generateHash()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 106
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageId([Ljava/lang/String;)V

    const-string v2, "1.0"

    .line 110
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMimeVersion([Ljava/lang/String;)V

    const-string v2, "greetingtype"

    .line 114
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 113
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVvmObjectFromDB greetingType: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Name:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result p0

    if-ne p0, v2, :cond_0

    const-string/jumbo p0, "voice-signature"

    .line 117
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Custom:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result p0

    if-ne p0, v2, :cond_1

    const-string p0, "normal-greeting"

    .line 121
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Busy:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result p0

    if-ne p0, v2, :cond_2

    const-string p0, "busy-greeting"

    .line 125
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->ExtendAbsence:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result p0

    if-ne p0, v2, :cond_3

    const-string p0, "extended-absence-greeting"

    .line 129
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Fun:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result p0

    if-ne p0, v2, :cond_4

    const-string p0, "fun-greeting"

    .line 133
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_4
    sget-object p0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->getId()I

    move-result p0

    if-ne p0, v2, :cond_5

    const-string p0, ""

    .line 137
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setGreetingType([Ljava/lang/String;)V

    :cond_5
    :goto_0
    const-string p0, "duration"

    .line 143
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 142
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    new-array v2, v3, [Ljava/lang/String;

    .line 145
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v5

    .line 144
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setContentDuration([Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->getAttributeList()Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    move-result-object p0

    .line 148
    iput-object p0, v0, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 151
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0
.end method

.method protected setConversationId(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/lang/String;)V
    .locals 3

    .line 437
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation;->queryRCSSessionDB(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 440
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "conversation_id"

    .line 442
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 441
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getObjectPairFromCursor :: conversationId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 445
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setConversationId([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 438
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 450
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method protected setCpmTransMessage(Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;Ljava/util/Set;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;",
            ")Z"
        }
    .end annotation

    .line 405
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    const-string/jumbo p2, "yes"

    .line 406
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "no"

    .line 411
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setCpmGroup([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 415
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBSupportTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCpmTransMessage  type"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_CHAT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, p0, :cond_1

    const-string p0, "chat-message"

    .line 417
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_SLM:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, p0, :cond_2

    const-string/jumbo p0, "standalone-message"

    .line 422
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    goto :goto_1

    .line 426
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;->MESSAGE_FT:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferQueryDBTranslation$MessageType;

    if-ne p3, p0, :cond_3

    const-string p0, "file-message"

    .line 427
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/AttributeTranslator;->setMessageContext([Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v0
.end method
