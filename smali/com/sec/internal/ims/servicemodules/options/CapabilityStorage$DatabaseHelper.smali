.class Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CapabilityStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "capdiscovery.db"

.field private static final DATABASE_VERSION:I = 0x9

.field private static final SQL_CREATE_CAPABILITIES_TABLE:Ljava/lang/String; = "CREATE TABLE capabilities( _id INTEGER PRIMARY KEY, contact_id TEXT, uri TEXT, available INT, timestamp BIGINT DEFAULT 0, display_name TEXT, number TEXT, features INTEGER DEFAULT 0, avail_features INTEGER DEFAULT 0, ext_features TEXT, presence_support INT DEFAULT 0, legacy_latching INT DEFAULT 0, phone_id INT, isexpired INTEGER DEFAULT 0, lastseen BIGINT DEFAULT 0, botserviceid TEXT, passertedidset TEXT, pidf TEXT );"

.field private static final SQL_CREATE_INDEX_URI:Ljava/lang/String; = "CREATE INDEX idx_uri ON capabilities (uri);"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "capdiscovery.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    .line 655
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 656
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 657
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private clearCapabilitySharedPreference()V
    .locals 2

    const-string v0, "CapabilityStorage"

    const-string v1, "clearCapabilitySharedPreference"

    .line 733
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "capdiscovery"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 736
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method getCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 723
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "CapabilityStorage"

    .line 725
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getCursor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance p0, Landroid/database/MatrixCursor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public incrementRefCount()V
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string p0, "CapabilityStorage"

    const-string v0, "onCreate: Creating DB."

    .line 662
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "DROP TABLE IF EXISTS capabilities"

    .line 663
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE capabilities( _id INTEGER PRIMARY KEY, contact_id TEXT, uri TEXT, available INT, timestamp BIGINT DEFAULT 0, display_name TEXT, number TEXT, features INTEGER DEFAULT 0, avail_features INTEGER DEFAULT 0, ext_features TEXT, presence_support INT DEFAULT 0, legacy_latching INT DEFAULT 0, phone_id INT, isexpired INTEGER DEFAULT 0, lastseen BIGINT DEFAULT 0, botserviceid TEXT, passertedidset TEXT, pidf TEXT );"

    .line 666
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX idx_uri ON capabilities (uri);"

    .line 667
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDowngrade() oldVersion ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] , newVersion ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CapabilityStorage"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p2

    if-eq p2, p3, :cond_0

    .line 695
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 p2, 0x9

    .line 696
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 697
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->clearCapabilitySharedPreference()V

    :cond_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 703
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgrade() oldVersion ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] , newVersion ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CapabilityStorage"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x7

    if-ne p2, v1, :cond_0

    if-lt p3, v0, :cond_0

    const-string p2, "ALTER TABLE capabilities ADD COLUMN isexpired INTEGER DEFAULT 0"

    .line 674
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE capabilities ADD COLUMN lastseen BIGINT DEFAULT 0"

    .line 675
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE capabilities ADD COLUMN botserviceid TEXT"

    .line 676
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE capabilities ADD COLUMN passertedidset TEXT"

    .line 677
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 680
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p2

    const/16 v1, 0x9

    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    const-string p0, "ALTER TABLE capabilities ADD COLUMN pidf TEXT"

    .line 681
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    goto :goto_0

    .line 684
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p2

    if-eq p2, p3, :cond_2

    .line 685
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 686
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 687
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->clearCapabilitySharedPreference()V

    :cond_2
    :goto_0
    return-void
.end method

.method safeClose(Ljava/io/Closeable;)V
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    if-eqz p1, :cond_1

    .line 710
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 713
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 716
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "safeClose: Someone uses db ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityStorage$DatabaseHelper;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "). Let it close db later!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapabilityStorage"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
