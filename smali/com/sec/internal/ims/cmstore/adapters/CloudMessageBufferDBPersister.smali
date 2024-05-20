.class public Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
.super Ljava/lang/Object;
.source "CloudMessageBufferDBPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CALLLOG_TABLE:Ljava/lang/String; = "calllog"

.field private static final CREATE_MMSADDR_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE addr(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, msg_id INTEGER, contact_id INTEGER, address TEXT, type INTEGER, charset INTEGER);"

.field private static final CREATE_MMSPART_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE part(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, mid INTEGER, seq INTEGER, ct TEXT, name TEXT, chset INTEGER, cd TEXT, fn TEXT, cid TEXT, cl TEXT, ctt_s INTEGER, ctt_t TEXT, _data TEXT, text TEXT, content_uri TEXT, payloadurl TEXT);"

.field private static final CREATE_MMSPDU_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE pdu(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER, thread_id INTEGER, date INTEGER, date_sent INTEGER, msg_box INTEGER, read INTEGER DEFAULT 0, m_id TEXT, sub TEXT,sub_cs INTEGER, ct_t TEXT, ct_l TEXT, exp INTEGER, m_cls TEXT, m_type INTEGER, v INTEGER, m_size INTEGER, pri INTEGER, rr INTEGER, rpt_a INTEGER, resp_st INTEGER, st INTEGER, tr_id TEXT, retr_st INTEGER, retr_txt TEXT, retr_txt_cs INTEGER, read_status INTEGER, ct_cls INTEGER, resp_txt TEXT, d_tm INTEGER, d_rpt INTEGER, locked INTEGER, seen INTEGER, sim_slot INTEGER, sim_imsi TEXT, deletable INTEGER, hidden INTEGER, app_id INTEGER, msg_id INTEGER, callback_set INTEGER, reserved INTEGER, text_only INTEGER, spam_report INTEGER, safe_message INTEGER, from_address TEXT, correlation_id TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

.field private static final CREATE_MULT_LINE_STATUS_TABLE:Ljava/lang/String; = "CREATE TABLE multilinestatus(_bufferdbid INTEGER PRIMARY KEY,linenum TEXT,messagetype INTEGER,initsync_cusor TEXT DEFAULT NULL,initsync_status INTEGER DEFAULT 0);"

.field private static final CREATE_RCS_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE rcsimft(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,is_filetransfer INTEGER,direction INTEGER,chat_id TEXT,remote_uri TEXT,sender_alias TEXT,content_type TEXT,inserted_timestamp LONG,ext_info TEXT,body TEXT,notification_disposition_mask INTEGER,notification_status INTEGER DEFAULT 0,disposition_notification_status INTEGER DEFAULT 0,sent_timestamp LONG,delivered_timestamp LONG,displayed_timestamp LONG,message_type INTEGER,message_isslm INTEGER,status INTEGER,not_displayed_counter INTEGER,imdn_message_id TEXT, imdn_original_to TEXT, conversation_id TEXT, contribution_id TEXT, sim_imsi TEXT DEFAULT \'\',file_path TEXT,file_name TEXT,file_size LONG,file_transfer_id TEXT,state INTEGER,reason INTEGER,bytes_transf LONG,ft_status INTEGER,thumbnail_path TEXT,is_resumable INTEGER,transfer_mech INTEGER DEFAULT 0,data_url TEXT,request_message_id TEXT,is_resizable INTEGER DEFAULT 0, content_uri TEXT,thumbnail_uri TEXT,correlation_id TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, payloadurl TEXT, payloadpartThumb TEXT, payloadpartThumb_filename TEXT, payloadpartFull TEXT, payloadencoding INTEGER DEFAULT 0, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

.field private static final CREATE_RCS_NOTIFICATION_TABLE:Ljava/lang/String; = "CREATE TABLE notification(_bufferdbid INTEGER PRIMARY KEY,id INTEGER,imdn_id TEXT, sender_uri TEXT,status INTEGER DEFAULT 0,timestamp LONG, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_RCS_PARTICIPANT_TABLE:Ljava/lang/String; = "CREATE TABLE participant(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,chat_id TEXT,status INTEGER,type INTEGER,uri TEXT,alias TEXT);"

.field private static final CREATE_RCS_SESSION_TABLE:Ljava/lang/String; = "CREATE TABLE session(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,chat_id TEXT,own_sim_imsi TEXT,direction INTEGER, chat_type INTEGER, conversation_id TEXT, contribution_id TEXT, is_group_chat INTEGER,is_ft_group_chat INTEGER,status INTEGER,subject TEXT,is_muted INTEGER,max_participants_count INTEGER,imdn_notifications_availability INTEGER, session_uri TEXT DEFAULT NULL, preferred_uri TEXT DEFAULT NULL,linenum TEXT DEFAULT NULL,icon_path TEXT,icon_participant TEXT,sim_imsi TEXT DEFAULT NULL,icon_timestamp TEXT);"

.field private static final CREATE_SMS_MESSAGE_TABLE:Ljava/lang/String; = "CREATE TABLE sms(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,thread_id INTEGER, address TEXT, person INTEGER, date INTEGER, date_sent INTEGER, protocol INTEGER, read INTEGER DEFAULT 0, status INTEGER, type INTEGER, reply_path_present INTEGER, subject TEXT, body TEXT, service_center TEXT, locked INTEGER, error_code INTEGER, seen INTEGER, deletable INTEGER, sim_slot INTEGER, sim_imsi TEXT, hidden INTEGER, group_id INTEGER, group_type INTEGER, delivery_date INTEGER, app_id INTEGER, msg_id INTEGER, callback_number TEXT, reserved INTEGER, pri INTEGER, teleservice_id INTEGER, link_url TEXT, svc_cmd INTEGER, svc_cmd_content TEXT, roam_pending INTEGER, spam_report INTEGER, safe_message INTEGER, from_address TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, linenum TEXT DEFAULT NULL);"

.field private static final CREATE_SUMMARY_TABLE:Ljava/lang/String; = "CREATE TABLE summarytable(_bufferdbid INTEGER PRIMARY KEY,messagetype INTEGER DEFAULT 0, correlation_id TEXT, correlation_tag TEXT, res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, linenum TEXT, lastmodseq INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_VVM_GREETING_TABLE:Ljava/lang/String; = "CREATE TABLE vvm_greeting(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,fileName TEXT,mimeType TEXT,size INTEGER,filepath TEXT,flags INTEGER,duration INTEGER,account_number TEXT,messageId TEXT,greetingtype INTEGER,error_message TEXT,uploadstatus INTEGER,correlation_id TEXT, res_url TEXT, payloadurl TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, content_uri TEXT);"

.field private static final CREATE_VVM_MESSAGES_TABLE:Ljava/lang/String; = "CREATE TABLE vvm_messages(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,timeStamp INTEGER,text TEXT,flagRead INTEGER,flags INTEGER,messageId TEXT,sender TEXT,recipient TEXT,fileName TEXT,mimeType INTEGER,size INTEGER,filepath TEXT,messageKey TEXT,importance TEXT, sensitivity TEXT, sim_imsi TEXT DEFAULT NULL, correlation_id TEXT, res_url TEXT, payloadurl TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0, content_uri TEXT);"

.field private static final CREATE_VVM_PIN_TABLE:Ljava/lang/String; = "CREATE TABLE vvm_pin(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,oldpwd TEXT, newpwd TEXT,error_message TEXT,uploadstatus INTEGER,res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_VVM_PROFILE_TABLE:Ljava/lang/String; = "CREATE TABLE vvm_profile(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,cos INTEGER,greeting_type TEXT,status TEXT NOT NULL DEFAULT U, password TEXT,nut TEXT,language TEXT,isblocked TEXT,vvmon TEXT,email_addr1 TEXT,email_addr2 TEXT,v2t_language TEXT,line_number TEXT,sim_imsi TEXT DEFAULT \'\',user_authenticated INTEGER NOT NULL DEFAULT 0, profile_changetype INTEGER, error_message TEXT,uploadstatus INTEGER,res_url TEXT, parentfolder TEXT, flagresourceurl TEXT, path TEXT, parentfolderpath TEXT, lastmodseq INTEGER DEFAULT 0, linenum TEXT, syncdirection INTEGER DEFAULT 0, syncaction INTEGER DEFAULT 0);"

.field private static final CREATE_VVM_QUOTA_TABLE:Ljava/lang/String; = "CREATE TABLE vvm_quota(_bufferdbid INTEGER PRIMARY KEY,_id INTEGER,TotalStorage LONG DEFAULT 0,OccupiedStorage LONG DEFAULT 0,VMMessagesQuota INTEGER DEFAULT 0,VMOccupiedMessages INTEGER DEFAULT 0,LastUpdated LONG DEFAULT 0,linenum TEXT, sim_imsi TEXT DEFAULT NULL, syncaction INTEGER DEFAULT 0);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "cloudmessagebuffertable.db"

.field private static final DATABASE_NAME2:Ljava/lang/String; = "cloudmessagebuffertable2.db"

.field private static final DATABASE_VERSION:I = 0x11

.field private static final FAX_MESSAGE_TABLE:Ljava/lang/String; = "fax_message"

.field private static final FAX_RECEIVER_TABLE:Ljava/lang/String; = "fax_receivers"

.field private static final MMSADDR_MESSAGE_TABLE:Ljava/lang/String; = "addr"

.field private static final MMSPART_MESSAGE_TABLE:Ljava/lang/String; = "part"

.field private static final MMSPDU_MESSAGE_TABLE:Ljava/lang/String; = "pdu"

.field private static final MULT_LINE_STATUS_TABLE:Ljava/lang/String; = "multilinestatus"

.field private static final NOTIFICATION_TABLE:Ljava/lang/String; = "notification"

.field private static final PARTICIPANT_TABLE:Ljava/lang/String; = "participant"

.field private static final RCS_MESSAGE_TABLE:Ljava/lang/String; = "rcsimft"

.field private static final SESSION_TABLE:Ljava/lang/String; = "session"

.field private static final SMS_MESSAGE_TABLE:Ljava/lang/String; = "sms"

.field private static final SUMMARY_TABLE:Ljava/lang/String; = "summarytable"

.field private static final VVM_GREETING_TABLE:Ljava/lang/String; = "vvm_greeting"

.field private static final VVM_MESSAGES_TABLE:Ljava/lang/String; = "vvm_messages"

.field private static final VVM_PIN_TABLE:Ljava/lang/String; = "vvm_pin"

.field private static final VVM_PROFILE_TABLE:Ljava/lang/String; = "vvm_profile"

.field private static final VVM_QUOTA_TABLE:Ljava/lang/String; = "vvm_quota"

.field private static sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

.field private static sInstance2:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field database_name:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field private final mDatabaseHelper:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

.field private mMapUriTableName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const-string v0, "cloudmessagebuffertable.db"

    .line 570
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->database_name:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mContext:Landroid/content/Context;

    .line 94
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->database_name:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;-><init>(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mDatabaseHelper:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

    .line 96
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "summarytable"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "sms"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "addr"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pdu"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "part"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rcsimft"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "participant"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "notification"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "session"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vvm_messages"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vvm_pin"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vvm_greeting"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vvm_profile"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vvm_quota"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 p1, 0x17

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "multilinestatus"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const-string v0, "cloudmessagebuffertable.db"

    .line 570
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->database_name:Ljava/lang/String;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string p2, "cloudmessagebuffertable2.db"

    .line 119
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->database_name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 121
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->database_name:Ljava/lang/String;

    .line 123
    :cond_1
    :goto_0
    new-instance p2, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;-><init>(Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mDatabaseHelper:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

    .line 124
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "summarytable"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "sms"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 p2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "addr"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "pdu"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "part"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "rcsimft"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "participant"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 p2, 0xd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "notification"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "session"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 p2, 0x11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "vvm_messages"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 p2, 0x13

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "vvm_pin"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 p2, 0x12

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "vvm_greeting"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 p2, 0x14

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "vvm_profile"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 p2, 0x24

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "vvm_quota"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    const/16 p1, 0x17

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "multilinestatus"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private commonInsertTable(ILandroid/content/ContentValues;)J
    .locals 4

    .line 1162
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1164
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 1168
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x0

    .line 1170
    :try_start_0
    invoke-virtual {v0, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1171
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1175
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL exception while insertTable "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1173
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException insertTable: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-wide v1

    .line 1177
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1178
    throw p0
.end method

.method private commonQueryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 1201
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 1203
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return-object v8

    .line 1207
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 1209
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1211
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 1213
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SQL exception while querying messages "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v8

    .line 1215
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1216
    throw p0
.end method

.method private getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1222
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mDatabaseHelper:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 1224
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 146
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    monitor-enter v0

    if-nez p1, :cond_1

    .line 151
    :try_start_0
    sget-object p1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    if-nez p1, :cond_0

    .line 152
    new-instance p1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;-><init>(Landroid/content/Context;I)V

    sput-object p1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 153
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 155
    :cond_1
    :try_start_1
    sget-object p1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance2:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    if-nez p1, :cond_2

    .line 156
    new-instance p1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;-><init>(Landroid/content/Context;I)V

    sput-object p1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance2:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 157
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->sInstance2:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private matchPreferredUri(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z
    .locals 1

    const/4 p0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 1383
    sget-object v0, Lcom/sec/ims/util/ImsUri;->EMPTY:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v0}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private querySession(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1392
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return-object v9

    .line 1396
    :cond_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "session"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p1

    move-object v4, p2

    .line 1398
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1399
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    :goto_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1401
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SQL exception while querying session. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v9

    .line 1403
    :goto_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1404
    throw p0
.end method


# virtual methods
.method public cleanAllBufferDB()V
    .locals 4

    .line 1283
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cleanAllBufferDB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1288
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "delete from sms"

    .line 1291
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from pdu"

    .line 1292
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from addr"

    .line 1293
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from part"

    .line 1294
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from session"

    .line 1295
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from rcsimft"

    .line 1296
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from participant"

    .line 1297
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from notification"

    .line 1298
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from multilinestatus"

    .line 1299
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from vvm_messages"

    .line 1300
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from vvm_pin"

    .line 1301
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from vvm_greeting"

    .line 1302
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from vvm_profile"

    .line 1303
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from vvm_quota"

    .line 1304
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "delete from summarytable"

    .line 1305
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1308
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL exception while deleting messages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1310
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1311
    throw p0
.end method

.method public deleteTable(ILjava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 1102
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1104
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1108
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    .line 1111
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/Util;->deleteFilesinMmsBufferFolder()V

    .line 1113
    :cond_1
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1114
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1116
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v2

    .line 1118
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1119
    throw p0
.end method

.method public deleteTablewithBufferDbId(IJ)I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1262
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    const-string p2, "_bufferdbid=?"

    .line 1263
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public deleteTablewithResUrl(ILjava/lang/String;)I
    .locals 4

    .line 1251
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->extractObjIdFromResUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 1255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string p2, "res_url GLOB ? AND linenum=?"

    .line 1256
    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public insertDeviceMsgToBuffer(ILandroid/content/ContentValues;)J
    .locals 0

    .line 1158
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->commonInsertTable(ILandroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertTable(ILandroid/content/ContentValues;)J
    .locals 0

    .line 1154
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->commonInsertTable(ILandroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public load()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string v1, "load"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mDatabaseHelper:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public queryMMSPARTMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1059
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return-object v9

    .line 1063
    :cond_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "part"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 1065
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1068
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    :goto_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1070
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v9

    .line 1072
    :goto_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1073
    throw p0
.end method

.method public queryMMSPDUMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1038
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return-object v9

    .line 1042
    :cond_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "pdu"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 1044
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1047
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :goto_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1049
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v9

    .line 1051
    :goto_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1052
    throw p0
.end method

.method public queryRCSImdnMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 930
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return-object v9

    .line 934
    :cond_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "notification"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 936
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 938
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    :goto_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 940
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v9

    .line 942
    :goto_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 943
    throw p0
.end method

.method public queryRCSImdnUseImdnId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/16 v2, 0xd

    const/4 v3, 0x0

    const-string v4, "imdn_id=?"

    const/4 v6, 0x0

    move-object v1, p0

    .line 1270
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSImdnUseImdnIdAndTelUri(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const/16 v2, 0xd

    const/4 v3, 0x0

    const-string v4, "imdn_id=? AND sender_uri=?"

    const/4 v6, 0x0

    move-object v1, p0

    .line 1278
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryRCSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 910
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return-object v9

    .line 914
    :cond_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "rcsimft"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 916
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 918
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    :goto_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 920
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v9

    .line 922
    :goto_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 923
    throw p0
.end method

.method public querySMSMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1014
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return-object v9

    .line 1018
    :cond_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "sms"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 1020
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1022
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    :goto_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1024
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v9

    .line 1026
    :goto_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1027
    throw p0
.end method

.method public querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 1410
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySessionByChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "chat_id=?"

    .line 1411
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySession(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessionByConversationId(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 1373
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "querySessionByConversationId ConversationId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "conversation_id=?"

    .line 1374
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySession(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessionByParticipants(Ljava/util/Set;Lcom/sec/ims/util/ImsUri;)Landroid/database/Cursor;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/util/ImsUri;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    move-object v1, p0

    const-string v0, "chat_id"

    .line 1315
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "querySessionByParticipants participants="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " preferredUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1315
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 1321
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1324
    :try_start_0
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v5, "session, participant"

    .line 1325
    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v5, "%s.%s=%s.%s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "session"

    const/4 v12, 0x0

    aput-object v7, v6, v12

    const/4 v13, 0x1

    aput-object v0, v6, v13

    const-string v7, "participant"

    const/4 v14, 0x2

    aput-object v7, v6, v14

    const/4 v7, 0x3

    aput-object v0, v6, v7

    .line 1326
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v0, "session.chat_id"

    const-string v5, "group_concat(participant.uri)"

    const-string v6, "session.preferred_uri"

    .line 1329
    filled-new-array {v0, v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "session.chat_id"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v2

    .line 1335
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v4, :cond_5

    .line 1338
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1339
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1340
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 1345
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const-string v7, ","

    .line 1346
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    move v8, v12

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v5, v8

    .line 1347
    invoke-static {v9}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v5, p1

    .line 1350
    invoke-interface {v5, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v6, p2

    invoke-direct {p0, v6, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->matchPreferredUri(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1353
    :try_start_2
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Chat found:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v6, v0

    goto :goto_2

    :cond_4
    move-object/from16 v6, p2

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v5, v3

    .line 1335
    :goto_2
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v6

    :cond_5
    move-object v5, v3

    :goto_4
    if-eqz v4, :cond_6

    .line 1358
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1359
    :cond_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v5, v3

    .line 1361
    :goto_5
    :try_start_5
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQL exception while querying session. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1363
    :goto_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-nez v5, :cond_7

    return-object v3

    .line 1369
    :cond_7
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->querySessionByChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1363
    :goto_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1364
    throw v0
.end method

.method public querySummaryTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 1084
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return-object v9

    .line 1088
    :cond_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string/jumbo v1, "summarytable"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 1090
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1092
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    :goto_0
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1094
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v9

    .line 1096
    :goto_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1097
    throw p0
.end method

.method public queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1196
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->commonQueryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 1185
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1187
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    const-string p1, "buildMessageCursor: No last segment."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1191
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->commonQueryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryTableWithSessionUrl(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v5, v0

    const/4 v3, 0x0

    const-string v4, "session_uri =?"

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    .line 1247
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryTablewithBufferDbId(IJ)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 1231
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v5, p3

    const/4 v3, 0x0

    const-string v4, "_bufferdbid=?"

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    .line 1232
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryTablewithResUrl(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 1236
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->extractObjIdFromResUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    .line 1240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const/4 v0, 0x1

    aput-object p2, v6, v0

    const/4 v4, 0x0

    const-string v5, "res_url GLOB ? AND linenum=?"

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    .line 1241
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public updateRCSParticipantsTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 991
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 995
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "participant"

    .line 997
    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 998
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1000
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v1

    .line 1002
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1003
    throw p0
.end method

.method public updateRCSSessionTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 971
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 975
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "session"

    .line 977
    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 978
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 980
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v1

    .line 982
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 983
    throw p0
.end method

.method public updateRCSTable(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 951
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 955
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "rcsimft"

    .line 957
    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 958
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 960
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v1

    .line 962
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 963
    throw p0
.end method

.method public updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->mMapUriTableName:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1128
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1132
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1134
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1135
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1137
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SQL exception while querying messages "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v1

    .line 1139
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1140
    throw p0
.end method
