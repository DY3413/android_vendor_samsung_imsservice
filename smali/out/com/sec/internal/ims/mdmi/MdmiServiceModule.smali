.class public Lcom/sec/internal/ims/mdmi/MdmiServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "MdmiServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/mdmi/MdmiServiceModule$msgType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private m200OkRecvTime:J

.field private mInviteSendingTime:J

.field private final mListener:Lcom/sec/internal/ims/mdmi/MdmiE911Listener;

.field public mMdmiEventListener:Lcom/sec/ims/mdmi/IMdmiEventListener;

.field private mMeanvalue:D

.field private mNumberOfCalls:J

.field private mNumberOfE911Calls:J

.field private mNumberOfE911reg:J

.field private mNumberOfE922Calls:J

.field private mNumberOfSipCancel:J

.field private mNumberofSipBye:J

.field private mPhoneId:I

.field private maxTimeDiffBetweenInviteAndOk:J

.field private minTimeDiffBetweenInviteAndOk:J


# direct methods
.method static bridge synthetic -$$Nest$fgetm200OkRecvTime(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->m200OkRecvTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmInviteSendingTime(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mInviteSendingTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMeanvalue(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)D
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mMeanvalue:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNumberOfCalls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfCalls:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNumberOfE911Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfE911Calls:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNumberOfE911reg(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfE911reg:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNumberOfE922Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfE922Calls:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNumberOfSipCancel(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfSipCancel:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNumberofSipBye(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberofSipBye:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmaxTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->maxTimeDiffBetweenInviteAndOk:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetminTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->minTimeDiffBetweenInviteAndOk:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputm200OkRecvTime(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->m200OkRecvTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInviteSendingTime(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mInviteSendingTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMeanvalue(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;D)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mMeanvalue:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumberOfCalls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfCalls:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumberOfE911Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfE911Calls:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumberOfE911reg(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfE911reg:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumberOfE922Calls(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfE922Calls:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumberOfSipCancel(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfSipCancel:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumberofSipBye(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberofSipBye:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmaxTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->maxTimeDiffBetweenInviteAndOk:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputminTimeDiffBetweenInviteAndOk(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->minTimeDiffBetweenInviteAndOk:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .registers 5

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    const-wide/16 p1, 0x0

    .line 22
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mInviteSendingTime:J

    .line 23
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->m200OkRecvTime:J

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mMeanvalue:D

    .line 25
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfCalls:J

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mPhoneId:I

    .line 56
    new-instance v0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/mdmi/MdmiServiceModule$1;-><init>(Lcom/sec/internal/ims/mdmi/MdmiServiceModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mListener:Lcom/sec/internal/ims/mdmi/MdmiE911Listener;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mMdmiEventListener:Lcom/sec/ims/mdmi/IMdmiEventListener;

    .line 38
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfE911reg:J

    .line 39
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfE911Calls:J

    .line 40
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfE922Calls:J

    .line 41
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfSipCancel:J

    .line 42
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberofSipBye:J

    const-wide v0, 0x7fffffffffffffffL

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->minTimeDiffBetweenInviteAndOk:J

    .line 44
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->maxTimeDiffBetweenInviteAndOk:J

    .line 45
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mInviteSendingTime:J

    .line 46
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->m200OkRecvTime:J

    .line 47
    iput-wide p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mNumberOfCalls:J

    return-void
.end method


# virtual methods
.method public getMdmiListener()Lcom/sec/internal/ims/mdmi/MdmiE911Listener;
    .registers 1

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mListener:Lcom/sec/internal/ims/mdmi/MdmiE911Listener;

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .registers 1

    const-string p0, "mdmi"

    .line 117
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .registers 2

    .line 0
    return-void
.end method

.method public init()V
    .registers 2

    .line 52
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 53
    sget-object p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "init()"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMdmiEventListener(Lcom/sec/ims/mdmi/IMdmiEventListener;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/mdmi/MdmiServiceModule;->mMdmiEventListener:Lcom/sec/ims/mdmi/IMdmiEventListener;

    return-void
.end method
