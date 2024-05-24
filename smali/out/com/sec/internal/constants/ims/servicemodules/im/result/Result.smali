.class public Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;,
        Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;,
        Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;
    }
.end annotation


# instance fields
.field private mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

.field private mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

.field private mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

.field private mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

.field private mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

.field private mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V
    .registers 10

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V
    .registers 7

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .registers 10

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v2, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    iget-object v3, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    iget-object v4, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    iget-object v5, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    iget-object v6, p2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V

    return-void
.end method

.method private init(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;)V
    .registers 9

    const-string v0, "init: imError is null."

    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s"

    invoke-static {p1, v1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const-string p1, "init: type is null."

    .line 38
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 39
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    .line 40
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    .line 41
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    .line 42
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    return-void
.end method


# virtual methods
.method public getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    return-object p0
.end method

.method public getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    return-object p0
.end method

.method public getReasonHdr()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    return-object p0
.end method

.method public getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    return-object p0
.end method

.method public getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    return-object p0
.end method

.method public getWarningHdr()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    return-object p0
.end method

.method public toCriticalLog()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eqz v1, :cond_2d

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",i="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_2d
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    if-eqz v1, :cond_47

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",s="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_47
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    if-eqz v1, :cond_61

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",m=="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_61
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    if-eqz v1, :cond_7f

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",w="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_7f
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    if-eqz v1, :cond_9d

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",r="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result [mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eqz v1, :cond_2d

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mImError="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mImError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_2d
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    if-eqz v1, :cond_47

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mSipResponse="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mSipResponse:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_47
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    if-eqz v1, :cond_61

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mMsrpResponse="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mMsrpResponse:Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_61
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    if-eqz v1, :cond_7f

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mWarningHdr="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mWarningHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$WarningHeader;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_7f
    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    if-eqz v1, :cond_9d

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mReasonHdr="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->mReasonHdr:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$ReasonHeader;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :cond_9d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
