.class Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SocialPresenceStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "presence.db"

.field private static final DATABASE_VERSION:I = 0x5

.field private static final SQL_CREATE_CAPABILITIES_TABLE:Ljava/lang/String; = "CREATE TABLE presence( _id INTEGER PRIMARY KEY, contact_id TEXT, raw_contact_id TEXT, tel_uri TEXT, uri TEXT, timestamp BIGINT DEFAULT 0, display_name TEXT, phone_number TEXT, avatar_uri TEXT, birthday TEXT, email TEXT, homepage TEXT, activities TEXT, hyper INT, mood_text TEXT, facebook TEXT, twitter TEXT, cyworld TEXT, phone_id INT );"

.field private static final SQL_CREATE_INDEX_TEL_URI:Ljava/lang/String; = "CREATE INDEX idx_tel_uri ON presence (tel_uri);"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "presence.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 358
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string p0, "SocialPresenceStorage"

    const-string v0, "onCreate: Creating DB."

    .line 363
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "DROP TABLE IF EXISTS presence"

    .line 364
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE presence( _id INTEGER PRIMARY KEY, contact_id TEXT, raw_contact_id TEXT, tel_uri TEXT, uri TEXT, timestamp BIGINT DEFAULT 0, display_name TEXT, phone_number TEXT, avatar_uri TEXT, birthday TEXT, email TEXT, homepage TEXT, activities TEXT, hyper INT, mood_text TEXT, facebook TEXT, twitter TEXT, cyworld TEXT, phone_id INT );"

    .line 367
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX idx_tel_uri ON presence (tel_uri);"

    .line 368
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 382
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

    const-string v0, "SocialPresenceStorage"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p2

    if-eq p2, p3, :cond_0

    .line 384
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p0, 0x5

    .line 385
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 373
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

    const-string v0, "SocialPresenceStorage"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p2

    if-eq p2, p3, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceStorage$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p0, 0x5

    .line 376
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    :cond_0
    return-void
.end method
