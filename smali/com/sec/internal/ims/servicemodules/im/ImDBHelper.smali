.class public Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ImDBHelper.java"


# static fields
.field public static final CHAT_MESSAGE_VIEW:Ljava/lang/String; = "chatmessageview"

.field public static final CLOUD_MESSAGE_PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.cmstore"

.field public static final CREATE_CHAT_MESSAGE_VIEW:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS chatmessageview AS SELECT _id,_id AS msg_id,chat_id AS chat_id,replace(remote_uri, \'tel:\', \'\') AS contact,body AS content,inserted_timestamp AS timestamp,sent_timestamp AS timestamp_sent,delivered_timestamp AS timestamp_delivered,displayed_timestamp AS timestamp_displayed,content_type AS mime_type,status AS status,null AS reason_code,status AS read_status,direction AS direction,delivered_timestamp AS expired_delivery FROM message WHERE is_filetransfer = 0 AND message_type < 3"

.field public static final CREATE_FILETRANSFER_VIEW:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS filetransferview AS SELECT _id,_id AS ft_id,chat_id AS chat_id,replace(remote_uri, \'tel:\', \'\') AS contact,file_path AS file,file_name AS filename,content_type AS mime_type,thumbnail_path AS fileicon,thumbnail_path AS fileicon_mime_type,direction AS direction,file_size AS filesize,bytes_transf AS transferred,inserted_timestamp AS timestamp,sent_timestamp AS timestamp_sent,delivered_timestamp AS timestamp_delivered,displayed_timestamp AS timestamp_displayed,state||\';\'||direction AS state,reason AS reason_code,status AS read_status,null AS file_expiration,null AS fileicon_expiration,delivered_timestamp AS expired_delivery FROM message WHERE is_filetransfer = 1"

.field public static final CREATE_IMDNRECROUTE_TABLE:Ljava/lang/String; = "CREATE TABLE imdnrecroute(_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT,uri TEXT,alias TEXT);"

.field public static final CREATE_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE message(_id INTEGER PRIMARY KEY AUTOINCREMENT,is_filetransfer INTEGER,direction INTEGER,chat_id TEXT NOT NULL,remote_uri TEXT,sender_alias TEXT,content_type TEXT,inserted_timestamp LONG,ext_info TEXT,body TEXT,suggestion TEXT,notification_disposition_mask INTEGER,notification_status INTEGER DEFAULT 0,disposition_notification_status INTEGER DEFAULT 0,sent_timestamp LONG,delivered_timestamp LONG,displayed_timestamp LONG,message_type INTEGER,message_isslm INTEGER,status INTEGER,not_displayed_counter INTEGER,imdn_message_id TEXT, imdn_original_to TEXT, conversation_id TEXT, contribution_id TEXT, file_path TEXT,file_name TEXT,file_size LONG,file_transfer_id TEXT,state INTEGER,reason INTEGER,bytes_transf LONG,ft_status INTEGER,thumbnail_path TEXT,is_resumable INTEGER,transfer_mech INTEGER DEFAULT 0,data_url TEXT,request_message_id TEXT,is_resizable INTEGER DEFAULT 0,is_broadcast_msg INTEGER DEFAULT 0,is_vm2txt_msg INTEGER DEFAULT 0,extra_ft INTEGER DEFAULT 0,flag_mask INTEGER DEFAULT 0,revocation_status INTEGER DEFAULT 0,sim_imsi TEXT DEFAULT \'\',device_id TEXT DEFAULT NULL,file_disposition INTEGER,playing_length INTEGER DEFAULT 0,maap_traffic_type TEXT DEFAULT NULL,reference_id TEXT DEFAULT NULL,reference_type TEXT DEFAULT NULL,reference_value TEXT DEFAULT NULL,messaging_tech INTEGER DEFAULT 0);"

.field public static final CREATE_NOTIFICATION_TABLE:Ljava/lang/String; = "CREATE TABLE notification(id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT, sender_uri TEXT,status INTEGER DEFAULT 0,timestamp LONG);"

.field public static final CREATE_PARTICIPANT_TABLE:Ljava/lang/String; = "CREATE TABLE participant(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,status INTEGER,type INTEGER,uri TEXT,alias TEXT);"

.field public static final CREATE_SESSION_TABLE:Ljava/lang/String; = "CREATE TABLE session(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,own_sim_imsi TEXT,own_group_alias TEXT,direction INTEGER, chat_type INTEGER, conversation_id TEXT, contribution_id TEXT, is_group_chat INTEGER,is_ft_group_chat INTEGER DEFAULT 1, status INTEGER,subject TEXT,is_muted INTEGER,max_participants_count INTEGER,imdn_notifications_availability INTEGER DEFAULT 1, session_uri TEXT DEFAULT NULL,is_broadcast_msg INTEGER, inserted_time_stamp LONG, preferred_uri TEXT DEFAULT NULL,is_reusable INTEGER DEFAULT 1,subject_participant TEXT DEFAULT NULL,subject_timestamp LONG,icon_path TEXT DEFAULT NULL,icon_participant TEXT DEFAULT NULL,icon_timestamp LONG,icon_uri TEXT DEFAULT NULL,sim_imsi TEXT DEFAULT NULL,is_chatbot_role INTEGER DEFAULT 0,chat_mode INTEGER DEFAULT 0);"

.field public static final DATABASE_NAME:Ljava/lang/String; = "rcsim.db"

.field public static final FILETRANSFER_VIEW:Ljava/lang/String; = "filetransferview"

.field public static final IMDNRECROUTE_TABLE:Ljava/lang/String; = "imdnrecroute"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MESSAGE_TABLE:Ljava/lang/String; = "message"

.field public static final NOTIFICATION_TABLE:Ljava/lang/String; = "notification"

.field public static final PARTICIPANT_TABLE:Ljava/lang/String; = "participant"

.field public static final SESSION_TABLE:Ljava/lang/String; = "session"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "rcsim.db"

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 552
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "imdnrecroute"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string p0, "session"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string p0, "message"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string p0, "participant"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string p0, "notification"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "CREATE TABLE imdnrecroute(_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT,uri TEXT,alias TEXT);"

    return-object p0

    :pswitch_1
    const-string p0, "CREATE TABLE session(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,own_sim_imsi TEXT,own_group_alias TEXT,direction INTEGER, chat_type INTEGER, conversation_id TEXT, contribution_id TEXT, is_group_chat INTEGER,is_ft_group_chat INTEGER DEFAULT 1, status INTEGER,subject TEXT,is_muted INTEGER,max_participants_count INTEGER,imdn_notifications_availability INTEGER DEFAULT 1, session_uri TEXT DEFAULT NULL,is_broadcast_msg INTEGER, inserted_time_stamp LONG, preferred_uri TEXT DEFAULT NULL,is_reusable INTEGER DEFAULT 1,subject_participant TEXT DEFAULT NULL,subject_timestamp LONG,icon_path TEXT DEFAULT NULL,icon_participant TEXT DEFAULT NULL,icon_timestamp LONG,icon_uri TEXT DEFAULT NULL,sim_imsi TEXT DEFAULT NULL,is_chatbot_role INTEGER DEFAULT 0,chat_mode INTEGER DEFAULT 0);"

    return-object p0

    :pswitch_2
    const-string p0, "CREATE TABLE message(_id INTEGER PRIMARY KEY AUTOINCREMENT,is_filetransfer INTEGER,direction INTEGER,chat_id TEXT NOT NULL,remote_uri TEXT,sender_alias TEXT,content_type TEXT,inserted_timestamp LONG,ext_info TEXT,body TEXT,suggestion TEXT,notification_disposition_mask INTEGER,notification_status INTEGER DEFAULT 0,disposition_notification_status INTEGER DEFAULT 0,sent_timestamp LONG,delivered_timestamp LONG,displayed_timestamp LONG,message_type INTEGER,message_isslm INTEGER,status INTEGER,not_displayed_counter INTEGER,imdn_message_id TEXT, imdn_original_to TEXT, conversation_id TEXT, contribution_id TEXT, file_path TEXT,file_name TEXT,file_size LONG,file_transfer_id TEXT,state INTEGER,reason INTEGER,bytes_transf LONG,ft_status INTEGER,thumbnail_path TEXT,is_resumable INTEGER,transfer_mech INTEGER DEFAULT 0,data_url TEXT,request_message_id TEXT,is_resizable INTEGER DEFAULT 0,is_broadcast_msg INTEGER DEFAULT 0,is_vm2txt_msg INTEGER DEFAULT 0,extra_ft INTEGER DEFAULT 0,flag_mask INTEGER DEFAULT 0,revocation_status INTEGER DEFAULT 0,sim_imsi TEXT DEFAULT \'\',device_id TEXT DEFAULT NULL,file_disposition INTEGER,playing_length INTEGER DEFAULT 0,maap_traffic_type TEXT DEFAULT NULL,reference_id TEXT DEFAULT NULL,reference_type TEXT DEFAULT NULL,reference_value TEXT DEFAULT NULL,messaging_tech INTEGER DEFAULT 0);"

    return-object p0

    :pswitch_3
    const-string p0, "CREATE TABLE participant(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,status INTEGER,type INTEGER,uri TEXT,alias TEXT);"

    return-object p0

    :pswitch_4
    const-string p0, "CREATE TABLE notification(id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT, sender_uri TEXT,status INTEGER DEFAULT 0,timestamp LONG);"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x237a88eb -> :sswitch_4
        0x2dbdef33 -> :sswitch_3
        0x38eb0007 -> :sswitch_2
        0x76508296 -> :sswitch_1
        0x7fdaa667 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 490
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "createView()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CREATE VIEW IF NOT EXISTS chatmessageview AS SELECT _id,_id AS msg_id,chat_id AS chat_id,replace(remote_uri, \'tel:\', \'\') AS contact,body AS content,inserted_timestamp AS timestamp,sent_timestamp AS timestamp_sent,delivered_timestamp AS timestamp_delivered,displayed_timestamp AS timestamp_displayed,content_type AS mime_type,status AS status,null AS reason_code,status AS read_status,direction AS direction,delivered_timestamp AS expired_delivery FROM message WHERE is_filetransfer = 0 AND message_type < 3"

    .line 491
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE VIEW IF NOT EXISTS filetransferview AS SELECT _id,_id AS ft_id,chat_id AS chat_id,replace(remote_uri, \'tel:\', \'\') AS contact,file_path AS file,file_name AS filename,content_type AS mime_type,thumbnail_path AS fileicon,thumbnail_path AS fileicon_mime_type,direction AS direction,file_size AS filesize,bytes_transf AS transferred,inserted_timestamp AS timestamp,sent_timestamp AS timestamp_sent,delivered_timestamp AS timestamp_delivered,displayed_timestamp AS timestamp_displayed,state||\';\'||direction AS state,reason AS reason_code,status AS read_status,null AS file_expiration,null AS fileicon_expiration,delivered_timestamp AS expired_delivery FROM message WHERE is_filetransfer = 1"

    .line 492
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static makeParticipantRow(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)Landroid/content/ContentValues;
    .locals 3

    .line 261
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 262
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUserAlias()Ljava/lang/String;

    move-result-object p0

    const-string v1, "alias"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeSession(Landroid/database/Cursor;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 31

    move-object/from16 v0, p0

    const-string v1, "session_uri"

    .line 271
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "subject_participant"

    .line 274
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v21

    const-string/jumbo v2, "subject_timestamp"

    .line 275
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 276
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v2, "icon_participant"

    .line 278
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v24

    const-string v2, "icon_timestamp"

    .line 279
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 280
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 282
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    const-string v3, "_id"

    .line 283
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "chat_id"

    .line 284
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "own_sim_imsi"

    .line 285
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "own_group_alias"

    .line 286
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "chat_type"

    .line 287
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v8

    const-string/jumbo v3, "status"

    .line 288
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v9

    const-string/jumbo v3, "subject"

    .line 289
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "is_muted"

    .line 290
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v3, v12, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v11

    :goto_0
    const-string v3, "max_participants_count"

    .line 291
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v3, "direction"

    .line 292
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v17

    const-string v3, "conversation_id"

    .line 293
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string v3, "contribution_id"

    .line 294
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    if-eqz v1, :cond_1

    .line 295
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v3, "is_reusable"

    .line 296
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v12, :cond_2

    move/from16 v23, v12

    goto :goto_2

    :cond_2
    move/from16 v23, v11

    :goto_2
    const-string/jumbo v3, "sim_imsi"

    .line 298
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const-string v3, "icon_path"

    .line 300
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v3, "icon_uri"

    .line 302
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v3, "is_chatbot_role"

    .line 303
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v12, :cond_3

    move/from16 v29, v12

    goto :goto_3

    :cond_3
    move/from16 v29, v11

    :goto_3
    const-string v3, "chat_mode"

    .line 304
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v28

    const-wide/16 v18, 0x0

    move-object v3, v2

    move v11, v13

    move/from16 v12, v16

    move-object/from16 v13, v17

    move-object v0, v14

    move-object/from16 v14, v20

    move-object/from16 v30, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    move/from16 v17, v23

    move-object/from16 v20, v25

    move-object/from16 v22, v30

    move-object/from16 v23, v26

    move-object/from16 v25, v0

    move-object/from16 v26, v27

    move/from16 v27, v29

    invoke-direct/range {v3 .. v28}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;Ljava/lang/String;ZILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZJLjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)V

    return-object v2
.end method

.method public static makeSessionRow(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Landroid/content/ContentValues;
    .locals 9

    .line 213
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 215
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnPhoneNum()Ljava/lang/String;

    move-result-object v1

    const-string v2, "own_sim_imsi"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sim_imsi"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnGroupAlias()Ljava/lang/String;

    move-result-object v1

    const-string v2, "own_group_alias"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_group_chat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chat_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    const-string/jumbo v2, "subject_timestamp"

    const-string/jumbo v3, "subject_participant"

    const-string/jumbo v4, "subject"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v7

    .line 224
    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide v3, v5

    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    const-string v2, "icon_uri"

    const-string v3, "icon_timestamp"

    const-string v4, "icon_participant"

    const-string v8, "icon_path"

    if-eqz v1, :cond_5

    .line 235
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getParticipant()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    move-object v1, v7

    .line 236
    :goto_3
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getTimestamp()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 242
    :cond_5
    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_4
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isMuted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_muted"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 248
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getMaxParticipantsCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "max_participants_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "direction"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "conversation_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contribution_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getSessionUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    const-string v1, "session_uri"

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_MANY_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_broadcast_msg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isReusable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_reusable"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isChatbotRole()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_chatbot_role"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v3

    :cond_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "chat_mode"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const-string v0, ","

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_bkp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pragma table_info("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELECT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v6, 0x0

    .line 504
    :try_start_0
    invoke-virtual {p2, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v7, :cond_8

    .line 505
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-gtz v8, :cond_0

    goto/16 :goto_2

    .line 512
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v9, "name"

    if-eqz v8, :cond_2

    .line 514
    :cond_1
    :try_start_2
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 517
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ALTER TABLE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " RENAME TO "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 518
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->createTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_5

    .line 522
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 524
    :cond_3
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 525
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 527
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v2

    .line 530
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v8, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 519
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_5
    :goto_1
    if-eqz p0, :cond_6

    .line 533
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v6, :cond_7

    .line 535
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string p0, " FROM "

    .line 536
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string p0, ") "

    .line 538
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 539
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update table: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 542
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DROP TABLE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 544
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    .line 506
    :cond_8
    :goto_2
    :try_start_7
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->createTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v7, :cond_9

    .line 544
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 547
    :cond_9
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_2
    move-exception p0

    if-eqz v7, :cond_a

    .line 504
    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    throw p0
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 545
    :try_start_b
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL Exception while updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 547
    :goto_4
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_5
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 548
    throw p0
.end method


# virtual methods
.method public makeFtMessage(Landroid/database/Cursor;Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 9

    const-string/jumbo p0, "transfer_mech"

    .line 754
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string v0, "direction"

    .line 755
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    const-string v2, "remote_uri"

    .line 756
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sim_imsi"

    .line 757
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    if-nez p0, :cond_0

    .line 761
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object p0

    goto :goto_0

    .line 762
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, p0, :cond_1

    .line 763
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-result-object p0

    goto :goto_0

    .line 765
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object p0

    .line 768
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 769
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 770
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 771
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 772
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    .line 773
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 774
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 775
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v5, "_id"

    .line 776
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->id(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 777
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v1, "chat_id"

    .line 778
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    .line 779
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "sender_alias"

    .line 780
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "content_type"

    .line 781
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "sent_timestamp"

    .line 782
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "inserted_timestamp"

    .line 783
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "delivered_timestamp"

    .line 784
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deliveredTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "displayed_timestamp"

    .line 785
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->displayedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "message_type"

    .line 786
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "message_isslm"

    .line 787
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    move v2, v6

    goto :goto_2

    :cond_3
    move v2, v5

    :goto_2
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "file_path"

    .line 788
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    const-string v2, "file_name"

    .line 789
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    const-string v2, "file_size"

    .line 790
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    const-string v2, "file_transfer_id"

    .line 791
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    const-string v2, "bytes_transf"

    .line 792
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->transferredBytes(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    const-string v2, "reason"

    .line 793
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setCancelReason(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    const-string v2, "ft_status"

    .line 794
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string/jumbo v2, "thumbnail_path"

    .line 795
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    const-string v2, "is_resumable"

    .line 796
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setResumableOptions(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    const-string v2, "imdn_message_id"

    .line 797
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "imdn_original_to"

    .line 798
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "notification_disposition_mask"

    .line 800
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->decode(I)Ljava/util/Set;

    move-result-object v2

    .line 799
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "notification_status"

    .line 801
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "disposition_notification_status"

    .line 803
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v2

    .line 802
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->desiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string/jumbo v2, "state"

    .line 804
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    const-string v2, "not_displayed_counter"

    .line 805
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "request_message_id"

    .line 806
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "is_resizable"

    .line 807
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v6, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    const-string v2, "is_broadcast_msg"

    .line 808
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v6, :cond_5

    move v2, v6

    goto :goto_4

    :cond_5
    move v2, v5

    :goto_4
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v2, "body"

    .line 809
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    .line 810
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v0, "extra_ft"

    .line 811
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p2

    const-string v0, "conversation_id"

    .line 812
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v0, "contribution_id"

    .line 813
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v0, "device_id"

    .line 814
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v0, "flag_mask"

    .line 815
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v0, "revocation_status"

    .line 817
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v0

    .line 816
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->revocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v0, "file_disposition"

    .line 818
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    .line 819
    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v1

    .line 818
    :goto_5
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p2

    const-string v0, "playing_length"

    .line 820
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setPlayingLength(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p2

    .line 821
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v0, "maap_traffic_type"

    .line 822
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    const-string v0, "messaging_tech"

    .line 823
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    .line 825
    instance-of p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    if-eqz p2, :cond_8

    .line 826
    move-object p2, p0

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const-string v0, "data_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->dataUrl(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 828
    :cond_8
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p0

    return-object p0
.end method

.method public makeFtMessageRow(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Landroid/content/ContentValues;
    .locals 2

    .line 614
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x1

    .line 616
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_filetransfer"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "remote_uri"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getUserAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sender_alias"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "inserted_timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 623
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeliveredTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "delivered_timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 624
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getExtInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getExtInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext_info"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_path"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "file_size"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 630
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 631
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->toInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "file_disposition"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getPlayingLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "playing_length"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileTransferId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file_transfer_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "state"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getReasonId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferredBytes()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "bytes_transf"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 638
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ft_status"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "thumbnail_path"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getResumableOptionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_resumable"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 641
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getTransferMech()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "transfer_mech"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v0, :cond_3

    .line 643
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->getDataUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data_url"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDispositionNotification()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->encode(Ljava/util/Set;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "notification_disposition_mask"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "notification_status"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "disposition_notification_status"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imdn_message_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "message_isslm"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 650
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDisplayedTimestamp()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "displayed_timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 651
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotDisplayedCounter()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "not_displayed_counter"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request_message_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getIsResizable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_resizable"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 654
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSentTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "sent_timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 656
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "message_type"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isBroadcastMsg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_broadcast_msg"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mExtraFt:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "extra_ft"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 659
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getConversationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContributionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contribution_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getFlagMask()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "flag_mask"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "revocation_status"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sim_imsi"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maap_traffic_type"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "messaging_tech"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public makeImMessage(Landroid/database/Cursor;Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 6

    const-string p0, "remote_uri"

    .line 698
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "content_type"

    .line 699
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "body"

    .line 700
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sim_imsi"

    .line 701
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v3

    .line 704
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v4

    .line 705
    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 706
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 707
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 708
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v4

    .line 709
    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 710
    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v5, "_id"

    .line 711
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->id(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v5, "direction"

    .line 712
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v5, "chat_id"

    .line 713
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    if-eqz p0, :cond_0

    .line 714
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v4, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 715
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string/jumbo v1, "suggestion"

    .line 716
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v1, "sender_alias"

    .line 717
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 718
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "inserted_timestamp"

    .line 719
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string/jumbo v0, "status"

    .line 720
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "notification_disposition_mask"

    .line 722
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->decode(I)Ljava/util/Set;

    move-result-object v0

    .line 721
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "notification_status"

    .line 723
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "disposition_notification_status"

    .line 725
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    .line 724
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->desiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "sent_timestamp"

    .line 726
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "delivered_timestamp"

    .line 727
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deliveredTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "displayed_timestamp"

    .line 728
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->displayedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "message_type"

    .line 729
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "message_isslm"

    .line 730
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "imdn_message_id"

    .line 731
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "imdn_original_to"

    .line 732
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "not_displayed_counter"

    .line 733
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "request_message_id"

    .line 734
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "is_broadcast_msg"

    .line 735
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string v0, "is_vm2txt_msg"

    .line 736
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v4, :cond_3

    move v1, v4

    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isVM2TextMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 737
    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string p2, "conversation_id"

    .line 738
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string p2, "contribution_id"

    .line 739
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string p2, "device_id"

    .line 740
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string p2, "flag_mask"

    .line 741
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string p2, "revocation_status"

    .line 743
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object p2

    .line 742
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->revocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 744
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string p2, "maap_traffic_type"

    .line 745
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string p2, "messaging_tech"

    .line 746
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string p2, "reference_id"

    .line 747
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceImdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string p2, "reference_type"

    .line 748
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const-string p2, "reference_value"

    .line 749
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceValue(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 750
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p0

    return-object p0
.end method

.method public makeImMessageRow(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)Landroid/content/ContentValues;
    .locals 2

    .line 569
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 571
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chat_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_filetransfer"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "remote_uri"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getUserAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sender_alias"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSuggestion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "suggestion"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDispositionNotification()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->encode(Ljava/util/Set;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "notification_disposition_mask"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "notification_status"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "disposition_notification_status"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "inserted_timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 581
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSentTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "sent_timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeliveredTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "delivered_timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 583
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getExtInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getExtInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext_info"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDisplayedTimestamp()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "displayed_timestamp"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 587
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "message_type"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "message_isslm"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 589
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotDisplayedCounter()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "not_displayed_counter"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imdn_message_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnOriginalTo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imdn_original_to"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request_message_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isBroadcastMsg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_broadcast_msg"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 597
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isVM2TextMsg()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_vm2txt_msg"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getConversationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conversation_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContributionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contribution_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getFlagMask()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "flag_mask"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "revocation_status"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sim_imsi"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maap_traffic_type"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "messaging_tech"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceImdnId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reference_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reference_type"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getReferenceValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reference_value"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public makeImdnRecRoute(Landroid/database/Cursor;)Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;
    .locals 6

    .line 842
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    const-string v0, "_id"

    .line 843
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v0, "message_id"

    .line 844
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v0, "imdn_id"

    .line 845
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "uri"

    .line 846
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "alias"

    .line 847
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public makeImdnRecRouteRow(Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;)Landroid/content/ContentValues;
    .locals 2

    .line 672
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 673
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getMessageId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getImdnMsgId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imdn_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getRecordRouteUri()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uri"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;->getRecordRouteDispName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alias"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public makeMessageNotificationRow(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 681
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 683
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "message_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imdn_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sender_uri"

    .line 685
    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSentTimestamp()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "timestamp"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public makeMessageNotificationUpdateRow(JI)Landroid/content/ContentValues;
    .locals 0

    .line 691
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 692
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "timestamp"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 693
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "status"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public makeParticipant(Landroid/database/Cursor;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .locals 7

    .line 832
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    const-string v0, "_id"

    .line 833
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v0, "chat_id"

    .line 834
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "status"

    .line 835
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v3

    const-string/jumbo v0, "type"

    .line 836
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object v4

    const-string/jumbo v0, "uri"

    .line 837
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    const-string v0, "alias"

    .line 838
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 315
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ImDBHelper onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE session(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,own_sim_imsi TEXT,own_group_alias TEXT,direction INTEGER, chat_type INTEGER, conversation_id TEXT, contribution_id TEXT, is_group_chat INTEGER,is_ft_group_chat INTEGER DEFAULT 1, status INTEGER,subject TEXT,is_muted INTEGER,max_participants_count INTEGER,imdn_notifications_availability INTEGER DEFAULT 1, session_uri TEXT DEFAULT NULL,is_broadcast_msg INTEGER, inserted_time_stamp LONG, preferred_uri TEXT DEFAULT NULL,is_reusable INTEGER DEFAULT 1,subject_participant TEXT DEFAULT NULL,subject_timestamp LONG,icon_path TEXT DEFAULT NULL,icon_participant TEXT DEFAULT NULL,icon_timestamp LONG,icon_uri TEXT DEFAULT NULL,sim_imsi TEXT DEFAULT NULL,is_chatbot_role INTEGER DEFAULT 0,chat_mode INTEGER DEFAULT 0);"

    .line 316
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE message(_id INTEGER PRIMARY KEY AUTOINCREMENT,is_filetransfer INTEGER,direction INTEGER,chat_id TEXT NOT NULL,remote_uri TEXT,sender_alias TEXT,content_type TEXT,inserted_timestamp LONG,ext_info TEXT,body TEXT,suggestion TEXT,notification_disposition_mask INTEGER,notification_status INTEGER DEFAULT 0,disposition_notification_status INTEGER DEFAULT 0,sent_timestamp LONG,delivered_timestamp LONG,displayed_timestamp LONG,message_type INTEGER,message_isslm INTEGER,status INTEGER,not_displayed_counter INTEGER,imdn_message_id TEXT, imdn_original_to TEXT, conversation_id TEXT, contribution_id TEXT, file_path TEXT,file_name TEXT,file_size LONG,file_transfer_id TEXT,state INTEGER,reason INTEGER,bytes_transf LONG,ft_status INTEGER,thumbnail_path TEXT,is_resumable INTEGER,transfer_mech INTEGER DEFAULT 0,data_url TEXT,request_message_id TEXT,is_resizable INTEGER DEFAULT 0,is_broadcast_msg INTEGER DEFAULT 0,is_vm2txt_msg INTEGER DEFAULT 0,extra_ft INTEGER DEFAULT 0,flag_mask INTEGER DEFAULT 0,revocation_status INTEGER DEFAULT 0,sim_imsi TEXT DEFAULT \'\',device_id TEXT DEFAULT NULL,file_disposition INTEGER,playing_length INTEGER DEFAULT 0,maap_traffic_type TEXT DEFAULT NULL,reference_id TEXT DEFAULT NULL,reference_type TEXT DEFAULT NULL,reference_value TEXT DEFAULT NULL,messaging_tech INTEGER DEFAULT 0);"

    .line 317
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE participant(_id INTEGER PRIMARY KEY AUTOINCREMENT,chat_id TEXT,status INTEGER,type INTEGER,uri TEXT,alias TEXT);"

    .line 318
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE imdnrecroute(_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT,uri TEXT,alias TEXT);"

    .line 319
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE notification(id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER DEFAULT 0,imdn_id TEXT, sender_uri TEXT,status INTEGER DEFAULT 0,timestamp LONG);"

    .line 320
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->createView(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 481
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db downgrade : oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " newVersion="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "session"

    .line 482
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p2, "message"

    .line 483
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p2, "participant"

    .line 484
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p2, "imdnrecroute"

    .line 485
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p2, "notification"

    .line 486
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->updateTable(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 309
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ImDBHelper onOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string p0, "message_id column already exists"

    .line 326
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db upgrade: oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "pragma table_info(session)"

    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 329
    :try_start_0
    invoke-virtual {p1, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_3

    .line 330
    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 331
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "name"

    .line 332
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 334
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "preferred_uri"

    .line 341
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 342
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "column preferred_uri for ims6 does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x1

    .line 345
    :cond_2
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    :try_start_3
    const-string v1, "SESSION_TABLE doesn\'t exist"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p3, :cond_4

    .line 345
    :try_start_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return-void

    :goto_1
    if-eqz p3, :cond_5

    .line 329
    :try_start_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p3

    :try_start_6
    invoke-virtual {v0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v0
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p3

    .line 346
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL Exception while querying pragma : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/16 p3, 0x11

    const/16 v0, 0x12

    if-ne p2, p3, :cond_6

    :try_start_7
    const-string p2, "ALTER TABLE message ADD COLUMN is_vm2txt_msg INTEGER DEFAULT 0"

    .line 352
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 354
    :catch_1
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string p3, "is_vm2txt_msg column already exists"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move p2, v0

    :cond_6
    const/16 p3, 0x13

    if-ne p2, v0, :cond_7

    :try_start_8
    const-string p2, "ALTER TABLE message ADD COLUMN file_disposition INTEGER DEFAULT 0"

    .line 361
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE message ADD COLUMN playing_length INTEGER DEFAULT 0"

    .line 362
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    .line 364
    :catch_2
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "file_disposition or playing_length columns already exists"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move p2, p3

    :cond_7
    const/16 v0, 0x14

    if-ne p2, p3, :cond_8

    :try_start_9
    const-string p2, "ALTER TABLE imdnrecroute ADD COLUMN message_id INTEGER DEFAULT 0"

    .line 371
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_6

    .line 373
    :catch_3
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    :try_start_a
    const-string p2, "ALTER TABLE notification ADD COLUMN message_id INTEGER DEFAULT 0"

    .line 376
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_7

    .line 378
    :catch_4
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move p2, v0

    :cond_8
    const-string/jumbo p0, "sim_imsi column already exists"

    const/16 p3, 0x15

    if-ne p2, v0, :cond_9

    :try_start_b
    const-string p2, "ALTER TABLE message ADD COLUMN sim_imsi TEXT DEFAULT \'\'"

    .line 385
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_8

    .line 387
    :catch_5
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move p2, p3

    :cond_9
    const/16 v0, 0x16

    if-ne p2, p3, :cond_a

    :try_start_c
    const-string p2, "ALTER TABLE message ADD COLUMN messaging_tech INTEGER DEFAULT 0"

    .line 394
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_9

    .line 396
    :catch_6
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string p3, "messaging_tech column already exists"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    move p2, v0

    :cond_a
    const/16 p3, 0x17

    if-ne p2, v0, :cond_b

    :try_start_d
    const-string p2, "ALTER TABLE message ADD COLUMN suggestion TEXT DEFAULT NULL"

    .line 405
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_a

    .line 407
    :catch_7
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "suggestion column already exists"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    :try_start_e
    const-string p2, "ALTER TABLE session ADD COLUMN sim_imsi TEXT DEFAULT NULL"

    .line 410
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_b

    .line 412
    :catch_8
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move p2, p3

    :cond_b
    const/16 p0, 0x18

    if-ne p2, p3, :cond_c

    :try_start_f
    const-string p2, "ALTER TABLE session ADD COLUMN icon_uri TEXT DEFAULT NULL;"

    .line 419
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_c

    .line 421
    :catch_9
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string p3, "icon_uri column already exists"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move p2, p0

    :cond_c
    const/16 p3, 0x19

    if-ne p2, p0, :cond_d

    :try_start_10
    const-string p0, "ALTER TABLE session ADD COLUMN is_chatbot_role INTEGER DEFAULT 0;"

    .line 428
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_d

    .line 430
    :catch_a
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "is_chatbot_role column already exists"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    move p2, p3

    :cond_d
    const/16 p0, 0x1a

    if-ne p2, p3, :cond_e

    :try_start_11
    const-string p2, "ALTER TABLE message ADD COLUMN maap_traffic_type TEXT DEFAULT NULL"

    .line 437
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_e

    .line 439
    :catch_b
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string p3, "maap_traffic_type column already exists"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    move p2, p0

    :cond_e
    const/16 p3, 0x1b

    if-ne p2, p0, :cond_f

    :try_start_12
    const-string p0, "ALTER TABLE session ADD COLUMN chat_mode INTEGER DEFAULT 0;"

    .line 446
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_f

    .line 448
    :catch_c
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string p2, "chat_mode column already exists"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    move p2, p3

    :cond_f
    const/16 p0, 0x1c

    if-ne p2, p3, :cond_10

    :try_start_13
    const-string p2, "ALTER TABLE message ADD COLUMN reference_id TEXT DEFAULT NULL"

    .line 455
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_13} :catch_d

    goto :goto_10

    .line 457
    :catch_d
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string p3, "reference_id column already exists"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    :try_start_14
    const-string p2, "ALTER TABLE message ADD COLUMN reference_type TEXT DEFAULT NULL"

    .line 460
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_14} :catch_e

    goto :goto_11

    .line 462
    :catch_e
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string p3, "reference_type column already exists"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    move p2, p0

    :cond_10
    if-ne p2, p0, :cond_11

    :try_start_15
    const-string p0, "ALTER TABLE message ADD COLUMN reference_value TEXT DEFAULT NULL"

    .line 469
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_15} :catch_f

    goto :goto_12

    .line 471
    :catch_f
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "reference_value column already exists"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_12
    return-void
.end method
