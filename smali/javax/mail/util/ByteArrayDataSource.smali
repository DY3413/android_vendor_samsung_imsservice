.class public Ljavax/mail/util/ByteArrayDataSource;
.super Ljava/lang/Object;
.source "ByteArrayDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field private data:[B

.field private len:I

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    const-string v0, ""

    .line 61
    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 115
    iput-object p2, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 178
    iget-object p0, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    if-eqz v0, :cond_1

    .line 156
    iget v1, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    if-gez v1, :cond_0

    .line 157
    array-length v0, v0

    iput v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    .line 158
    :cond_0
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    const/4 v2, 0x0

    iget p0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    invoke-direct {v0, v1, v2, p0}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([BII)V

    return-object v0

    .line 155
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "no data"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
