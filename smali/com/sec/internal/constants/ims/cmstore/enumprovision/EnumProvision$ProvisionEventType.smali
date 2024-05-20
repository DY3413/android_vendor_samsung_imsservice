.class public final enum Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
.super Ljava/lang/Enum;
.source "EnumProvision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProvisionEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum ACCOUNT_NOT_ELIGIBLE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum CHK_INITIAL_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum CPS_PROVISION_SHUTDOWN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum DELETE_ACCOUNT_SUCCESS:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum EVENT_TYPE_END:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum INTERNAL_RESTART:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum LAST_RETRY_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum MAILBOX_MIGRATION_RESET:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum READY_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_ACCOUNT_ELIGIBILITY:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_ATS_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_RETIRE_SESSION:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_SERVICE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum RESTART_SERVICE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum STOP_BACKUP_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum SYNC_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

.field public static final enum ZCODE_ERROR_201:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 20
    new-instance v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v3, "CHK_INITIAL_STATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_INITIAL_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 21
    new-instance v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v5, "CHK_PHONE_ACCOUNT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 22
    new-instance v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v7, "REQ_AUTH_ZCODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 23
    new-instance v7, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v9, "REQ_ATS_TOKEN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ATS_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 24
    new-instance v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v11, "REQ_SESSION_GEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 25
    new-instance v11, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v13, "REQ_SERVICE_ACCOUNT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SERVICE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 26
    new-instance v13, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v15, "REQ_ACCOUNT_ELIGIBILITY"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ACCOUNT_ELIGIBILITY:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 27
    new-instance v15, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v14, "REQ_GET_TC"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 28
    new-instance v14, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v12, "REQ_CREATE_ACCOUNT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 29
    new-instance v12, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v10, "REQ_DELETE_ACCOUNT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 30
    new-instance v10, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v8, "REQ_HUI_TOKEN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 31
    new-instance v8, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "REQ_PAT"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 32
    new-instance v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v4, "REQ_RETIRE_SESSION"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_RETIRE_SESSION:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 34
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v2, "READY_PAT"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->READY_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 37
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "ACCOUNT_NOT_ELIGIBLE"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCOUNT_NOT_ELIGIBLE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 38
    new-instance v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v4, "REQ_INPUT_CTN"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 39
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v2, "CPS_PROVISION_SHUTDOWN"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CPS_PROVISION_SHUTDOWN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 40
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "PROVISION_ERR"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 41
    new-instance v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v4, "AUTH_ERR"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 42
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v2, "STOP_BACKUP_ERR"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->STOP_BACKUP_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 43
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "SYNC_ERR"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->SYNC_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 44
    new-instance v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v4, "ACCESS_ERR"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 45
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v4, "DELETE_ACCOUNT_SUCCESS"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->DELETE_ACCOUNT_SUCCESS:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 46
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "LAST_RETRY_CREATE_ACCOUNT"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->LAST_RETRY_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 47
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "EVENT_AUTH_ZCODE_TIMEOUT"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 50
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "CHECK_PHONE_STATE"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 53
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "RESTART_SERVICE"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->RESTART_SERVICE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 55
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "ZCODE_ERROR_201"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ZCODE_ERROR_201:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 57
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "MAILBOX_MIGRATION_RESET"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->MAILBOX_MIGRATION_RESET:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 59
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "INTERNAL_RESTART"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->INTERNAL_RESTART:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 61
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "EVENT_TYPE_END"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const v4, 0x7fffffff

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_TYPE_END:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const/16 v4, 0x20

    new-array v4, v4, [Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v25, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v2, v4, v0

    .line 17
    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->mId:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    .locals 5

    .line 77
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->values()[Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    iget v4, v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->mId:I

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    .locals 1

    .line 17
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 70
    iget p0, p0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->mId:I

    return p0
.end method
