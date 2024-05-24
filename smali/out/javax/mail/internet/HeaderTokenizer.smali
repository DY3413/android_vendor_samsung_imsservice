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
    .registers 3

    .line 153
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 182
    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const-string p1, ""

    .line 168
    :cond_7
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
    .registers 9

    .line 359
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_8
    if-lt p1, p2, :cond_f

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 365
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1b

    if-eqz v2, :cond_1b

    :goto_19
    move v2, v1

    goto :goto_34

    :cond_1b
    if-nez v3, :cond_2f

    const/16 v2, 0x5c

    const/4 v5, 0x1

    if-ne v4, v2, :cond_25

    move v2, v1

    move v3, v5

    goto :goto_34

    :cond_25
    const/16 v2, 0xd

    if-ne v4, v2, :cond_2b

    move v2, v5

    goto :goto_34

    .line 381
    :cond_2b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 386
    :cond_2f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    move v3, v2

    :goto_34
    add-int/lit8 p1, p1, 0x1

    goto :goto_8
.end method

.method private getNext()Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 247
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_9

    .line 248
    sget-object p0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p0

    .line 251
    :cond_9
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_13

    .line 252
    sget-object p0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p0

    .line 258
    :cond_13
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    const/16 v4, 0xd

    const/16 v5, 0x5c

    const/16 v6, 0x28

    const/4 v7, 0x1

    if-eq v0, v6, :cond_d0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_74

    .line 303
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v0, v7

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_2f
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v6, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v2, v6, :cond_6c

    .line 304
    iget-object v6, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_44

    .line 306
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v2, v7

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_42
    move v3, v7

    goto :goto_66

    :cond_44
    if-ne v2, v4, :cond_47

    goto :goto_42

    :cond_47
    if-ne v2, v1, :cond_66

    .line 311
    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v1, v7

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    if-eqz v3, :cond_58

    .line 315
    iget-object p0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    sub-int/2addr v1, v7

    invoke-static {p0, v0, v1}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5f

    .line 317
    :cond_58
    iget-object p0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    sub-int/2addr v1, v7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 319
    :goto_5f
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 303
    :cond_66
    :goto_66
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v2, v7

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_2f

    .line 322
    :cond_6c
    new-instance p0, Ljavax/mail/internet/ParseException;

    const-string v0, "Unbalanced quoted string"

    invoke-direct {p0, v0}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_74
    const/16 v3, 0x20

    if-lt v0, v3, :cond_bc

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_bc

    .line 326
    iget-object v5, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_85

    goto :goto_bc

    .line 334
    :cond_85
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_87
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v2, v5, :cond_8e

    goto :goto_ad

    .line 335
    :cond_8e
    iget-object v5, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_ad

    if-ge v2, v4, :cond_ad

    if-eq v2, v6, :cond_ad

    if-eq v2, v3, :cond_ad

    if-eq v2, v1, :cond_ad

    .line 339
    iget-object v5, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_a7

    goto :goto_ad

    .line 334
    :cond_a7
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v2, v7

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_87

    .line 342
    :cond_ad
    :goto_ad
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;

    iget-object v2, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-direct {v1, v0, p0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 327
    :cond_bc
    :goto_bc
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
    :cond_d0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v0, v7

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    move v8, v7

    :goto_d6
    if-lez v8, :cond_102

    .line 266
    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v10, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v9, v10, :cond_df

    goto :goto_102

    .line 268
    :cond_df
    iget-object v10, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_ee

    .line 270
    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v3, v7

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_ec
    move v3, v7

    goto :goto_fc

    :cond_ee
    if-ne v9, v4, :cond_f1

    goto :goto_ec

    :cond_f1
    if-ne v9, v6, :cond_f6

    add-int/lit8 v8, v8, 0x1

    goto :goto_fc

    :cond_f6
    const/16 v10, 0x29

    if-ne v9, v10, :cond_fc

    add-int/lit8 v8, v8, -0x1

    .line 267
    :cond_fc
    :goto_fc
    iget v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v9, v7

    iput v9, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_d6

    :cond_102
    :goto_102
    if-nez v8, :cond_137

    .line 282
    iget-boolean v4, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v4, :cond_124

    if-eqz v3, :cond_114

    .line 287
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr p0, v7

    invoke-static {v1, v0, p0}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_11d

    .line 289
    :cond_114
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr p0, v7

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 291
    :goto_11d
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x3

    invoke-direct {v0, v1, p0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 295
    :cond_124
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    if-ne v0, v1, :cond_12d

    .line 296
    sget-object p0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p0

    .line 297
    :cond_12d
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_1d

    .line 280
    :cond_137
    new-instance p0, Ljavax/mail/internet/ParseException;

    const-string v0, "Unbalanced comments"

    invoke-direct {p0, v0}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private skipWhiteSpace()I
    .registers 3

    .line 348
    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_8

    const/4 p0, -0x4

    return p0

    .line 349
    :cond_8
    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_21

    const/16 v1, 0x9

    if-eq v0, v1, :cond_21

    const/16 v1, 0xd

    if-eq v0, v1, :cond_21

    const/16 v1, 0xa

    if-eq v0, v1, :cond_21

    .line 351
    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    return p0

    .line 348
    :cond_21
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .registers 2

    .line 237
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget p0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .registers 3
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
