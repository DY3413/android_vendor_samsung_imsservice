.class final Lcom/squareup/okhttp/RequestBody$2;
.super Lcom/squareup/okhttp/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[BII)Lcom/squareup/okhttp/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lcom/squareup/okhttp/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/MediaType;I[BI)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/squareup/okhttp/RequestBody$2;->val$contentType:Lcom/squareup/okhttp/MediaType;

    iput p2, p0, Lcom/squareup/okhttp/RequestBody$2;->val$byteCount:I

    iput-object p3, p0, Lcom/squareup/okhttp/RequestBody$2;->val$content:[B

    iput p4, p0, Lcom/squareup/okhttp/RequestBody$2;->val$offset:I

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 92
    iget p0, p0, Lcom/squareup/okhttp/RequestBody$2;->val$byteCount:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/squareup/okhttp/RequestBody$2;->val$contentType:Lcom/squareup/okhttp/MediaType;

    return-object p0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/RequestBody$2;->val$content:[B

    iget v1, p0, Lcom/squareup/okhttp/RequestBody$2;->val$offset:I

    iget p0, p0, Lcom/squareup/okhttp/RequestBody$2;->val$byteCount:I

    invoke-interface {p1, v0, v1, p0}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    return-void
.end method