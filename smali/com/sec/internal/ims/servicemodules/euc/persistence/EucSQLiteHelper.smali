.class Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EucSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper$EucSQLiteCursorFactory;,
        Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper$EucSQLiteCursor;
    }
.end annotation


# static fields
.field private static final CREATE_DIALOG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS DIALOG (ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON TEXT,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY(ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI), FOREIGN KEY(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) REFERENCES EUCRDATA(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) ON DELETE CASCADE);"

.field private static final CREATE_EUCR_DATA_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS EUCRDATA ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

.field private static final DB_NAME:Ljava/lang/String; = "eucr.db"

.field private static final DB_VERSION:I = 0x3

.field static final DIALOG_COLUMN_ACCEPT_BUTTON:Ljava/lang/String; = "ACCEPT_BUTTON"

.field static final DIALOG_COLUMN_ACCEPT_BUTTON_INDEX:I = 0x4

.field static final DIALOG_COLUMN_ID:Ljava/lang/String; = "ID"

.field static final DIALOG_COLUMN_ID_INDEX:I = 0x0

.field static final DIALOG_COLUMN_LANGUAGE:Ljava/lang/String; = "LANGUAGE"

.field static final DIALOG_COLUMN_LANGUAGE_INDEX:I = 0x1

.field static final DIALOG_COLUMN_REJECT_BUTTON:Ljava/lang/String; = "REJECT_BUTTON"

.field static final DIALOG_COLUMN_REJECT_BUTTON_INDEX:I = 0x5

.field static final DIALOG_COLUMN_REMOTE_URI:Ljava/lang/String; = "REMOTE_URI"

.field static final DIALOG_COLUMN_REMOTE_URI_INDEX:I = 0x8

.field static final DIALOG_COLUMN_SUBJECT:Ljava/lang/String; = "SUBJECT"

.field static final DIALOG_COLUMN_SUBJECT_INDEX:I = 0x2

.field static final DIALOG_COLUMN_SUBSCRIBER_IDENTITY:Ljava/lang/String; = "SUBSCRIBER_IDENTITY"

.field static final DIALOG_COLUMN_SUBSCRIBER_IDENTITY_INDEX:I = 0x6

.field static final DIALOG_COLUMN_TEXT:Ljava/lang/String; = "TEXT"

.field static final DIALOG_COLUMN_TEXT_INDEX:I = 0x3

.field static final DIALOG_COLUMN_TYPE:Ljava/lang/String; = "TYPE"

.field static final DIALOG_COLUMN_TYPE_INDEX:I = 0x7

.field static final DIALOG_TABLE_NAME:Ljava/lang/String; = "DIALOG"

.field private static final DROP_DIALOG_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS DIALOG;"

.field private static final DROP_EUCR_DATA_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS EUCRDATA;"

.field static final EUCRDATA_COLUMN_EXTERNAL:Ljava/lang/String; = "EXTERNAL"

.field static final EUCRDATA_COLUMN_EXTERNAL_INDEX:I = 0x2

.field static final EUCRDATA_COLUMN_ID:Ljava/lang/String; = "ID"

.field static final EUCRDATA_COLUMN_ID_INDEX:I = 0x0

.field static final EUCRDATA_COLUMN_PIN:Ljava/lang/String; = "PIN"

.field static final EUCRDATA_COLUMN_PIN_INDEX:I = 0x1

.field static final EUCRDATA_COLUMN_REMOTE_URI:Ljava/lang/String; = "REMOTE_URI"

.field static final EUCRDATA_COLUMN_REMOTE_URI_INDEX:I = 0x5

.field static final EUCRDATA_COLUMN_ROWID:Ljava/lang/String; = "ROWID"

.field static final EUCRDATA_COLUMN_STATE:Ljava/lang/String; = "STATE"

.field static final EUCRDATA_COLUMN_STATE_INDEX:I = 0x3

.field static final EUCRDATA_COLUMN_SUBSCRIBER_IDENTITY:Ljava/lang/String; = "SUBSCRIBER_IDENTITY"

.field static final EUCRDATA_COLUMN_SUBSCRIBER_IDENTITY_INDEX:I = 0x9

.field static final EUCRDATA_COLUMN_TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field static final EUCRDATA_COLUMN_TIMEOUT_INDEX:I = 0x7

.field static final EUCRDATA_COLUMN_TIMESTAMP:Ljava/lang/String; = "TIMESTAMP"

.field static final EUCRDATA_COLUMN_TIMESTAMP_INDEX:I = 0x6

.field static final EUCRDATA_COLUMN_TYPE:Ljava/lang/String; = "TYPE"

.field static final EUCRDATA_COLUMN_TYPE_INDEX:I = 0x4

.field static final EUCRDATA_COLUMN_USER_PIN:Ljava/lang/String; = "USER_PIN"

.field static final EUCRDATA_COLUMN_USER_PIN_INDEX:I = 0x8

.field static final EUCRDATA_TABLE_NAME:Ljava/lang/String; = "EUCRDATA"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;

.field private static sOpenCounter:I

.field private static volatile sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsOpenCounter()I
    .locals 1

    sget v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsOpenCounter(I)V
    .locals 0

    sput p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "eucr.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 166
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;
    .locals 2

    .line 154
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    if-nez v0, :cond_1

    .line 155
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    .line 159
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 162
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sVolatileInstance:Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 233
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 234
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close(), thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    sget v3, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reference counter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", thread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget v3, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    if-nez v3, :cond_0

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing database, thread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 243
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 243
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCursorFactory()Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .locals 1

    .line 250
    new-instance p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper$EucSQLiteCursorFactory;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper$EucSQLiteCursorFactory;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper$EucSQLiteCursorFactory-IA;)V

    return-object p0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 217
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .line 222
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 224
    sget v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    .line 225
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Obtaining database, reference counter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->sOpenCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 228
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const/4 p0, 0x1

    .line 255
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 260
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "DatabaseHelper onCreate() for eucr"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "exec SQL:CREATE TABLE IF NOT EXISTS EUCRDATA ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    .line 261
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE IF NOT EXISTS EUCRDATA ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    .line 262
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "exec SQL:CREATE TABLE IF NOT EXISTS DIALOG (ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON TEXT,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY(ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI), FOREIGN KEY(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) REFERENCES EUCRDATA(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) ON DELETE CASCADE);"

    .line 264
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CREATE TABLE IF NOT EXISTS DIALOG (ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON TEXT,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY(ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI), FOREIGN KEY(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) REFERENCES EUCRDATA(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) ON DELETE CASCADE);"

    .line 265
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 270
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucSQLiteHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db upgrade: oldVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "ALTER TABLE DIALOG_new RENAME TO DIALOG;"

    const-string v0, "DROP TABLE IF EXISTS DIALOG;"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-string p2, "exec SQL:CREATE TABLE IF NOT EXISTS DIALOG_new ( ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON INTEGER,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY (ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    .line 294
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "CREATE TABLE IF NOT EXISTS DIALOG_new ( ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON INTEGER,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY (ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    .line 295
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "exec SQL:INSERT INTO DIALOG_new (ID,LANGUAGE,SUBJECT,TEXT,ACCEPT_BUTTON,REJECT_BUTTON,SUBSCRIBER_IDENTITY,TYPE) SELECT * FROM DIALOG;"

    .line 307
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "INSERT INTO DIALOG_new (ID,LANGUAGE,SUBJECT,TEXT,ACCEPT_BUTTON,REJECT_BUTTON,SUBSCRIBER_IDENTITY,TYPE) SELECT * FROM DIALOG;"

    .line 308
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "exec SQL:UPDATE DIALOG SET REMOTE_URI = (SELECT REMOTE_URI FROM EUCRDATA WHERE(ID=DIALOG.ID AND TYPE=DIALOG.TYPE AND SUBSCRIBER_IDENTITY=DIALOG.SUBSCRIBER_IDENTITY));"

    .line 325
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "UPDATE DIALOG SET REMOTE_URI = (SELECT REMOTE_URI FROM EUCRDATA WHERE(ID=DIALOG.ID AND TYPE=DIALOG.TYPE AND SUBSCRIBER_IDENTITY=DIALOG.SUBSCRIBER_IDENTITY));"

    .line 326
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "exec SQL:CREATE TABLE IF NOT EXISTS EUCRDATA_new ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    .line 347
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "CREATE TABLE IF NOT EXISTS EUCRDATA_new ( ID TEXT,PIN INTEGER,EXTERNAL INTEGER,STATE INTEGER,TYPE INTEGER,REMOTE_URI TEXT,TIMESTAMP INTEGER,TIMEOUT INTEGER,USER_PIN TEXT,SUBSCRIBER_IDENTITY TEXT, PRIMARY KEY (ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI));"

    .line 348
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "exec SQL:INSERT INTO EUCRDATA_new (ID,PIN,EXTERNAL,STATE,TYPE,REMOTE_URI,TIMESTAMP,TIMEOUT,USER_PIN,SUBSCRIBER_IDENTITY) SELECT * FROM EUCRDATA;"

    .line 362
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "INSERT INTO EUCRDATA_new (ID,PIN,EXTERNAL,STATE,TYPE,REMOTE_URI,TIMESTAMP,TIMEOUT,USER_PIN,SUBSCRIBER_IDENTITY) SELECT * FROM EUCRDATA;"

    .line 363
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS EUCRDATA;"

    .line 364
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE EUCRDATA_new RENAME TO EUCRDATA;"

    .line 365
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v1

    :cond_0
    if-ne p2, v1, :cond_1

    const-string p0, "CREATE TABLE IF NOT EXISTS DIALOG_new (ID TEXT,LANGUAGE TEXT,SUBJECT TEXT,TEXT TEXT,ACCEPT_BUTTON TEXT,REJECT_BUTTON TEXT,SUBSCRIBER_IDENTITY TEXT, TYPE INTEGER, REMOTE_URI TEXT, PRIMARY KEY(ID,TYPE,LANGUAGE,SUBSCRIBER_IDENTITY,REMOTE_URI), FOREIGN KEY(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) REFERENCES EUCRDATA(ID,TYPE,SUBSCRIBER_IDENTITY,REMOTE_URI) ON DELETE CASCADE);"

    .line 404
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT INTO DIALOG_new SELECT * FROM DIALOG;"

    .line 409
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
