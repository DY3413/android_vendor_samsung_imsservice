.class public Lcom/sec/internal/omanetapi/nms/ObjectsOpPathToId;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "ObjectsOpPathToId.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/omanetapi/nms/ObjectsOpPathToId;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/ObjectsOpPathToId;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 25
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/ObjectsOpPathToId;->buildAPISpecificURLFromBase()V

    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "objects"

    .line 31
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "operations"

    .line 32
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "pathToId"

    .line 33
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mBaseUrl:Ljava/lang/String;

    .line 36
    sget-object p0, Lcom/sec/internal/omanetapi/nms/ObjectsOpPathToId;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
