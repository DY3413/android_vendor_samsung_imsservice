.class public final enum Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;
.super Ljava/lang/Enum;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/DiagnosisConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REGI_PROFILE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum CDPN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum CHATBOT_COMMUNICATION:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum EC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum EUC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum FT:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum FT_HTTP:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum GLS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum IM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum IS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum LASTSEEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum MMTEL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum MMTEL_VIDEO:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum OPTIONS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum PRESENCE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum PROFILE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum SLM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum SMSIP:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

.field public static final enum VS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 605
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 606
    new-instance v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v3, "SMSIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->SMSIP:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 607
    new-instance v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v5, "MMTEL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->MMTEL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 608
    new-instance v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v7, "MMTEL_VIDEO"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->MMTEL_VIDEO:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 609
    new-instance v7, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v10, "PRESENCE"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->PRESENCE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 610
    new-instance v10, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v12, "IM"

    const/4 v13, 0x5

    const/16 v14, 0x10

    invoke-direct {v10, v12, v13, v14}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->IM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 611
    new-instance v12, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "FT"

    const/4 v13, 0x6

    const/16 v9, 0x20

    invoke-direct {v12, v15, v13, v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->FT:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 612
    new-instance v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "FT_HTTP"

    const/4 v13, 0x7

    const/16 v8, 0x40

    invoke-direct {v9, v15, v13, v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->FT_HTTP:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 613
    new-instance v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "OPTIONS"

    const/16 v13, 0x80

    invoke-direct {v8, v15, v11, v13}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->OPTIONS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 614
    new-instance v13, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "IS"

    const/16 v11, 0x9

    const/16 v6, 0x100

    invoke-direct {v13, v15, v11, v6}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->IS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 615
    new-instance v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "VS"

    const/16 v11, 0xa

    const/16 v4, 0x200

    invoke-direct {v6, v15, v11, v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->VS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 616
    new-instance v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "EC"

    const/16 v11, 0xb

    const/16 v2, 0x400

    invoke-direct {v4, v15, v11, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->EC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 617
    new-instance v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "GLS"

    const/16 v11, 0xc

    const/16 v14, 0x800

    invoke-direct {v2, v15, v11, v14}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->GLS:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 618
    new-instance v14, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "SLM"

    const/16 v11, 0xd

    move-object/from16 v16, v2

    const/16 v2, 0x1000

    invoke-direct {v14, v15, v11, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->SLM:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 619
    new-instance v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "EUC"

    const/16 v11, 0xe

    move-object/from16 v17, v14

    const/16 v14, 0x2000

    invoke-direct {v2, v15, v11, v14}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->EUC:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 620
    new-instance v14, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "PROFILE"

    const/16 v11, 0xf

    move-object/from16 v18, v2

    const/16 v2, 0x4000

    invoke-direct {v14, v15, v11, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->PROFILE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 621
    new-instance v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v15, "CDPN"

    const v11, 0x8000

    move-object/from16 v19, v14

    const/16 v14, 0x10

    invoke-direct {v2, v15, v14, v11}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->CDPN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 622
    new-instance v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v14, "LASTSEEN"

    const/16 v15, 0x11

    move-object/from16 v20, v2

    const/high16 v2, 0x10000

    invoke-direct {v11, v14, v15, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->LASTSEEN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    .line 623
    new-instance v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const-string v14, "CHATBOT_COMMUNICATION"

    const/16 v15, 0x12

    move-object/from16 v21, v11

    const/high16 v11, 0x20000

    invoke-direct {v2, v14, v15, v11}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->CHATBOT_COMMUNICATION:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const/16 v11, 0x13

    new-array v11, v11, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    const/4 v14, 0x0

    aput-object v0, v11, v14

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v3, v11, v0

    const/4 v0, 0x3

    aput-object v5, v11, v0

    const/4 v0, 0x4

    aput-object v7, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    const/4 v0, 0x7

    aput-object v9, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v13, v11, v0

    const/16 v0, 0xa

    aput-object v6, v11, v0

    const/16 v0, 0xb

    aput-object v4, v11, v0

    const/16 v0, 0xc

    aput-object v16, v11, v0

    const/16 v0, 0xd

    aput-object v17, v11, v0

    const/16 v0, 0xe

    aput-object v18, v11, v0

    const/16 v0, 0xf

    aput-object v19, v11, v0

    const/16 v0, 0x10

    aput-object v20, v11, v0

    const/16 v0, 0x11

    aput-object v21, v11, v0

    aput-object v2, v11, v15

    .line 604
    sput-object v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 627
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 628
    iput p3, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->mValue:I

    return-void
.end method

.method public static fromService(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;
    .locals 5

    .line 641
    invoke-static {}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 642
    invoke-virtual {v3, p0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->compare(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    return-object p0
.end method

.method private normalizeSvcName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "[\\W_]"

    const-string v0, ""

    .line 651
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;
    .locals 1

    .line 604
    const-class v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;
    .locals 1

    .line 604
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/String;)Z
    .locals 1

    .line 636
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->normalizeSvcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->normalizeSvcName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 636
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getValue()I
    .locals 0

    .line 632
    iget p0, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_PROFILE;->mValue:I

    return p0
.end method
