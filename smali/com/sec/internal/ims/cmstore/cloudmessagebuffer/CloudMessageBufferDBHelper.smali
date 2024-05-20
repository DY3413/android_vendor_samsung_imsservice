.class public Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
.super Landroid/os/Handler;
.source "CloudMessageBufferDBHelper.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

.field protected mBufferDBloaded:Z

.field protected final mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

.field protected final mContext:Landroid/content/Context;

.field protected final mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

.field protected mIsGoforwardSync:Z

.field protected final mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

.field protected final mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

.field protected mProvisionSuccess:Z

.field protected mRCSDbReady:Z

.field protected final mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

.field protected final mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

.field protected final mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field protected final mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

.field protected final mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p4

    .line 79
    invoke-direct/range {p0 .. p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    const-class v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 71
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRCSDbReady:Z

    .line 73
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mProvisionSuccess:Z

    .line 74
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 75
    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mIsGoforwardSync:Z

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "onCreate"

    .line 81
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    .line 82
    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 83
    invoke-interface/range {p2 .. p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mContext:Landroid/content/Context;

    .line 84
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getBufferDbLoaded()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 85
    new-instance v11, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    invoke-direct {v11}, Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;-><init>()V

    iput-object v11, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mScheduleRule:Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;

    move-object/from16 v12, p3

    .line 86
    iput-object v12, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    .line 87
    iput-object v10, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    .line 88
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 89
    new-instance v13, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v13, v1, v10}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    iput-object v13, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    .line 90
    new-instance v9, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v9

    move-object v3, v11

    move-object v4, v13

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v9, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    .line 92
    new-instance v14, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v14

    move-object v5, v9

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    .line 94
    new-instance v15, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v15

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v15, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 96
    new-instance v9, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v9

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v15

    move-object v8, v14

    move-object v14, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;Landroid/os/Looper;)V

    iput-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    .line 98
    new-instance v8, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v8

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/CloudMessageBufferDBEventSchedulingRule;Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    return-void
.end method

.method private getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I
    .locals 0

    .line 302
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x11

    goto :goto_1

    .line 306
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x12

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getTableIndex(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)I
    .locals 5

    .line 858
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTableIndex, Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    move p0, v3

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "MSG_ALL"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "VVMDATA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "GREETING"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string p1, "V2TLANGUAGE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0xb

    goto/16 :goto_1

    :sswitch_4
    const-string p1, "PROFILE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string p1, "VOICEMAILTOTEXT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string p1, "NUTON"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string p1, "CHAT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 p0, 0x7

    goto :goto_1

    :sswitch_8
    const-string p1, "SMS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 p0, 0x6

    goto :goto_1

    :sswitch_9
    const-string p1, "PIN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_a
    const-string p1, "MMS"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    move p0, v0

    goto :goto_1

    :sswitch_b
    const-string p1, "FT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    move p0, v1

    goto :goto_1

    :sswitch_c
    const-string p1, "ACTIVATE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_d
    const-string p1, "DEACTIVATE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    move p0, v2

    goto :goto_1

    :sswitch_e
    const-string p1, "NUTOFF"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    move p0, v4

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 893
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StartFullSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StopSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 894
    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StartDeltaSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    .line 895
    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_2

    :cond_f
    move v0, v3

    goto :goto_3

    :cond_10
    :goto_2
    :pswitch_0
    move v0, v4

    goto :goto_3

    :pswitch_1
    const/16 v0, 0x11

    goto :goto_3

    :pswitch_2
    const/16 v0, 0x12

    goto :goto_3

    :pswitch_3
    move v0, v1

    goto :goto_3

    :pswitch_4
    const/16 v0, 0x13

    goto :goto_3

    :pswitch_5
    move v0, v2

    goto :goto_3

    :pswitch_6
    const/16 v0, 0x14

    :goto_3
    :pswitch_7
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7610d13e -> :sswitch_e
        -0x5a1a438c -> :sswitch_d
        -0x340e3b0d -> :sswitch_c
        0x8ce -> :sswitch_b
        0x12ab3 -> :sswitch_a
        0x13575 -> :sswitch_9
        0x14139 -> :sswitch_8
        0x1f8b58 -> :sswitch_7
        0x473120c -> :sswitch_6
        0x12846531 -> :sswitch_5
        0x185a1589 -> :sswitch_4
        0x30191490 -> :sswitch_3
        0x3ae47039 -> :sswitch_2
        0x5c75a6b7 -> :sswitch_1
        0x7af6bfa3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .locals 4

    .line 1069
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVvmChangeParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " tableindex: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " VvmTypeChange: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 1073
    :try_start_0
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    .line 1074
    iput-object p3, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mVvmChange:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 1075
    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1076
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    .line 1078
    :cond_0
    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;->mLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1081
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getVvmParam(Lcom/google/gson/JsonElement;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;
    .locals 1

    .line 905
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, -0x1

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "GREETING"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string p3, "V2TLANGUAGE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string p3, "PROFILE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string p3, "VOICEMAILTOTEXT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string p3, "NUTON"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string p3, "PIN"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string p3, "ACTIVATE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string p3, "DEACTIVATE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string p3, "NUTOFF"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    .line 919
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->GREETING:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 939
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->V2TLANGUAGE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 911
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 915
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 935
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTON:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 907
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->PIN:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 923
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 927
    :pswitch_7
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    goto :goto_1

    .line 931
    :pswitch_8
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->NUTOFF:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-direct {p0, p1, p4, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmChangeParam(Ljava/lang/String;ILcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object p0

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7610d13e -> :sswitch_8
        -0x5a1a438c -> :sswitch_7
        -0x340e3b0d -> :sswitch_6
        0x13575 -> :sswitch_5
        0x473120c -> :sswitch_4
        0x12846531 -> :sswitch_3
        0x185a1589 -> :sswitch_2
        0x30191490 -> :sswitch_1
        0x3ae47039 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isValidPreferredLineValue(Lcom/google/gson/JsonElement;)Z
    .locals 3

    .line 1058
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v0, "preferred_line"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    .line 1061
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 1062
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method private onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    .locals 3

    const-string v0, "messagetype"

    .line 447
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 446
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNmsEventChangedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isgoforwardSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xe

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    goto/16 :goto_6

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 464
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 465
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 463
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

    :cond_1
    :goto_1
    if-eqz p1, :cond_7

    .line 469
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 452
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 453
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 454
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    goto :goto_2

    .line 458
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p2, "inconsistency between buffer or duplicated nms event"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    if-eqz p1, :cond_7

    .line 460
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_4

    .line 452
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0

    .line 475
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    .line 476
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 477
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 478
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 475
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 481
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_6
    return-void
.end method

.method private onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 3

    const-string v0, "messagetype"

    .line 592
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 591
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 593
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xe

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    goto/16 :goto_6

    .line 607
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 608
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 609
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjBufferDbMmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 607
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

    :cond_1
    :goto_1
    if-eqz p1, :cond_7

    .line 613
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 596
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 597
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 598
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjBufferDbSmsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_2

    .line 602
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p2, "inconsistency between buffer or duplicated nms event"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    if-eqz p1, :cond_7

    .line 604
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_4

    .line 596
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0

    .line 619
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v0, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    .line 620
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 621
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 622
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 619
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_6
    :goto_5
    if-eqz p1, :cond_7

    .line 625
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_6
    return-void
.end method

.method private onNmsEventExpiredObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 3

    const-string v0, "messagetype"

    .line 1196
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1195
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 1197
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNmsEventExpiredObjSummaryDbAvailableUsingUrl(), type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1203
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->deleteMMSBufferDBwithResUrl(Ljava/lang/String;)I

    goto :goto_0

    .line 1200
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->deleteSMSBufferDBwithResUrl(Ljava/lang/String;)I

    goto :goto_0

    .line 1209
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object p1, p2, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->deleteRCSBufferDBwithResUrl(Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onUpdateBufferDBBulkUpdateSuccess(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "syncaction"

    .line 362
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 361
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "messagetype"

    .line 364
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 363
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 365
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateBufferDBBulkUpdateSuccess,  status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msgtype: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "linenum"

    const-string v0, "_bufferdbid"

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-eq v3, v1, :cond_6

    const/16 v2, 0x11

    if-eq v3, v2, :cond_4

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x4

    if-eq v3, v2, :cond_0

    goto/16 :goto_9

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 390
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 391
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 394
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 393
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 395
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 396
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v9

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 389
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

    :cond_1
    :goto_1
    if-eqz p2, :cond_8

    .line 402
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 373
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 374
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 375
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 378
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 377
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 379
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 380
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v1, v9

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 373
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_3
    :goto_3
    if-eqz p2, :cond_8

    .line 386
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8

    .line 421
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryVVMwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 422
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 424
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 423
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 426
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 425
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 427
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 428
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move v1, v9

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 421
    :try_start_5
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_5
    :goto_5
    if-eqz p2, :cond_8

    .line 434
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 405
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSBufferDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 406
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 408
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 407
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 410
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 409
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 411
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 412
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 414
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    invoke-virtual {v0, p1, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move v1, v9

    goto :goto_7

    :catchall_6
    move-exception p0

    .line 405
    :try_start_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_7
    :goto_7
    if-eqz p2, :cond_8

    .line 418
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_8
    move v9, v1

    :goto_9
    if-eqz v9, :cond_9

    .line 440
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p1, "inconsistency between buffer or duplicated nms event"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 5

    .line 1130
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processParamAppJsonList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 1131
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 1134
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 1135
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 1136
    iget v3, v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataContractType:I

    if-eq v3, v1, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1150
    :pswitch_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1138
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1141
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1144
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v3, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onAppOperationReceived(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 1156
    :cond_4
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1157
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processWipeOutList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1167
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processWipeOutList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 1173
    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    .line 1174
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    .line 1175
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    const-string v5, "MSG_ALL"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1176
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1177
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1178
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->wipeOutData(ILjava/lang/String;)V

    goto :goto_0

    .line 1179
    :cond_2
    iget-object v3, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    .line 1180
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    const-string v5, "VVMDATA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1181
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onWipeOutResetSyncHandler()V

    .line 1182
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x11

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1183
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x12

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1184
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x13

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1185
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x14

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1186
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x24

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1187
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v5, 0x17

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 1188
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->setVVMSyncState(Z)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected appFetchingFailedMsg(Ljava/lang/String;)V
    .locals 3

    .line 1217
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1219
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1220
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1217
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
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
    if-eqz v0, :cond_1

    .line 1223
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1226
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1227
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 1224
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 1230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1231
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1233
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1234
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->notifyMsgAppFetchBuffer(Landroid/database/Cursor;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 1231
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz p1, :cond_5

    .line 1237
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method protected buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    .locals 10

    const-string v0, "_bufferdbid"

    if-eqz p5, :cond_2

    if-eqz p2, :cond_1

    .line 109
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 112
    :cond_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p5

    .line 111
    invoke-interface {p2, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    .line 113
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    int-to-long v4, p5

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v9

    move v3, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p5

    if-nez p5, :cond_0

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_4

    .line 120
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p5

    if-eqz p5, :cond_4

    .line 121
    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferlist query count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_3
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p5

    .line 123
    invoke-interface {p2, p5}, Landroid/database/Cursor;->getInt(I)I

    move-result p5

    const-string v1, "linenum"

    .line 126
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 125
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 127
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    int-to-long v4, p5

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v9

    move v3, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p5

    if-nez p5, :cond_3

    :cond_4
    return-void
.end method

.method protected cleanAllBufferDB()V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->cleanAllBufferDB()V

    .line 805
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->cleanAllBufferDB()V

    .line 806
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->cleanAllBufferDB()V

    const/4 v0, 0x0

    .line 807
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method

.method protected decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v14, "imdn_message_id"

    const-string v15, "correlationId"

    const-string v13, "correlationTag"

    const-string v12, "chatid"

    const-string v11, "id"

    const-string/jumbo v10, "type"

    const-string v9, "islocalonly"

    .line 950
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 951
    new-instance v8, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    invoke-direct {v8}, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v3, p2

    .line 954
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 955
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 956
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v7

    const/16 v17, 0x0

    move/from16 v6, v17

    .line 957
    :goto_0
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-ge v6, v2, :cond_a

    .line 958
    invoke-virtual {v7, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-string v3, ""

    .line 965
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v4

    .line 968
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 970
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 971
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 972
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-nez v5, :cond_0

    .line 973
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 974
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 975
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 p2, v3

    const-string/jumbo v3, "true"

    .line 976
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v25, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v26, v11

    move-object/from16 v20, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    goto/16 :goto_7

    :cond_0
    move-object/from16 p2, v3

    .line 981
    :cond_1
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 982
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_2

    .line 983
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    :cond_2
    move-object/from16 v5, p2

    .line 986
    :goto_1
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 987
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 988
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_3

    .line 989
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 990
    invoke-virtual {v3, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v3

    move/from16 v18, v3

    goto :goto_2

    :cond_3
    move/from16 v18, v17

    .line 993
    :goto_2
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 994
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 995
    invoke-virtual {v3, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_4

    .line 996
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 997
    invoke-virtual {v3, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_3

    :cond_4
    move-object/from16 v19, v16

    .line 1000
    :goto_3
    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->isValidPreferredLineValue(Lcom/google/gson/JsonElement;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1001
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "preferred_line"

    .line 1002
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 1003
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 1001
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    goto :goto_4

    :cond_5
    move-object/from16 v20, v4

    .line 1006
    :goto_4
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1008
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 1009
    invoke-virtual {v3, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 1010
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1011
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 1012
    invoke-virtual {v3, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 1013
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    goto :goto_5

    :cond_6
    move-object/from16 v21, v16

    .line 1017
    :goto_5
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1019
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 1020
    invoke-virtual {v3, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 1021
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1022
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 1023
    invoke-virtual {v3, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 1024
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    move-object/from16 v3, v16

    .line 1028
    :goto_6
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1030
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 1031
    invoke-virtual {v4, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 1032
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1033
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 1034
    invoke-virtual {v3, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 1035
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    :cond_8
    move-object/from16 v22, v3

    .line 1039
    invoke-direct {v1, v5, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getTableIndex(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)I

    move-result v4

    const/4 v3, -0x1

    if-ne v4, v3, :cond_9

    .line 1041
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "decodeJson: Invalid tableindex"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    .line 1044
    :cond_9
    invoke-direct {v1, v2, v5, v0, v4}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getVvmParam(Lcom/google/gson/JsonElement;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;I)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;

    move-result-object v23

    .line 1045
    iget-object v3, v8, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object/from16 p2, v2

    move-object/from16 v2, p2

    move-object/from16 v24, v14

    move-object v14, v3

    move-object/from16 v3, p1

    move/from16 v25, v4

    move-object v4, v5

    move/from16 v5, v25

    move/from16 v25, v6

    move/from16 v6, v18

    move-object/from16 v18, v7

    move-object/from16 v7, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v21

    move-object/from16 v21, v9

    move-object/from16 v9, v22

    move-object/from16 v22, v10

    move-object/from16 v10, p3

    move-object/from16 v26, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v23

    move-object/from16 v23, v13

    move-object v13, v0

    invoke-direct/range {v2 .. v13}, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v6, v25, 0x1

    move-object/from16 v0, p3

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v12, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v11, v26

    goto/16 :goto_0

    :cond_a
    move-object/from16 v19, v8

    return-object v19

    :catch_0
    move-exception v0

    .line 1051
    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JsonSyntaxException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16
.end method

.method protected fetchingPendingMsg()V
    .locals 5

    .line 1241
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1243
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "MessageApp"

    if-eqz v1, :cond_0

    .line 1245
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1246
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-string v4, "SMS"

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1243
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 1249
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1250
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1252
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1253
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const-string v4, "MMS"

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 1250
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 1256
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1257
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesBySycnDirection(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1259
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1260
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    const-string v1, "CHAT"

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->msgAppFetchBuffer(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 1257
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    .line 1263
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method protected handleBufferDbReadMessageJson(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected handleBulkOpSingleUrlSuccess(Ljava/lang/String;)V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleBulkDeleteSingleUrlSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 354
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onUpdateBufferDBBulkUpdateSuccess(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 353
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 357
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method protected handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V
    .locals 9

    .line 518
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 520
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 521
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo p2, "syncaction"

    .line 523
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 522
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 524
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloudNotifyChangedObj, Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-ne p2, v1, :cond_0

    .line 586
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 528
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p1, p3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventChangedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V

    goto/16 :goto_6

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventChangedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;I)J

    move-result-wide v3

    .line 532
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v6, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v1

    .line 534
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v5

    if-eq v1, v5, :cond_3

    .line 535
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p1, "initial sync not complete yet, buffer the NMS events until initial sync is finished"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v0, :cond_2

    .line 586
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    .line 540
    :cond_3
    :try_start_2
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    .line 541
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCloudNotifyChangedObj RCS CloudUpdate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v1, :cond_4

    .line 544
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 545
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 547
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, v1, p1, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventChangedObjRcsBufferDbAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 543
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 551
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-nez v2, :cond_7

    .line 553
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 554
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCloudNotifyChangedObj MMS CloudUpdate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v1, :cond_6

    .line 558
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 559
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v7, 0x4

    invoke-virtual {v2, v3, v4, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 561
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v1, p1, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventChangedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v2, v5

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 556
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 565
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    if-nez v2, :cond_a

    .line 567
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 568
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCloudNotifyChangedObj: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v7, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v1, :cond_8

    .line 571
    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 572
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v7, 0x3

    invoke-virtual {v2, v3, v4, v7}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 574
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v2, v1, p1, p3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventChangedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 569
    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_8
    move v5, v2

    :goto_5
    if-eqz v1, :cond_9

    .line 578
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    move v2, v5

    :cond_a
    if-nez p3, :cond_b

    if-nez v2, :cond_b

    .line 581
    iget-object p1, p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance p2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v2, 0x7

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_b
    :goto_6
    if-eqz v0, :cond_c

    .line 586
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_c
    return-void

    :catchall_6
    move-exception p0

    if-eqz v0, :cond_d

    .line 520
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    throw p0
.end method

.method protected handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V
    .locals 10

    .line 674
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 677
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "syncaction"

    .line 679
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 678
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 680
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCloudNotifyDeletedObj, Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-ne v0, v2, :cond_0

    .line 745
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 684
    :cond_0
    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventDeletedObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto/16 :goto_8

    .line 686
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertNmsEventDeletedObjToSummaryDB(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;I)J

    .line 688
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v0, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v2

    .line 690
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 691
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string p1, "initial sync not complete yet, buffer the NMS events until initial sync is finished"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v1, :cond_2

    .line 745
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    .line 696
    :cond_3
    :try_start_2
    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 v4, 0x1

    const-string v5, "did not find buffer item to delete"

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_6

    .line 697
    :try_start_3
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleCloudNotifyDeletedObj RCS CloudUpdate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->searchIMFTBufferUsingImdn(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v0, :cond_4

    .line 701
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 702
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v2, v6, v7, v4}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 704
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->onNmsEventDeletedObjBufferDbRcsAvailableUsingImdnId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    move v3, v4

    goto :goto_0

    .line 708
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v0, :cond_6

    .line 710
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_5

    .line 700
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0

    :cond_6
    :goto_2
    if-nez v3, :cond_a

    .line 712
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleCloudNotifyDeletedObj MMS CloudUpdate: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->searchMMsPduBufferUsingCorrelationId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v0, :cond_7

    .line 718
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 719
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x4

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 721
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v2, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNmsEventDeletedObjMmsBufferDbAvailableUsingCorrId(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_3

    .line 725
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move v4, v3

    :goto_3
    if-eqz v0, :cond_8

    .line 727
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :cond_8
    move v3, v4

    goto :goto_5

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_9

    .line 716
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    :try_start_b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw p0

    :cond_a
    :goto_5
    if-nez v3, :cond_d

    .line 729
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 730
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloudNotifyChangedObj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->searchUnSyncedSMSBufferUsingCorrelationTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v0, :cond_b

    .line 734
    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 735
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->updateSummaryDbUsingMessageType(JI)J

    .line 737
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNmsEventDeletedObjSmsBufferDbAvailableUsingCorrTag(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    goto :goto_6

    .line 740
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_6
    if-eqz v0, :cond_d

    .line 742
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_8

    :catchall_4
    move-exception p0

    if-eqz v0, :cond_c

    .line 732
    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p1

    :try_start_f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_7
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :cond_d
    :goto_8
    if-eqz v1, :cond_e

    .line 745
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    return-void

    :catchall_6
    move-exception p0

    if-eqz v1, :cond_f

    .line 676
    :try_start_10
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    throw p0
.end method

.method protected handleDeleteMessageJson(Ljava/lang/String;)V
    .locals 2

    .line 1107
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1108
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleDownloadMessageJson(Ljava/lang/String;)V
    .locals 2

    .line 1117
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Download:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1118
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleExpiredObject(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V
    .locals 5

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->querySummaryDBwithResUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 634
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "syncaction"

    .line 636
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 635
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 637
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleExpiredObject, Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Deleted:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 644
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 641
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->onNmsEventExpiredObjSummaryDbAvailableUsingUrl(Landroid/database/Cursor;Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 642
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/DeletedObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->deleteSummaryDBwithResUrl(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 633
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 644
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method protected handleReadMessageJson(Ljava/lang/String;)V
    .locals 2

    .line 1097
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Read:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1098
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleReceivedMessageJson(Ljava/lang/String;)V
    .locals 2

    .line 1087
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Received:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1088
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleSentMessageJson(Ljava/lang/String;)V
    .locals 2

    .line 1092
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Sent:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1093
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleUnReadMessageJson(Ljava/lang/String;)V
    .locals 2

    .line 1102
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->UnRead:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1103
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleUploadMessageJson(Ljava/lang/String;)V
    .locals 2

    .line 1112
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->Upload:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1113
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processParamAppJsonList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected handleWipeOutMessageJson(Ljava/lang/String;)V
    .locals 2

    .line 1125
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->WipeOut:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object p1

    .line 1126
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->processWipeOutList(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    return-void
.end method

.method protected notifyNetAPIUploadMessages(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 15

    move-object v0, p0

    .line 314
    new-instance v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 315
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->requiresMsgUploadInInitSync()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v1, p2

    .line 316
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 319
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v10, 0x0

    iget-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v8, v2

    move/from16 v12, p3

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v14}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_0
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v7}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-void

    .line 326
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object v8

    const/4 v4, 0x3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move/from16 v5, p3

    .line 327
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v8, :cond_2

    .line 328
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSMessagesToUpload()Landroid/database/Cursor;

    move-result-object v8

    const/4 v4, 0x4

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move/from16 v5, p3

    .line 330
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v8, :cond_3

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_3
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryRCSMessagesToUpload()Landroid/database/Cursor;

    move-result-object v8

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move/from16 v5, p3

    .line 333
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_4

    .line 334
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_4
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryImdnMessagesToUpload()Landroid/database/Cursor;

    move-result-object v8

    const/16 v4, 0xd

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move/from16 v5, p3

    .line 336
    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_5

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_5
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 339
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v7}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_0

    .line 341
    :cond_6
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    iget-object v14, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v8, v2

    move/from16 v12, p3

    move-object/from16 v13, p1

    invoke-direct/range {v8 .. v14}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v7}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_7

    .line 335
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_8

    .line 332
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v1

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_9

    .line 329
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    throw v1

    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_a

    .line 326
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    throw v1
.end method

.method protected notifyUriRequesttoApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 11

    .line 183
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUriRequesttoApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 189
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    .line 190
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 193
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v2, v4, :cond_4

    .line 194
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 195
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 196
    iget-wide v9, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v8, v10, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-ne v4, v3, :cond_1

    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    :cond_1
    const/16 v9, 0x11

    if-ne v4, v9, :cond_2

    .line 201
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    :cond_2
    const/16 v6, 0x12

    if-ne v4, v6, :cond_3

    .line 203
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    .line 205
    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 209
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAppForFtUri notifyMMS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifyRCS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifyVVM count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notifyGreeting count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_a

    .line 215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result p1

    if-lez p1, :cond_9

    const-string p1, "MessageApp"

    const-string v2, ""

    const-string v3, "VVMDATA"

    if-eqz v1, :cond_8

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    .line 236
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default apptype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " datatype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v2

    goto :goto_4

    :cond_5
    const-string v2, "GREETING"

    move-object p1, v3

    goto :goto_4

    :cond_6
    move-object p1, v3

    move-object v2, p1

    goto :goto_4

    :cond_7
    const-string v2, "FT"

    goto :goto_4

    :cond_8
    const-string v2, "MMS"

    .line 239
    :goto_4
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonArray;

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v2, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method protected onHandlePendingNmsEvent()V
    .locals 12

    .line 749
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 750
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->queryAllPendingNmsEventInSummaryDB()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 751
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 752
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v3, "NmsEvent sync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "_bufferdbid"

    .line 755
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 754
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 756
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const/4 v5, 0x7

    int-to-long v6, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 750
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 761
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 762
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 763
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void
.end method

.method protected onSendCloudUnSyncedUpdate()V
    .locals 8

    .line 245
    new-instance v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryToCloudUnsyncedSms()Landroid/database/Cursor;

    move-result-object v7

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    .line 247
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v7, :cond_0

    .line 248
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToCloudUnsyncedMms()Landroid/database/Cursor;

    move-result-object v7

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    .line 250
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v7, :cond_1

    .line 251
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToCloudUnsyncedRcs()Landroid/database/Cursor;

    move-result-object v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    .line 253
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_2
    iget-object v0, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {p0, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    if-eqz v7, :cond_4

    .line 252
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p0

    :catchall_2
    move-exception p0

    if-eqz v7, :cond_5

    .line 249
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0

    :catchall_4
    move-exception p0

    if-eqz v7, :cond_6

    .line 246
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0
.end method

.method protected onSendDeviceUnSyncedUpdate()V
    .locals 10

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryToDeviceUnsyncedSms()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MessageApp"

    const-string v3, "_bufferdbid"

    if-eqz v0, :cond_1

    .line 262
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 264
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 266
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const/4 v6, 0x3

    .line 268
    invoke-virtual {v5, v6, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v4

    .line 266
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 270
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 261
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnsyncedMms()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 274
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 277
    :cond_3
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 276
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 278
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    const/4 v6, 0x4

    .line 280
    invoke-virtual {v5, v6, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v4

    .line 278
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 282
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v4, :cond_3

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 273
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 284
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToDeviceUnsyncedRcs()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 286
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 289
    :cond_6
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 288
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "is_filetransfer"

    .line 290
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    move v5, v6

    goto :goto_4

    :cond_7
    move v5, v1

    .line 291
    :goto_4
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    .line 293
    invoke-virtual {v7, v6, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->getMessageTypeString(IZ)Ljava/lang/String;

    move-result-object v5

    int-to-long v8, v4

    .line 291
    invoke-virtual {v7, v2, v5, v8, v9}, Lcom/sec/internal/ims/cmstore/syncschedulers/BaseMessagingScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 295
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v4, :cond_6

    goto :goto_6

    :catchall_4
    move-exception p0

    .line 285
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0

    :cond_8
    :goto_6
    if-eqz v0, :cond_9

    .line 297
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-void
.end method

.method protected onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZI)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    move-object v1, p2

    move/from16 v8, p4

    .line 135
    new-instance v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v9}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 136
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->getMessageType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v10

    .line 138
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 157
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryToDeviceUnDownloadedVvm(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v11

    const/16 v4, 0x11

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v11

    move/from16 v5, p3

    .line 159
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V

    .line 160
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 161
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->setVVMSyncState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v11, :cond_a

    .line 163
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_2

    .line 158
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 164
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 165
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->queryToDeviceUnDownloadedGreeting(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v11

    const/16 v4, 0x12

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v11

    move/from16 v5, p3

    .line 166
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v11, :cond_a

    .line 167
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_4

    .line 165
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1

    .line 139
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryToDeviceUnDownloadedMms(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v11

    .line 140
    :try_start_4
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->FetchUri:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne v8, v1, :cond_6

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v11

    move/from16 v5, p3

    .line 141
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V

    goto :goto_3

    :cond_6
    if-eqz v11, :cond_8

    .line 143
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string v1, "_bufferdbid"

    .line 146
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 145
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "linenum"

    .line 148
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 147
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 149
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    int-to-long v3, v1

    move-object v1, v2

    move-object v2, v9

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->addMmsPartDownloadList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;JLjava/lang/String;Z)V

    .line 150
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-nez v1, :cond_7

    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    .line 153
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_9
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, p1, v8}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryToDeviceUnDownloadedRcs(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v11

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move-object v3, v11

    move/from16 v5, p3

    .line 155
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->buildBufferList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Landroid/database/Cursor;IZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v11, :cond_a

    .line 156
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_a
    :goto_4
    iget-object v1, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 171
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->DownLoad:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    if-ne v8, v1, :cond_b

    .line 172
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_5

    .line 174
    :cond_b
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->notifyUriRequesttoApp(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_5

    :cond_c
    if-ltz v10, :cond_d

    .line 177
    iget-object v8, v9, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    new-instance v11, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    const-wide/16 v3, 0x0

    iget-object v12, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v11

    move v2, v10

    move/from16 v5, p3

    move-object v6, p1

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;-><init>(IJZLjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_d
    :goto_5
    return-void

    :catchall_4
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_e

    .line 154
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_6
    throw v1

    :catchall_6
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_f

    .line 139
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_7
    throw v1
.end method

.method public resetImsi()V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->resetImsi()V

    return-void
.end method

.method protected setBufferDBLoaded(Z)V
    .locals 0

    .line 1162
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    .line 1163
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mBufferDBloaded:Z

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveBufferDbLoaded(Z)V

    return-void
.end method

.method protected startGoForwardSyncDbCopyTask()V
    .locals 5

    .line 768
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 769
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 770
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    .line 769
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->Done:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 772
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    .line 771
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryDeltaSMSfromTelephony()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 774
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 775
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "SMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 773
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 779
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryDeltaMMSPduFromTelephonyDb()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 781
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 782
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "MMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 780
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 785
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 786
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->queryDeltaSMSfromTelephonyWoImsi()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 787
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 788
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "Null Imsi SMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 786
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 791
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 792
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryDeltaMMSPduFromTelephonyDbWoImsi()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 793
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 794
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "Null Imsi MMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p0

    .line 792
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 797
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 798
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->syncReadSmsFromTelephony()V

    .line 799
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->syncReadMmsFromTelephony()V

    .line 800
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method

.method protected startInitialSyncDBCopyTask()V
    .locals 5

    .line 811
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->cleanAllBufferDB()V

    .line 812
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 813
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    .line 814
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 815
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 816
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncdirection"

    .line 815
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 817
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendCloud:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 818
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "syncaction"

    .line 817
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 819
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSfromTelephonyWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 820
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "SMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 819
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 825
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSPduFromTelephonyDbWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 828
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 829
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "MMS DB loading"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 827
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 832
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 835
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->querySMSfromTelephonyWoIMSI()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 836
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 837
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "SMS Loading for IMSI null case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->insertToSMSBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p0

    .line 835
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 840
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 841
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->queryMMSPduFromTelephonyDbWoIMSI()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 842
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 843
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v4, "MMS Loading for IMSI null case"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v3, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->insertToMMSPDUBufferDB(Landroid/database/Cursor;Landroid/content/ContentValues;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception p0

    .line 841
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_6

    :catchall_7
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0

    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    .line 846
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 848
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCurrentIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->queryAllSessionWithIMSI(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 849
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 850
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->TAG:Ljava/lang/String;

    const-string v2, "RCS DB loading"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->insertAllSessionToRCSSessionBufferDB(Landroid/database/Cursor;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception p0

    .line 848
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0

    :cond_8
    :goto_9
    if-eqz v0, :cond_9

    .line 853
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    const/4 v0, 0x1

    .line 854
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->setBufferDBLoaded(Z)V

    return-void
.end method
