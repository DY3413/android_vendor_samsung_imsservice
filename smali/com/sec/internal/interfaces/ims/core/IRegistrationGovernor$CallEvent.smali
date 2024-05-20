.class public final enum Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
.super Ljava/lang/Enum;
.source "IRegistrationGovernor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_ALT_SERVICE_EMERGENCY:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

.field public static final enum EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 21
    new-instance v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v1, "EVENT_CALL_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_UNKNOWN:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 22
    new-instance v1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v3, "EVENT_CALL_ESTABLISHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ESTABLISHED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 23
    new-instance v3, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v5, "EVENT_CALL_LAST_CALL_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_LAST_CALL_END:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 24
    new-instance v5, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v7, "EVENT_CALL_ALT_SERVICE_INITIAL_REGI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_INITIAL_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 25
    new-instance v7, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v9, "EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY_REGI:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    .line 26
    new-instance v9, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const-string v11, "EVENT_CALL_ALT_SERVICE_EMERGENCY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_ALT_SERVICE_EMERGENCY:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 20
    sput-object v11, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->$VALUES:[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->$VALUES:[Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    invoke-virtual {v0}, [Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    return-object v0
.end method
