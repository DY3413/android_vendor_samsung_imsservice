.class Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CloudMessageBufferDBPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;Landroid/content/Context;)V
    .locals 2

    .line 575
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 576
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->database_name:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 577
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dropAllAndReCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dropAllAndReCreateTables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE sms"

    .line 882
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE pdu"

    .line 883
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE addr"

    .line 884
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE part"

    .line 885
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE rcsimft"

    .line 886
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE participant"

    .line 887
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE session"

    .line 888
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE notification"

    .line 889
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE summarytable"

    .line 890
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE multilinestatus"

    .line 891
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE vvm_messages"

    .line 892
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE vvm_pin"

    .line 893
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE vvm_greeting"

    .line 894
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE vvm_profile"

    .line 895
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE vvm_quota"

    .line 896
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 582
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DatabaseHelper onCreate()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CREATE TABLE sms(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,thread_id INTEGER, address TEXT, person INTEGER, date INTEGER, date_sent INTEGER, protocol INTEGER, read INTEGER DEFAULT 0, status INTEGER, type INTEGER, reply_path_present INTEGER, subject TEXT, body TEXT, service_center TEXT, locked INTEGER, error_code INTEGER, seen INTEGER, deletable INTEGER, sim_slot INTEGER, sim_imsi TEXT, hidden INTEGER, group_id INTEGER, group_type INTEGER, delivery_date INTEGER, app_id INTEGER, msg_id INTEGER, callback_number TEXT, reserved INTEGER, pri INTEGER, teleservice_id INTEGER, link_url TEXT, svc_cmd INTEGER, svc_cmd_content TEXT, roam_pending INTEGER, spam_report INTEGER, safe_message INTEGER, from_address TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

    .line 583
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE pdu(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, thread_id INTEGER, date INTEGER, date_sent INTEGER, msg_box INTEGER, read INTEGER DEFAULT 0, m_id TEXT, sub TEXT,sub_cs INTEGER, ct_t TEXT, ct_l TEXT, exp INTEGER, m_cls TEXT, m_type INTEGER, v INTEGER, m_size INTEGER, pri INTEGER, rr INTEGER, rpt_a INTEGER, resp_st INTEGER, st INTEGER, tr_id TEXT, retr_st INTEGER, retr_txt TEXT, retr_txt_cs INTEGER, read_status INTEGER, ct_cls INTEGER, resp_txt TEXT, d_tm INTEGER, d_rpt INTEGER, locked INTEGER, seen INTEGER, sim_slot INTEGER, sim_imsi TEXT, deletable INTEGER, hidden INTEGER, app_id INTEGER, msg_id INTEGER, callback_set INTEGER, reserved INTEGER, text_only INTEGER, spam_report INTEGER, safe_message INTEGER, from_address TEXT, correlation_id TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

    .line 584
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE addr(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, msg_id INTEGER, contact_id INTEGER, address TEXT, type INTEGER, charset INTEGER);"

    .line 585
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE part(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, mid INTEGER, seq INTEGER, ct TEXT, name TEXT, chset INTEGER, cd TEXT, fn TEXT, cid TEXT, cl TEXT, ctt_s INTEGER, ctt_t TEXT, _data TEXT, text TEXT, content_uri TEXT, payloadurl TEXT);"

    .line 586
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE rcsimft(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,is_filetransfer INTEGER,direction INTEGER,chat_id TEXT,remote_uri TEXT,sender_alias TEXT,content_type TEXT,inserted_timestamp LONG,ext_info TEXT,body TEXT,notification_disposition_mask INTEGER,notification_status INTEGER DEFAULT 0,disposition_notification_status INTEGER DEFAULT 0,sent_timestamp LONG,delivered_timestamp LONG,displayed_timestamp LONG,message_type INTEGER,message_isslm INTEGER,status INTEGER,not_displayed_counter INTEGER,imdn_message_id TEXT, imdn_original_to TEXT, conversation_id TEXT, contribution_id TEXT, sim_imsi TEXT DEFAULT \'\',file_path TEXT,file_name TEXT,file_size LONG,file_transfer_id TEXT,state INTEGER,reason INTEGER,bytes_transf LONG,ft_status INTEGER,thumbnail_path TEXT,is_resumable INTEGER,transfer_mech INTEGER DEFAULT 0,data_url TEXT,request_message_id TEXT,is_resizable INTEGER DEFAULT 0, content_uri TEXT,thumbnail_uri TEXT,correlation_id TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, payloadurl TEXT, payloadpartThumb TEXT, payloadpartThumb_filename TEXT, payloadpartFull TEXT, payloadencoding INTEGER DEFAULT 0, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

    .line 587
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE participant(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,chat_id TEXT,status INTEGER,type INTEGER,uri TEXT,alias TEXT);"

    .line 588
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE session(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,chat_id TEXT,own_sim_imsi TEXT,direction INTEGER, chat_type INTEGER, conversation_id TEXT, contribution_id TEXT, is_group_chat INTEGER,is_ft_group_chat INTEGER,status INTEGER,subject TEXT,is_muted INTEGER,max_participants_count INTEGER,imdn_notifications_availability INTEGER, session_uri TEXT DEFAULT NULL, preferred_uri TEXT DEFAULT NULL,linenum TEXT DEFAULT NULL,icon_path TEXT,icon_participant TEXT,sim_imsi TEXT DEFAULT NULL,icon_timestamp TEXT);"

    .line 589
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE notification(_bufferdbid INTEGER PRIMARY KEY,id INTEGER,imdn_id TEXT, sender_uri TEXT,status INTEGER DEFAULT 0,timestamp LONG, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

    .line 590
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE summarytable(_bufferdbid INTEGER PRIMARY KEY,messagetype INTEGER DEFAULT 0, correlation_id TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, linenum TEXT, lastmodseq INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

    .line 591
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE multilinestatus(_bufferdbid INTEGER PRIMARY KEY,linenum TEXT,messagetype INTEGER,initsync_cusor TEXT DEFAULT NULL,initsync_status INTEGER DEFAULT 0);"

    .line 592
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE vvm_messages(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,timeStamp INTEGER,text TEXT,flagRead INTEGER,flags INTEGER,messageId TEXT,sender TEXT,recipient TEXT,fileName TEXT,mimeType INTEGER,size INTEGER,filepath TEXT,messageKey TEXT,importance TEXT, sensitivity TEXT, sim_imsi TEXT DEFAULT NULL, correlation_id TEXT, res_url TEXT, payloadurl TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, content_uri TEXT);"

    .line 593
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE vvm_pin(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,oldpwd TEXT, newpwd TEXT,error_message TEXT,uploadstatus INTEGER,res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

    .line 594
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE vvm_greeting(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,fileName TEXT,mimeType TEXT,size INTEGER,filepath TEXT,flags INTEGER,duration INTEGER,account_number TEXT,messageId TEXT,greetingtype INTEGER,error_message TEXT,uploadstatus INTEGER,correlation_id TEXT, res_url TEXT, payloadurl TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, content_uri TEXT);"

    .line 595
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE vvm_profile(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,cos INTEGER,greeting_type TEXT,status TEXT NOT NULL DEFAULT U, password TEXT,nut TEXT,language TEXT,isblocked TEXT,vvmon TEXT,email_addr1 TEXT,email_addr2 TEXT,v2t_language TEXT,line_number TEXT,sim_imsi TEXT DEFAULT \'\',user_authenticated INTEGER NOT NULL DEFAULT 0, profile_changetype INTEGER, error_message TEXT,uploadstatus INTEGER,res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

    .line 596
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE vvm_quota(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,TotalStorage LONG DEFAULT 0,OccupiedStorage LONG DEFAULT 0,VMMessagesQuota INTEGER DEFAULT 0,VMOccupiedMessages INTEGER DEFAULT 0,LastUpdated LONG DEFAULT 0,linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncaction INTEGER DEFAULT 0);"

    .line 597
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 873
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->dropAllAndReCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 875
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 877
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db downgrade: oldVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " newVersion="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " error: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11

    const-string v0, "rcsimft"

    const-string/jumbo v1, "sim_imsi"

    .line 602
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "db upgrade: oldVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " newVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    const-string v2, " "

    const-string v3, ""

    if-ne p2, p3, :cond_0

    .line 607
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->dropAllAndReCreateTables(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/16 p2, 0x11

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne p2, v4, :cond_1

    move p2, v5

    :cond_1
    const/4 v4, 0x4

    const-string v6, " version:"

    if-ne p2, v5, :cond_2

    :try_start_1
    const-string v5, "ALTER TABLE rcsimft ADD COLUMN contribution_id  TEXT DEFAULT NULL;"

    .line 620
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "ALTER TABLE rcsimft ADD COLUMN conversation_id  TEXT DEFAULT NULL;"

    .line 622
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 625
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_1
    move p2, v4

    :cond_2
    const/4 v5, 0x5

    if-ne p2, v4, :cond_3

    :try_start_2
    const-string v4, "ALTER TABLE session ADD COLUMN chat_type INTEGER;"

    .line 632
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v4

    .line 635
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move p2, v5

    :cond_3
    const/4 v4, 0x6

    if-ne p2, v5, :cond_4

    :try_start_3
    const-string v5, "ALTER TABLE session ADD COLUMN icon_path TEXT;"

    .line 642
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "ALTER TABLE session ADD COLUMN icon_participant TEXT;"

    .line 644
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "ALTER TABLE session ADD COLUMN icon_timestamp TEXT;"

    .line 646
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    .line 649
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_3
    move p2, v4

    :cond_4
    const/4 v5, 0x7

    if-ne p2, v4, :cond_5

    :try_start_4
    const-string v4, "ALTER TABLE rcsimft ADD COLUMN payloadpartThumb_filename TEXT;"

    .line 656
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v4

    .line 659
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    move p2, v5

    :cond_5
    const/16 v4, 0x8

    if-ne p2, v5, :cond_6

    :try_start_5
    const-string v5, "ALTER TABLE rcsimft ADD COLUMN sim_imsi TEXT DEFAULT \'\';"

    .line 666
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "ALTER TABLE session ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 668
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v5

    .line 671
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    move p2, v4

    :cond_6
    const/16 v5, 0x9

    if-ne p2, v4, :cond_11

    .line 678
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 679
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 680
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set sim imsi : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE rcsimft SET sim_imsi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " IS \'\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    .line 686
    :catch_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message sim imsi update failed "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 690
    :goto_6
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE session SET sim_imsi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " IS NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    .line 693
    :catch_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " session sim imsi update failed "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    .line 696
    :goto_7
    new-instance p2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;-><init>(Landroid/content/Context;)V

    const-string v7, "chat_id"

    .line 698
    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryAllSession([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 699
    :try_start_8
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "queryAllSession."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_8

    .line 701
    :cond_7
    :goto_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "chat_id"

    .line 703
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 702
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 705
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 704
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 706
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 708
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 709
    invoke-virtual {v9, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2, v8, v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->updateSessionFromBufferDbToRCSDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_8

    :cond_8
    if-eqz v7, :cond_9

    .line 714
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    const-string v7, "_id"

    .line 715
    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->queryAllMessage([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 716
    :try_start_9
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "queryAllMessage."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_b

    .line 718
    :cond_a
    :goto_9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "_id"

    .line 719
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 720
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 722
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 724
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 725
    invoke-virtual {v9, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p2, v8, v9}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageRCSStorageAdapter;->updateMessageFromBufferDb(ILandroid/content/ContentValues;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    :cond_b
    if-eqz v7, :cond_c

    .line 730
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 731
    :cond_c
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "upgrade sim imsi done."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 732
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    if-eqz p2, :cond_d

    const/4 p2, 0x0

    .line 733
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMigrateSuccessFlag(Z)V

    goto :goto_a

    .line 734
    :cond_d
    invoke-static {p3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 735
    invoke-static {p3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMigrateSuccessFlag(Z)V

    :cond_e
    :goto_a
    move p2, v5

    goto :goto_d

    :catchall_0
    move-exception p0

    if-eqz v7, :cond_f

    .line 715
    :try_start_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_b
    throw p0

    :catchall_2
    move-exception p0

    if-eqz v7, :cond_10

    .line 698
    :try_start_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_c

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_c
    throw p0

    :cond_11
    :goto_d
    const/16 p3, 0xa

    const-string v1, "ALTER TABLE part ADD COLUMN content_uri TEXT DEFAULT \'\';"

    const-string v4, "ALTER TABLE rcsimft ADD COLUMN thumbnail_uri TEXT DEFAULT \'\';"

    const-string v7, "ALTER TABLE rcsimft ADD COLUMN content_uri TEXT DEFAULT \'\';"

    if-ne p2, v5, :cond_12

    .line 742
    :try_start_c
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_e

    :catch_8
    move-exception v5

    .line 749
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_e
    move p2, p3

    :cond_12
    const/16 v5, 0xb

    if-ne p2, p3, :cond_13

    :try_start_d
    const-string p3, "CREATE TABLE vvm_quota(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,TotalStorage LONG DEFAULT 0,OccupiedStorage LONG DEFAULT 0,VMMessagesQuota INTEGER DEFAULT 0,VMOccupiedMessages INTEGER DEFAULT 0,LastUpdated LONG DEFAULT 0,linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncaction INTEGER DEFAULT 0);"

    .line 756
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE vvm_messages ADD COLUMN importance TEXT DEFAULT \'\'"

    .line 757
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE vvm_messages ADD COLUMN sensitivity TEXT DEFAULT \'\'"

    .line 759
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE vvm_profile ADD COLUMN sim_imsi TEXT DEFAULT \'\'"

    .line 761
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_f

    :catch_9
    move-exception p3

    .line 764
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_f
    move p2, v5

    :cond_13
    const-string p3, "ALTER TABLE vvm_quota ADD COLUMN syncaction INTEGER DEFAULT 0"

    const/16 v8, 0xc

    if-ne p2, v5, :cond_14

    :try_start_e
    const-string v5, "ALTER TABLE vvm_quota ADD COLUMN LastUpdated LONG DEFAULT 0"

    .line 770
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_10

    :catch_a
    move-exception v5

    .line 775
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_10
    move p2, v8

    :cond_14
    const/16 v5, 0xd

    if-ne p2, v8, :cond_15

    :try_start_f
    const-string v8, "DROP TABLE calllog"

    .line 782
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v8, "DROP TABLE fax_message"

    .line 783
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v8, "DROP TABLE fax_receivers"

    .line 784
    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_11

    :catch_b
    move-exception p3

    .line 790
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_11
    move p2, v5

    :cond_15
    const/16 p3, 0xe

    if-ne p2, v5, :cond_16

    :try_start_10
    const-string v5, "ALTER TABLE vvm_messages ADD COLUMN content_uri TEXT DEFAULT \'\';"

    .line 797
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v5, "ALTER TABLE vvm_greeting ADD COLUMN content_uri TEXT DEFAULT \'\';"

    .line 799
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_12

    :catch_c
    move-exception v5

    .line 810
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_12
    move p2, p3

    :cond_16
    const/16 v5, 0xf

    if-ne p2, p3, :cond_1a

    :try_start_11
    const-string p3, "content_uri"

    .line 818
    invoke-static {p1, v0, p3}, Lcom/sec/internal/ims/cmstore/utils/Util;->isColumnNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 819
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_17
    const-string/jumbo p3, "thumbnail_uri"

    .line 822
    invoke-static {p1, v0, p3}, Lcom/sec/internal/ims/cmstore/utils/Util;->isColumnNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 823
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_18
    const-string p3, "part"

    const-string v0, "content_uri"

    .line 826
    invoke-static {p1, p3, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isColumnNotExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 827
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_13

    :catch_d
    move-exception p3

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :cond_19
    :goto_13
    move p2, v5

    :cond_1a
    if-ne p2, v5, :cond_1b

    :try_start_12
    const-string p3, "ALTER TABLE vvm_messages ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 838
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE vvm_greeting ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 840
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE vvm_pin ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 842
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE vvm_quota ADD COLUMN sim_imsi TEXT DEFAULT NULL;"

    .line 844
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE vvm_quota ADD COLUMN linenum TEXT DEFAULT \'\';"

    .line 846
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_14

    :catch_e
    move-exception p3

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_14
    const/16 p2, 0x10

    :cond_1b
    const/16 p3, 0x10

    if-ne p2, p3, :cond_1c

    :try_start_13
    const-string p3, "ALTER TABLE vvm_profile ADD COLUMN v2t_language TEXT DEFAULT NULL;"

    .line 856
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_15

    :catch_f
    move-exception p1

    .line 859
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 864
    :cond_1c
    :goto_15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 865
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;->this$0:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OnUpgrade error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method
