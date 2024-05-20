.class public final enum Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
.super Ljava/lang/Enum;
.source "RcsPolicySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/RcsPolicySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RcsPolicyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum ATT:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum BMC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum BMC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum CMCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum CTC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum CU:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum JIBE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum KT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum ORANGE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum ORANGE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum RJIL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum RJIL_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum SEC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum SINGTEL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum SPR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum SPR_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum SWISSCOM_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TCE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TELENOR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TELIA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TELSTRA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TMOBILE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TMOBILE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum TMOUS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum USCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum VODA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum VODAFONE_IN_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum VODA_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

.field public static final enum VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;


# instance fields
.field private mTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 50
    new-instance v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v1, "DEFAULT_RCS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 52
    new-instance v1, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v3, "CMCC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CMCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 53
    new-instance v3, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v5, "CTC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CTC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 54
    new-instance v5, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v7, "CU"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CU:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 55
    new-instance v7, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v9, "RJIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->RJIL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 56
    new-instance v9, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v11, "SINGTEL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SINGTEL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 57
    new-instance v11, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v13, "VODAFONE_IN_UP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODAFONE_IN_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 59
    new-instance v13, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v15, "TMOBILE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOBILE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 60
    new-instance v15, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v14, "VODA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 61
    new-instance v14, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v12, "ORANGE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ORANGE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 62
    new-instance v12, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v10, "TELENOR"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELENOR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 63
    new-instance v10, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v8, "TELIA"

    const/16 v6, 0xb

    const-string v4, "TELIA"

    invoke-direct {v10, v8, v6, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELIA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 64
    new-instance v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "TELSTRA"

    const/16 v8, 0xc

    const-string v2, "TELSTRA"

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELSTRA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 66
    new-instance v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "ATT"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "ATT"

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ATT:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 67
    new-instance v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "TMOUS"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "TMOUS"

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOUS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 68
    new-instance v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "VZW"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const-string v4, "VZW"

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 69
    new-instance v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "SPR"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const-string v2, "SPR"

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SPR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 70
    new-instance v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "USCC"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const-string v4, "USCC"

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->USCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 71
    new-instance v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "BMC"

    const/16 v8, 0x12

    move-object/from16 v21, v2

    const-string v2, "BMC"

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 72
    new-instance v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "BMC_UP"

    const/16 v8, 0x13

    move-object/from16 v22, v4

    const-string v4, "BMC_UP"

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 74
    new-instance v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "TCE"

    const/16 v8, 0x14

    move-object/from16 v23, v2

    const-string v2, "TCE"

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TCE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 77
    new-instance v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "DEFAULT_UP"

    const/16 v8, 0x15

    move-object/from16 v24, v4

    const-string v4, "DEFAULT_UP"

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 79
    new-instance v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "JIBE_UP"

    const/16 v8, 0x16

    move-object/from16 v25, v2

    const-string v2, "JIBE_UP"

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->JIBE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 80
    new-instance v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "SEC_UP"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const-string v4, "SEC_UP"

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SEC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 82
    new-instance v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "KT_UP"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const-string v2, "KT_UP"

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->KT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 83
    new-instance v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "RJIL_UP"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const-string v4, "RJIL_UP"

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->RJIL_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 85
    new-instance v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "ORANGE_UP"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const-string v2, "ORANGE_UP"

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ORANGE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 86
    new-instance v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "VODA_UP"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const-string v4, "VODA_UP"

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODA_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 87
    new-instance v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "SWISSCOM_UP"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const-string v2, "SWISSCOM_UP"

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SWISSCOM_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 88
    new-instance v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "TMOBILE_UP"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const-string v4, "TMOBILE_UP"

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOBILE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 90
    new-instance v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "SPR_UP"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const-string v2, "SPR_UP"

    invoke-direct {v4, v6, v8, v2}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SPR_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 91
    new-instance v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const-string v6, "VZW_UP"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const-string v4, "VZW_UP"

    invoke-direct {v2, v6, v8, v4}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    const/16 v4, 0x20

    new-array v4, v4, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

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

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

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

    .line 48
    sput-object v4, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->$VALUES:[Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput-object p3, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->mTypeName:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 5

    if-nez p0, :cond_0

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Warning: RcsPolicyType invalid parameter, name is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 112
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->values()[Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 113
    iget-object v4, v3, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->mTypeName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_UP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Warning: RcsPolicyType "

    if-eqz v0, :cond_3

    .line 119
    invoke-static {}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not defined use DEFAULT_UP"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0

    .line 122
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/settings/RcsPolicySettings;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not defined use DEFAULT_RCS"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 1

    .line 48
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->$VALUES:[Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0
.end method


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->mTypeName:Ljava/lang/String;

    return-object p0
.end method

.method public varargs isOneOf([Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)Z
    .locals 4

    .line 128
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isUp()Z
    .locals 1

    .line 104
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->getTypeName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
