.class final Lmyjava/awt/datatransfer/MimeTypeProcessor;
.super Ljava/lang/Object;
.source "MimeTypeProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;,
        Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;
    }
.end annotation


# static fields
.field private static instance:Lmyjava/awt/datatransfer/MimeTypeProcessor;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assemble(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/lang/String;
    .registers 6

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->getFullType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 55
    :cond_1f
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "; "

    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=\""

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14
.end method

.method private static getNextMeaningfulIndex(Ljava/lang/String;I)I
    .registers 3

    .line 158
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_14

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isMeaningfulChar(C)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_14
    :goto_14
    return p1
.end method

.method private static isMeaningfulChar(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x21

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private static isTSpecialChar(C)Z
    .registers 2

    .line 0
    const/16 v0, 0x28

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x29

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x22

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_3e

    const/4 p0, 0x0

    return p0

    :cond_3e
    const/4 p0, 0x1

    return p0
.end method

.method static parse(Ljava/lang/String;)Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;
    .registers 4

    .line 35
    sget-object v0, Lmyjava/awt/datatransfer/MimeTypeProcessor;->instance:Lmyjava/awt/datatransfer/MimeTypeProcessor;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lmyjava/awt/datatransfer/MimeTypeProcessor;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;-><init>()V

    sput-object v0, Lmyjava/awt/datatransfer/MimeTypeProcessor;->instance:Lmyjava/awt/datatransfer/MimeTypeProcessor;

    .line 39
    :cond_b
    new-instance v0, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;-><init>()V

    if-eqz p0, :cond_1e

    .line 41
    new-instance v1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;-><init>(Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    .line 43
    invoke-static {p0, v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveType(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    .line 44
    invoke-static {p0, v0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveParams(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    :cond_1e
    return-object v0
.end method

.method private static retrieveParam(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V
    .registers 6

    .line 95
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v1

    iput v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_53

    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_53

    .line 101
    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 102
    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v1

    iput v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 108
    iget v1, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_41

    .line 109
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveQuoted(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    .line 111
    :cond_41
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object p0

    .line 113
    :goto_45
    invoke-static {p1}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$0(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 104
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 99
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static retrieveParams(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V
    .registers 5

    .line 79
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$3(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/util/Hashtable;)V

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$4(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/util/Hashtable;)V

    .line 82
    :goto_10
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1f

    return-void

    .line 86
    :cond_1f
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_33

    .line 89
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 90
    invoke-static {p0, p1, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveParam(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V

    goto :goto_10

    .line 87
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static retrieveQuoted(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;
    .registers 7

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    move v1, v2

    .line 121
    :goto_c
    iget v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_22

    if-eqz v1, :cond_22

    .line 136
    iget p0, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/2addr p0, v2

    iput p0, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 122
    :cond_22
    iget v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-nez v1, :cond_30

    move v1, v2

    goto :goto_35

    :cond_30
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_35

    const/4 v1, 0x0

    :cond_35
    :goto_35
    if-eqz v1, :cond_3a

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_3a
    iget v3, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_43

    goto :goto_c

    .line 133
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;
    .registers 5

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_51

    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isTSpecialChar(C)Z

    move-result v1

    if-nez v1, :cond_51

    .line 149
    :cond_1f
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 151
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isMeaningfulChar(C)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 152
    iget v1, p1, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->isTSpecialChar(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 154
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static retrieveType(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)V
    .registers 5

    .line 69
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$1(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/lang/String;)V

    .line 70
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->getNextMeaningfulIndex(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_35

    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_35

    .line 74
    iget v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;->i:I

    .line 75
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/MimeTypeProcessor;->retrieveToken(Ljava/lang/String;Lmyjava/awt/datatransfer/MimeTypeProcessor$StringPosition;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;->access$2(Lmyjava/awt/datatransfer/MimeTypeProcessor$MimeType;Ljava/lang/String;)V

    return-void

    .line 72
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
