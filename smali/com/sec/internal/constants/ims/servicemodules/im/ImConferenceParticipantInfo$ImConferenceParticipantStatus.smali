.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;
.super Ljava/lang/Enum;
.source "ImConferenceParticipantInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImConferenceParticipantStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum ALERTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum CONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum DIALING_IN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum DIALING_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum DISCONNECTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum MUTED_VIA_FOCUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum ON_HOLD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

.field public static final enum PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 51
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->CONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 57
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v3, "DISCONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 67
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v5, "ON_HOLD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ON_HOLD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 73
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v7, "ALERTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->ALERTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 83
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v9, "MUTED_VIA_FOCUS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->MUTED_VIA_FOCUS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 89
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v11, "PENDING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 95
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v13, "DIALING_IN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_IN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 101
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v15, "DIALING_OUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DIALING_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 107
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v14, "DISCONNECTING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->DISCONNECTING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    .line 112
    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const-string v12, "INVALID"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 46
    sput-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;
    .locals 1

    .line 46
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;
    .locals 1

    .line 46
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceParticipantStatus;

    return-object v0
.end method
