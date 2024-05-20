.class public Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
.super Ljava/lang/Object;
.source "GbaHttpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LastAuthInfo"
.end annotation


# instance fields
.field public LifeTime:Ljava/lang/String;

.field public btid:Ljava/lang/String;

.field public digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

.field public etag:Ljava/lang/String;

.field public gbaKey:Ljava/lang/String;

.field public lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

.field public nextNonce:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 64
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->etag:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    return-void
.end method
