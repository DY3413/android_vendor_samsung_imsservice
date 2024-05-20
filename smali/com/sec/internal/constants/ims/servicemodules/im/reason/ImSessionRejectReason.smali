.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
.super Ljava/lang/Enum;
.source "ImSessionRejectReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum CHATBOT_PROFILE_RETRIEVAL_FAIL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum FUNCTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum ISFOCUS_ALREADY_ASSIGNED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum NO_MESSAGES:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum TOO_MANY_PARTICIPANTS:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;


# instance fields
.field private final mSipCode:I

.field private final mWarningCode:I

.field private final mWarningText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "VOLUNTARILY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 20
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v4, "INVOLUNTARILY"

    const/4 v5, 0x1

    const/16 v6, 0x1f7

    const/4 v7, -0x1

    const-string v8, "Service Unavailable, User Dreged"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 22
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v4, "DEDICATED_BEARER_UNAVAILABLE_TIMEOUT"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 24
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v6, "GC_FORCE_CLOSE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 25
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v9, "TEMPORARILY_UNAVAILABLE"

    const/4 v10, 0x4

    const/16 v11, 0x1e0

    const/4 v12, -0x1

    const-string v13, "Temporarily Unavailable"

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 26
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v15, "BUSY_HERE"

    const/16 v16, 0x5

    const/16 v17, 0x1e6

    const/16 v18, -0x1

    const-string v19, "Busy Here"

    move-object v14, v8

    invoke-direct/range {v14 .. v19}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 28
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v10, "FORBIDDEN"

    const/4 v11, 0x6

    const/16 v12, 0x193

    const/16 v13, 0x7f

    const-string v14, "Service not authorised"

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 30
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v17, "CHATBOT_PROFILE_RETRIEVAL_FAIL"

    const/16 v18, 0x7

    const/16 v19, 0x190

    const/16 v20, -0x1

    const-string v21, "Bad request"

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v21}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->CHATBOT_PROFILE_RETRIEVAL_FAIL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 31
    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v23, "NOT_ACCEPTABLE_HERE"

    const/16 v24, 0x8

    const/16 v25, 0x1e8

    const/16 v26, -0x1

    const-string v27, "Not Acceptable Here"

    move-object/from16 v22, v10

    invoke-direct/range {v22 .. v27}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 48
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v12, "TOO_MANY_PARTICIPANTS"

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->TOO_MANY_PARTICIPANTS:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 49
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v14, "ISFOCUS_ALREADY_ASSIGNED"

    const/16 v13, 0xa

    invoke-direct {v12, v14, v13}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->ISFOCUS_ALREADY_ASSIGNED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 50
    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v13, "ANONYMITY_NOT_ALLOWED"

    const/16 v7, 0xb

    invoke-direct {v14, v13, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 51
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v7, "FUNCTION_NOT_ALLOWED"

    const/16 v5, 0xc

    invoke-direct {v13, v7, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->FUNCTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 52
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v22, "SESSION_DOES_NOT_EXIST"

    const/16 v23, 0xd

    const/16 v24, 0x1e1

    const/16 v25, -0x1

    const-string v26, ""

    move-object/from16 v21, v7

    invoke-direct/range {v21 .. v26}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 53
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v2, "NO_MESSAGES"

    move-object/from16 v23, v7

    const/16 v7, 0xe

    invoke-direct {v5, v2, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->NO_MESSAGES:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 54
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v7, "SERVICE_NOT_AUTHORISED"

    move-object/from16 v25, v5

    const/16 v5, 0xf

    invoke-direct {v2, v7, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 55
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v5, "NO_DESTINATIONS"

    move-object/from16 v27, v2

    const/16 v2, 0x10

    invoke-direct {v7, v5, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 56
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v2, "VERSION_NOT_SUPPORTED"

    move-object/from16 v28, v7

    const/16 v7, 0x11

    invoke-direct {v5, v2, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 57
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v7, "SIZE_EXCEEDED"

    move-object/from16 v29, v5

    const/16 v5, 0x12

    invoke-direct {v2, v7, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/16 v7, 0x13

    new-array v7, v7, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/16 v22, 0x0

    aput-object v0, v7, v22

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v15, v7, v0

    const/4 v0, 0x7

    aput-object v9, v7, v0

    const/16 v0, 0x8

    aput-object v10, v7, v0

    const/16 v0, 0x9

    aput-object v11, v7, v0

    const/16 v0, 0xa

    aput-object v12, v7, v0

    const/16 v0, 0xb

    aput-object v14, v7, v0

    const/16 v0, 0xc

    aput-object v13, v7, v0

    const/16 v0, 0xd

    aput-object v23, v7, v0

    const/16 v0, 0xe

    aput-object v25, v7, v0

    const/16 v0, 0xf

    aput-object v27, v7, v0

    const/16 v0, 0x10

    aput-object v28, v7, v0

    const/16 v0, 0x11

    aput-object v29, v7, v0

    aput-object v2, v7, v5

    .line 14
    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x25b

    .line 64
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mSipCode:I

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningCode:I

    const-string p1, ""

    .line 66
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mSipCode:I

    .line 71
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningCode:I

    .line 72
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-object v0
.end method


# virtual methods
.method public getSipCode()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mSipCode:I

    return p0
.end method

.method public getWarningCode()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningCode:I

    return p0
.end method

.method public getWarningText()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningText:Ljava/lang/String;

    return-object p0
.end method
