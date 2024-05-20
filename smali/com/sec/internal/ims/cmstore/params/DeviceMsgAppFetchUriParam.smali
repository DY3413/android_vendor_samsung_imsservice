.class public Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;
.super Ljava/lang/Object;
.source "DeviceMsgAppFetchUriParam.java"


# instance fields
.field public mAppType:Ljava/lang/String;

.field public mBufferRowId:J

.field public mImsPartId:J

.field public mTableindex:I

.field public mTelephonyRowId:J


# direct methods
.method public constructor <init>(IJJJLjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    .line 12
    iput-wide p2, p0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mBufferRowId:J

    .line 13
    iput-wide p4, p0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTelephonyRowId:J

    .line 14
    iput-wide p6, p0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mImsPartId:J

    .line 15
    iput-object p8, p0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mAppType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceMsgAppFetchUpdateParam [mTableindex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTableindex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBufferRowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mBufferRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTelephonyRowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mTelephonyRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mImsPartId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mImsPartId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", appType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUriParam;->mAppType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
