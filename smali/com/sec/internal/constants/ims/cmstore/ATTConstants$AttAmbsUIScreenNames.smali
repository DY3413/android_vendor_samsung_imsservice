.class public final enum Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
.super Ljava/lang/Enum;
.source "ATTConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/ATTConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttAmbsUIScreenNames"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum AMBS_SERVICE_ENABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum DontTurnOn_PrmptMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum NotDefault_PrmptMsg12:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum ProvisioningBlockedError_ErrMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum ProvisioningError_ErrMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum Provisioning_PrmptMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum RestartMenu_Disable_PrmptMsg16:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum StopBackupError_ErrMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum StopBackup_PrmptMsg13:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum StopConfirmation_PrmptMsg14:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field public static final enum Synchronizing_PrmptMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 63
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v1, "NewUserOptIn_PrmptMsg1"

    const/4 v2, 0x0

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 64
    new-instance v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v3, "ExistingUserOptInWithTerms_PrmptMsg3"

    const/4 v4, 0x1

    const/16 v5, 0x67

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 65
    new-instance v3, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v5, "ExistingUserOptInWoTerms_PrmpMsg4"

    const/4 v6, 0x2

    const/16 v7, 0x68

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 66
    new-instance v5, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v7, "SteadyState_PrmptMsg5"

    const/4 v8, 0x3

    const/16 v9, 0x69

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 67
    new-instance v7, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v9, "Synchronizing_PrmptMsg6"

    const/4 v10, 0x4

    const/16 v11, 0x6a

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Synchronizing_PrmptMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 68
    new-instance v9, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v11, "DontTurnOn_PrmptMsg7"

    const/4 v12, 0x5

    const/16 v13, 0x6b

    invoke-direct {v9, v11, v12, v13}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->DontTurnOn_PrmptMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 69
    new-instance v11, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v13, "Provisioning_PrmptMsg8"

    const/4 v14, 0x6

    const/16 v15, 0x6c

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Provisioning_PrmptMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 70
    new-instance v13, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "Settings_PrmptMsg9"

    const/4 v14, 0x7

    const/16 v12, 0x6d

    invoke-direct {v13, v15, v14, v12}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 71
    new-instance v12, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "Settings_PrmptMsg10"

    const/16 v14, 0x8

    const/16 v10, 0x64

    invoke-direct {v12, v15, v14, v10}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 72
    new-instance v10, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "Settings_PrmptMsg11"

    const/16 v14, 0x9

    const/16 v8, 0x6f

    invoke-direct {v10, v15, v14, v8}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 73
    new-instance v8, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "NotDefault_PrmptMsg12"

    const/16 v14, 0xa

    const/16 v6, 0x70

    invoke-direct {v8, v15, v14, v6}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NotDefault_PrmptMsg12:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 74
    new-instance v6, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "StopBackup_PrmptMsg13"

    const/16 v14, 0xb

    const/16 v4, 0x71

    invoke-direct {v6, v15, v14, v4}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackup_PrmptMsg13:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 75
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "StopConfirmation_PrmptMsg14"

    const/16 v14, 0xc

    const/16 v2, 0x72

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopConfirmation_PrmptMsg14:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 76
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "RestartMenu_Enable_PrmptMsg15"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x73

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 77
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "RestartMenu_Disable_PrmptMsg16"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x74

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Disable_PrmptMsg16:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 79
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "EligibilityError_ErrMsg1"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0xc9

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 80
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "AuthenticationError_ErrMsg2"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0xca

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 81
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "ProvisioningError_ErrMsg4"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0xcc

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningError_ErrMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 82
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "SteadyStateError_ErrMsg5"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0xcd

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 83
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "MsisdnEntry_ErrMsg6"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0xce

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 84
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "SteadyStateError_ErrMsg7"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0xcf

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 85
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "ProvisioningBlockedError_ErrMsg8"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0xd0

    invoke-direct {v2, v15, v14, v4}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningBlockedError_ErrMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 86
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v15, "StopBackupError_ErrMsg10"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0xd2

    invoke-direct {v4, v15, v14, v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackupError_ErrMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 88
    new-instance v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v14, "AMBS_SERVICE_DISABLE"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x12d

    invoke-direct {v2, v14, v15, v4}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 89
    new-instance v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const-string v14, "AMBS_SERVICE_ENABLE"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x12e

    invoke-direct {v4, v14, v15, v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_ENABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v4, v2, v0

    .line 62
    sput-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->mId:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    .locals 5

    .line 105
    invoke-static {}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->values()[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 106
    iget v4, v3, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->mId:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    .locals 1

    .line 62
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    .locals 1

    .line 62
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->mId:I

    return p0
.end method
