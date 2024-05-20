.class public Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;
.super Ljava/lang/Object;
.source "CloudMessageTelephonyStorageAdapter.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "CloudMessageTelephonyStorageAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    return-void
.end method


# virtual methods
.method public getFtRowFromTelephonyDb(Ljava/lang/String;)J
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->getFtRowFromTelephony(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTelephonyAddr(J)Landroid/database/Cursor;
    .locals 8

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "content://mms/{0}/addr"

    invoke-static {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 40
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public getTelephonyPart(J)Landroid/database/Cursor;
    .locals 8

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p1, "content://mms/part"

    .line 46
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 48
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPduFromTelephonyDb([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 74
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMMSPduFromTelephonyDb,  whereClaus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " selectionArgs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    sget-object v3, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_MMS:Landroid/net/Uri;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMMSPduFromTelephonyDbUseID(J)Landroid/database/Cursor;
    .locals 6

    .line 52
    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_MMS:Landroid/net/Uri;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSUseRowId(J)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    .line 68
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    sget-object v2, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_SMS:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySMSfromTelephony([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageTelephonyStorageAdapter;->mTeleDBHelper:Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/ITelephonyDBColumns;->CONTENT_SMS:Landroid/net/Uri;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/helper/TelephonyDbHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
