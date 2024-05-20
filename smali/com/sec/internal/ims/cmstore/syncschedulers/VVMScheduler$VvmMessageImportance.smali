.class public final enum Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;
.super Ljava/lang/Enum;
.source "VVMScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VvmMessageImportance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

.field public static final enum HIGH:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

.field public static final enum INVALID:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

.field public static final enum NORMAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 242
    new-instance v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->INVALID:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    .line 243
    new-instance v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->NORMAL:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    .line 244
    new-instance v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->HIGH:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 241
    sput-object v5, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->$VALUES:[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput p3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;
    .locals 1

    .line 241
    const-class v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;
    .locals 1

    .line 241
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->$VALUES:[Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmMessageImportance;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 254
    sget-object v0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$1;->$SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageImportance:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "Normal"

    return-object p0

    :cond_0
    const-string p0, "High"

    return-object p0
.end method
