.class Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;
.super Ljava/lang/Object;
.source "StackIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/StackIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SipDebugMessage"
.end annotation


# instance fields
.field private mIsEncrypted:Z

.field private mIsRx:Z

.field private mMethod:Ljava/lang/String;

.field private mPhoneId:I

.field private mSipMessage:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsEncrypted(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsEncrypted:Z

    return p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 6

    .line 3313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3314
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mSipMessage:Ljava/lang/String;

    .line 3315
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mMethod:Ljava/lang/String;

    .line 3316
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mTimestamp:Ljava/lang/String;

    .line 3317
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRx:Z

    .line 3318
    iput p5, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPhoneId:I

    const/4 p1, 0x0

    .line 3319
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsEncrypted:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .registers 7

    .line 3322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3323
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mSipMessage:Ljava/lang/String;

    .line 3324
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mMethod:Ljava/lang/String;

    .line 3325
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mTimestamp:Ljava/lang/String;

    .line 3326
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRx:Z

    .line 3327
    iput p5, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPhoneId:I

    .line 3328
    iput-boolean p6, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsEncrypted:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage-IA;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 3333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   slot["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mIsRx:Z

    if-eqz v1, :cond_20

    const-string v1, "[<--] "

    goto :goto_22

    :cond_20
    const-string v1, "[-->] "

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->mSipMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
