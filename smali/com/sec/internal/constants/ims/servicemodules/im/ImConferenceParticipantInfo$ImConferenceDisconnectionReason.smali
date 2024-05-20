.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;
.super Ljava/lang/Enum;
.source "ImConferenceParticipantInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImConferenceDisconnectionReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

.field public static final enum BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

.field public static final enum BUSY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

.field public static final enum DEPARTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

.field public static final enum FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 119
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    const-string v1, "DEPARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->DEPARTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    .line 127
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    const-string v3, "BOOTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BOOTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    .line 134
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    const-string v5, "FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    .line 142
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    const-string v7, "BUSY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->BUSY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 115
    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;
    .locals 1

    .line 115
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;
    .locals 1

    .line 115
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo$ImConferenceDisconnectionReason;

    return-object v0
.end method
