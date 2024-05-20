.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 153
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 182
    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 168
    :cond_0
    iput-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    .line 169
    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    .line 170
    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    const/4 p2, 0x0

    .line 171
    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    return-void
.end method

.method private static filterToken(Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt p1, p2, :cond_0

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_1
    if-nez v3, :cond_4

    const/16 v2, 0x5c

    if-ne v4, v2, :cond_2

    move v2, v1

    move v3, v6

    goto :goto_2

    :cond_2
    const/16 v2, 0xd

    if-ne v4, v2, :cond_3

    move v2, v6

    goto :goto_2

    .line 381
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 386
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    move v3, v2

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private getNext()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 247
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    .line 248
    sget-object p0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p0

    .line 251
    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 252
    sget-object p0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p0

    .line 258
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0xd

    const/16 v5, 0x5c

    const/16 v6, 0x28

    const/4 v7, 0x1

    if-eq v0, v6, :cond_d

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    .line 303
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v0, v7

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_1
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v2, v6, :cond_6

    .line 304
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    .line 306
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v2, v7

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_2
    move v3, v7

    goto :goto_4

    :cond_2
    if-ne v2, v4, :cond_3

    goto :goto_2

    :cond_3
    if-ne v2, v1, :cond_5

    .line 311
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v1, v7

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    if-eqz v3, :cond_4

    .line 315
    iget-object p0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    sub-int/2addr v1, v7

    invoke-static {p0, v0, v1}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 317
    :cond_4
    iget-object p0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    sub-int/2addr v1, v7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 319
    :goto_3
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 303
    :cond_5
    :goto_4
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v2, v7

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_1

    .line 322
    :cond_6
    new-instance p0, Ljavax/mail/internet/ParseException;

    const-string v0, "Unbalanced quoted string"

    invoke-direct {p0, v0}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/16 v3, 0x20

    if-lt v0, v3, :cond_c

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_c

    .line 326
    iget-object v5, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_8

    goto :goto_7

    .line 334
    :cond_8
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_5
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v2, v5, :cond_9

    goto :goto_6

    .line 335
    :cond_9
    iget-object v5, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_b

    if-ge v2, v4, :cond_b

    if-eq v2, v6, :cond_b

    if-eq v2, v3, :cond_b

    if-eq v2, v1, :cond_b

    .line 339
    iget-object v5, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_a

    goto :goto_6

    .line 334
    :cond_a
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v2, v7

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_5

    .line 342
    :cond_b
    :goto_6
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    iget-object v2, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-direct {v1, v0, p0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 327
    :cond_c
    :goto_7
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v1, v7

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    new-array p0, v7, [C

    aput-char v0, p0, v2

    .line 330
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v0, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 265
    :cond_d
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v0, v7

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    move v8, v7

    :goto_8
    if-lez v8, :cond_13

    .line 266
    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v10, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v9, v10, :cond_e

    goto :goto_b

    .line 268
    :cond_e
    iget-object v10, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_f

    .line 270
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v3, v7

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_9
    move v3, v7

    goto :goto_a

    :cond_f
    if-ne v9, v4, :cond_10

    goto :goto_9

    :cond_10
    if-ne v9, v6, :cond_11

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    const/16 v10, 0x29

    if-ne v9, v10, :cond_12

    add-int/lit8 v8, v8, -0x1

    .line 267
    :cond_12
    :goto_a
    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v9, v7

    iput v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_8

    :cond_13
    :goto_b
    if-nez v8, :cond_17

    .line 282
    iget-boolean v4, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v4, :cond_15

    if-eqz v3, :cond_14

    .line 287
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr p0, v7

    invoke-static {v1, v0, p0}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    .line 289
    :cond_14
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr p0, v7

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 291
    :goto_c
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x3

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 295
    :cond_15
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    if-ne v0, v1, :cond_16

    .line 296
    sget-object p0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p0

    .line 297
    :cond_16
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_0

    .line 280
    :cond_17
    new-instance p0, Ljavax/mail/internet/ParseException;

    const-string v0, "Unbalanced comments"

    invoke-direct {p0, v0}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private skipWhiteSpace()I
    .locals 2

    .line 348
    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    const/4 p0, -0x4

    return p0

    .line 349
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 351
    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    return p0

    .line 348
    :cond_1
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 206
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    .line 207
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    .line 208
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    return-object v0
.end method
