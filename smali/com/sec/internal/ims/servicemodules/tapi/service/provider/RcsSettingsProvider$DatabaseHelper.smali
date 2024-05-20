.class Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RcsSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0x67


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "rcs_settings.db"

    const/4 v1, 0x0

    const/16 v2, 0x67

    .line 97
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "INSERT INTO settings (key,value) VALUES (\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\',\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\');"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "CREATE TABLE settings (id integer primary key autoincrement,key TEXT,value TEXT);"

    .line 102
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider;->-$$Nest$sfgetFALSE()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceActivated"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider;->-$$Nest$sfgetFALSE()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigurationValidity"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider;->-$$Nest$sfgetFALSE()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceAvailable"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider;->-$$Nest$sfgetTRUE()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeable"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 115
    invoke-virtual {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MinimumBatteryLevel"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultMessagingMethod"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessagingMode"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MyCountryCode"

    const-string v1, "+1"

    .line 119
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CountryAreaCode"

    const-string v1, "0"

    .line 120
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MyContactId"

    const-string v1, ""

    .line 121
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MyDisplayName"

    .line 122
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDefaultConst;->DEFAULT_CHAT_RESPOND_TO_DISPLAY_REPORTS:Ljava/lang/Boolean;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChatRespondToDisplayReports"

    .line 125
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoAcceptFtChangeable"

    .line 129
    invoke-direct {p0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoAcceptFileTransfer"

    .line 131
    invoke-direct {p0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoAcceptFtInRoaming"

    .line 133
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/defaultconst/FileTransferDefaultConst;->DEFALUT_IMAGERESIZEOPTION:Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    .line 136
    invoke-virtual {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageResizeOption"

    .line 135
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->addParameter(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 204
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8

    const-string/jumbo p2, "value"

    .line 156
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 158
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "key"

    if-eqz v0, :cond_3

    .line 163
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 168
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 170
    :goto_1
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v3, :cond_2

    .line 172
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 175
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 176
    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 158
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_3
    if-eqz v0, :cond_4

    .line 182
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string p2, "DROP TABLE IF EXISTS settings"

    .line 184
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/RcsSettingsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p0, 0x0

    move p2, p0

    .line 190
    :goto_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 191
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, p0

    const-string/jumbo v2, "settings"

    const-string v4, "key = ?"

    .line 198
    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method
