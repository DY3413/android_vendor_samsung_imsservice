.class public Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;
.super Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;
.source "IshFileTransfer.java"


# instance fields
.field private mTransmittedBytes:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 22
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;-><init>()V

    const-string v0, "path can\'t be NULL"

    .line 23
    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 24
    :goto_d
    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkState(Z)V

    const-string v0, "mimeType can\'t be NULL"

    .line 25
    invoke-static {p3, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mTransmittedBytes:J

    .line 29
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mPath:Ljava/lang/String;

    int-to-long p1, p2

    .line 30
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mSize:J

    .line 31
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mSize:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IshFileTransfer [mTransmittedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->mTransmittedBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
