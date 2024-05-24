.class public Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BlockContactPersisit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final CREATE_BLOCK_TABLE:Ljava/lang/String; = "CREATE TABLE blockedContacts(id INTEGER PRIMARY KEY AUTOINCREMENT,phone_number TEXT,key_blocked TEXT, key_blocking_timestamp LONG);"

.field public static final DATABASE_NAME:Ljava/lang/String; = "blockContact.db"

.field private static final DATABASE_VERSION:I = 0x1c


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x1c

    const-string v2, "blockContact.db"

    .line 41
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE blockedContacts(id INTEGER PRIMARY KEY AUTOINCREMENT,phone_number TEXT,key_blocked TEXT, key_blocking_timestamp LONG);"

    .line 37
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;->createDb(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 51
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/BlockContactPersisit$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
