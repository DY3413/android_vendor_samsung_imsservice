.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConferenceInfoUpdated_/ImParticipantStatus;
.super Ljava/lang/Object;
.source "ImParticipantStatus.java"


# static fields
.field public static final PARTICIPANT_STATUS_CONNECTED:I = 0x0

.field public static final PARTICIPANT_STATUS_DISCONNECTED:I = 0x1

.field public static final PARTICIPANT_STATUS_PENDING:I = 0x2

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "PARTICIPANT_STATUS_DISCONNECTED"

    const-string v1, "PARTICIPANT_STATUS_PENDING"

    const-string v2, "PARTICIPANT_STATUS_CONNECTED"

    .line 11
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConferenceInfoUpdated_/ImParticipantStatus;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2

    .line 13
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConferenceInfoUpdated_/ImParticipantStatus;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
