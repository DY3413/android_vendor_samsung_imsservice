.class public final Lcom/squareup/okhttp/internal/framed/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private persistValue:I

.field private persisted:I

.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 82
    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->values:[I

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persisted:I

    iput v0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persistValue:I

    iput v0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->set:I

    .line 86
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->values:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method flags(I)I
    .locals 1

    .line 125
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/framed/Settings;->isPersisted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/framed/Settings;->persistValue(I)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method get(I)I
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->values:[I

    aget p0, p0, p1

    return p0
.end method

.method getHeaderTableSize()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->values:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method getInitialWindowSize(I)I
    .locals 1

    .line 198
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->set:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x7

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getMaxConcurrentStreams(I)I
    .locals 1

    .line 169
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x4

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method getMaxFrameSize(I)I
    .locals 1

    .line 181
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->values:[I

    const/4 p1, 0x5

    aget p1, p0, p1

    :cond_0
    return p1
.end method

.method isPersisted(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 226
    iget p0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persisted:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSet(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 114
    iget p0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->set:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method merge(Lcom/squareup/okhttp/internal/framed/Settings;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 235
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/Settings;->flags(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/Settings;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/framed/Settings;->set(III)Lcom/squareup/okhttp/internal/framed/Settings;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method persistValue(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 220
    iget p0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persistValue:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method set(III)Lcom/squareup/okhttp/internal/framed/Settings;
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->values:[I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    .line 95
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/Settings;->set:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/squareup/okhttp/internal/framed/Settings;->set:I

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 97
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persistValue:I

    or-int/2addr v2, v1

    iput v2, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persistValue:I

    goto :goto_0

    .line 99
    :cond_1
    iget v2, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persistValue:I

    not-int v3, v1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persistValue:I

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 102
    iget p2, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persisted:I

    or-int/2addr p2, v1

    iput p2, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persisted:I

    goto :goto_1

    .line 104
    :cond_2
    iget p2, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persisted:I

    not-int v1, v1

    and-int/2addr p2, v1

    iput p2, p0, Lcom/squareup/okhttp/internal/framed/Settings;->persisted:I

    .line 107
    :goto_1
    aput p3, v0, p1

    return-object p0
.end method

.method size()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/squareup/okhttp/internal/framed/Settings;->set:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method
