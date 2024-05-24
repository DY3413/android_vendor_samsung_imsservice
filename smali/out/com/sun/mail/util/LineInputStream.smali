.class public Lcom/sun/mail/util/LineInputStream;
.super Ljava/io/FilterInputStream;
.source "LineInputStream.java"


# instance fields
.field private lineBuffer:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 79
    iget-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    if-nez v1, :cond_c

    const/16 v1, 0x80

    new-array v1, v1, [C

    .line 82
    iput-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    .line 85
    :cond_c
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    .line 88
    :goto_f
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_17

    goto :goto_3d

    :cond_17
    const/16 v7, 0xa

    if-ne v5, v7, :cond_1c

    goto :goto_3d

    :cond_1c
    const/16 v8, 0xd

    if-ne v5, v8, :cond_48

    .line 93
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v8, :cond_2a

    .line 95
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    :cond_2a
    if-eq v2, v7, :cond_3d

    .line 98
    instance-of v7, v0, Ljava/io/PushbackInputStream;

    if-nez v7, :cond_38

    .line 99
    new-instance v7, Ljava/io/PushbackInputStream;

    invoke-direct {v7, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    move-object v0, v7

    .line 100
    :cond_38
    check-cast v0, Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_3d
    :goto_3d
    if-ne v5, v6, :cond_43

    if-nez v4, :cond_43

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_43
    invoke-static {v1, v3, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_48
    add-int/2addr v2, v6

    if-gez v2, :cond_5c

    add-int/lit16 v1, v4, 0x80

    .line 108
    new-array v2, v1, [C

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    .line 110
    iget-object v6, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    invoke-static {v6, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput-object v2, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[C

    move-object v9, v2

    move v2, v1

    move-object v1, v9

    :cond_5c
    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    .line 113
    aput-char v5, v1, v4

    move v4, v6

    goto :goto_f
.end method
