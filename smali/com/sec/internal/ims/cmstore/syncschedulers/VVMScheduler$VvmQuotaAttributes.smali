.class Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;
.super Ljava/lang/Object;
.source "VVMScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VvmQuotaAttributes"
.end annotation


# instance fields
.field OccupiedStorage:J

.field TotalStorage:J

.field VMMessagesQuota:I

.field VMOccupiedMessages:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 207
    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->TotalStorage:J

    .line 208
    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->OccupiedStorage:J

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->VMMessagesQuota:I

    .line 210
    iput v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->VMOccupiedMessages:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;-><init>()V

    return-void
.end method
