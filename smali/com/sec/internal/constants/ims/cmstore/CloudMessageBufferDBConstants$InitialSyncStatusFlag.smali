.class public final enum Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;
.super Ljava/lang/Enum;
.source "CloudMessageBufferDBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitialSyncStatusFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

.field public static final enum FAIL:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

.field public static final enum FINISHED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

.field public static final enum IGNORED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

.field public static final enum START:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 115
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->START:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    .line 116
    new-instance v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    const-string v3, "FINISHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->FINISHED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    .line 117
    new-instance v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    const-string v5, "FAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->FAIL:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    .line 118
    new-instance v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    const-string v7, "IGNORED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->IGNORED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 114
    sput-object v7, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;
    .locals 1

    .line 114
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;
    .locals 1

    .line 114
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    return-object v0
.end method
