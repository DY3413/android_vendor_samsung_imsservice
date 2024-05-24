.class public Ljavax/mail/internet/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# instance fields
.field private list:Ljavax/mail/internet/ParameterList;

.field private primaryType:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_52

    .line 97
    invoke-virtual {p1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 100
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result p1

    int-to-char p1, p1

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_4c

    .line 105
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v1

    if-ne v1, v2, :cond_46

    .line 108
    invoke-virtual {p1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 111
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->getRemainder()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 113
    new-instance v0, Ljavax/mail/internet/ParameterList;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ParameterList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    :cond_45
    return-void

    .line 107
    :cond_46
    new-instance p0, Ljavax/mail/internet/ParseException;

    invoke-direct {p0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw p0

    .line 102
    :cond_4c
    new-instance p0, Ljavax/mail/internet/ParseException;

    invoke-direct {p0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw p0

    .line 96
    :cond_52
    new-instance p0, Ljavax/mail/internet/ParseException;

    invoke-direct {p0}, Ljavax/mail/internet/ParseException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    return-void
.end method


# virtual methods
.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 149
    iget-object p0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_6
    invoke-virtual {p0, p1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryType()Ljava/lang/String;
    .registers 1

    .line 121
    iget-object p0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    return-object p0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 1

    .line 129
    iget-object p0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    return-object p0
.end method

.method public match(Ljava/lang/String;)Z
    .registers 3

    .line 279
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ContentType;->match(Ljavax/mail/internet/ContentType;)Z

    move-result p0
    :try_end_9
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    const/4 p0, 0x0

    return p0
.end method

.method public match(Ljavax/mail/internet/ContentType;)Z
    .registers 6

    .line 245
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 248
    :cond_e
    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->getSubType()Ljava/lang/String;

    move-result-object p1

    .line 251
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_2d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_24

    goto :goto_2d

    .line 255
    :cond_24
    iget-object p0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2d

    return v1

    :cond_2d
    :goto_2d
    return v2
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 189
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_b

    .line 190
    new-instance v0, Ljavax/mail/internet/ParameterList;

    invoke-direct {v0}, Ljavax/mail/internet/ParameterList;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 192
    :cond_b
    iget-object p0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 211
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_33

    .line 214
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    iget-object v1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget-object p0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-eqz p0, :cond_2e

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    invoke-virtual {p0, v1}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return-object p0
.end method
