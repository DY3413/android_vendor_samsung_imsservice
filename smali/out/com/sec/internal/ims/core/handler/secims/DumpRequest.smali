.class Lcom/sec/internal/ims/core/handler/secims/DumpRequest;
.super Ljava/lang/Object;
.source "StackIF.java"


# instance fields
.field private final mTag:Ljava/lang/String;

.field private final mTimeStamp:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mTag:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mValue:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mTimeStamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->checkLogEnable()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->mValue:Ljava/lang/String;

    goto :goto_24

    :cond_22
    const-string p0, "***"

    :goto_24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
