.class public final enum Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;
.super Ljava/lang/Enum;
.source "IWorkingStatusProvisionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

.field public static final enum BUFFERDB_CLEAN:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

.field public static final enum DEFAULT_MSGAPP_CHGTO_NATIVE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

.field public static final enum MAILBOX_MIGRATION_RESET:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

.field public static final enum NET_WORK_STATUS_CHANGED:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

.field public static final enum OMA_PROVISION_FAILED:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

.field public static final enum PROVISION_SUCCESS:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

.field public static final enum RESTART_SERVICE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

.field public static final enum SEND_TOCLOUD_UNSYNC:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const-string v1, "PROVISION_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->PROVISION_SUCCESS:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    .line 42
    new-instance v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const-string v3, "OMA_PROVISION_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->OMA_PROVISION_FAILED:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    .line 43
    new-instance v3, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const-string v5, "SEND_TOCLOUD_UNSYNC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->SEND_TOCLOUD_UNSYNC:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    .line 44
    new-instance v5, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const-string v7, "NET_WORK_STATUS_CHANGED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->NET_WORK_STATUS_CHANGED:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    .line 45
    new-instance v7, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const-string v9, "DEFAULT_MSGAPP_CHGTO_NATIVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->DEFAULT_MSGAPP_CHGTO_NATIVE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    .line 46
    new-instance v9, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const-string v11, "RESTART_SERVICE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->RESTART_SERVICE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    .line 47
    new-instance v11, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const-string v13, "BUFFERDB_CLEAN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->BUFFERDB_CLEAN:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    .line 48
    new-instance v13, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const-string v15, "MAILBOX_MIGRATION_RESET"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->MAILBOX_MIGRATION_RESET:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 40
    sput-object v15, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->$VALUES:[Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;
    .locals 1

    .line 40
    const-class v0, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;
    .locals 1

    .line 40
    sget-object v0, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->$VALUES:[Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    invoke-virtual {v0}, [Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    return-object v0
.end method
