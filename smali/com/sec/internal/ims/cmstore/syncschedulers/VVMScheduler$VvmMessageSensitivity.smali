.class public final enum Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;
.super Ljava/lang/Enum;
.source "VVMScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VvmMessageSensitivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

.field public static final enum CONFIDENTIAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

.field public static final enum INVALID:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

.field public static final enum PERSONAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

.field public static final enum PRIVATE:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 214
    new-instance v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->INVALID:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    .line 215
    new-instance v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    const-string v3, "PERSONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->PERSONAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    .line 216
    new-instance v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    const-string v5, "PRIVATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->PRIVATE:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    .line 217
    new-instance v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    const-string v7, "CONFIDENTIAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->CONFIDENTIAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 213
    sput-object v7, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->$VALUES:[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 222
    iput p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;
    .locals 1

    .line 213
    const-class v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;
    .locals 1

    .line 213
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->$VALUES:[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageSensitivity;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 227
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageSensitivity:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "Personal"

    return-object p0

    :cond_0
    const-string p0, "Confidential"

    return-object p0

    :cond_1
    const-string p0, "Private"

    return-object p0
.end method
