.class Ljavax/mail/internet/MailDateParser;
.super Ljava/lang/Object;
.source "MailDateFormat.java"


# instance fields
.field index:I

.field orig:[C


# direct methods
.method public constructor <init>([C)V
    .locals 1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 458
    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    .line 462
    iput-object p1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    return-void
.end method


# virtual methods
.method getIndex()I
    .locals 0

    .line 900
    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return p0
.end method

.method public parseAlphaTimeZone()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "Bad Alpha TimeZone"

    .line 825
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v2, v1, v2

    const/4 v4, 0x0

    const/16 v5, 0x74

    const/16 v6, 0x54

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 872
    new-instance v1, Ljava/text/ParseException;

    goto/16 :goto_6

    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    .line 828
    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v2, v1, v3

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    :goto_0
    move v2, v4

    goto :goto_2

    :sswitch_1
    const/16 v4, 0x1e0

    goto :goto_1

    :sswitch_2
    const/16 v4, 0x1a4

    goto :goto_1

    :sswitch_3
    add-int/lit8 v2, v3, 0x1

    .line 837
    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    const/16 v7, 0x4d

    if-eq v3, v7, :cond_2

    const/16 v7, 0x6d

    if-ne v3, v7, :cond_3

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 839
    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v2, v1, v2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_3

    goto :goto_0

    .line 845
    :cond_3
    new-instance v1, Ljava/text/ParseException;

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :sswitch_4
    const/16 v4, 0x12c

    goto :goto_1

    :sswitch_5
    const/16 v4, 0x168

    :goto_1
    move v2, v4

    move v4, v7

    :goto_2
    if-eqz v4, :cond_a

    .line 879
    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    const/16 v7, 0x53

    if-eq v3, v7, :cond_8

    const/16 v7, 0x73

    if-ne v3, v7, :cond_4

    goto :goto_4

    :cond_4
    const/16 v7, 0x44

    if-eq v3, v7, :cond_5

    const/16 v7, 0x64

    if-ne v3, v7, :cond_a

    :cond_5
    add-int/lit8 v3, v4, 0x1

    .line 886
    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v4

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    goto :goto_3

    .line 891
    :cond_6
    new-instance v1, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, -0x3c

    goto :goto_5

    :cond_8
    :goto_4
    add-int/lit8 v3, v4, 0x1

    .line 881
    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v4

    if-eq v1, v6, :cond_a

    if-ne v1, v5, :cond_9

    goto :goto_5

    .line 883
    :cond_9
    new-instance v1, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_a
    :goto_5
    return v2

    .line 872
    :goto_6
    :try_start_1
    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 875
    :catch_0
    new-instance v1, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_5
        0x45 -> :sswitch_4
        0x47 -> :sswitch_3
        0x4d -> :sswitch_2
        0x50 -> :sswitch_1
        0x55 -> :sswitch_0
        0x63 -> :sswitch_5
        0x65 -> :sswitch_4
        0x67 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseMonth()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 653
    :try_start_0
    iget-object v1, v0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v2, v1, v2

    const/16 v4, 0x72

    const/16 v5, 0x52

    const/16 v6, 0x70

    const/16 v8, 0x55

    const/16 v9, 0x50

    const/16 v10, 0x41

    if-eq v2, v10, :cond_18

    const/16 v11, 0x44

    const/16 v12, 0x63

    const/16 v13, 0x43

    const/16 v14, 0x65

    const/16 v15, 0x45

    if-eq v2, v11, :cond_15

    const/16 v11, 0x46

    if-eq v2, v11, :cond_12

    const/16 v11, 0x4a

    const/16 v7, 0x61

    if-eq v2, v11, :cond_b

    const/16 v11, 0x53

    if-eq v2, v11, :cond_8

    if-eq v2, v7, :cond_18

    const/16 v11, 0x64

    if-eq v2, v11, :cond_15

    const/16 v11, 0x66

    if-eq v2, v11, :cond_12

    const/16 v11, 0x6a

    if-eq v2, v11, :cond_b

    const/16 v8, 0x73

    if-eq v2, v8, :cond_8

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    .line 731
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v13, :cond_0

    if-ne v3, v12, :cond_1e

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .line 733
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x54

    if-eq v1, v2, :cond_1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_1e

    :cond_1
    const/16 v0, 0x9

    return v0

    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    .line 742
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_1e

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 744
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x56

    if-eq v1, v2, :cond_3

    const/16 v2, 0x76

    if-ne v1, v2, :cond_1e

    :cond_3
    const/16 v0, 0xa

    return v0

    :pswitch_2
    add-int/lit8 v2, v3, 0x1

    .line 691
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v10, :cond_4

    if-ne v3, v7, :cond_1e

    :cond_4
    add-int/lit8 v3, v2, 0x1

    .line 693
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v5, :cond_7

    if-ne v1, v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v2, 0x59

    if-eq v1, v2, :cond_6

    const/16 v2, 0x79

    if-ne v1, v2, :cond_1e

    :cond_6
    const/4 v0, 0x4

    return v0

    :cond_7
    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_8
    add-int/lit8 v2, v3, 0x1

    .line 720
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v15, :cond_9

    if-ne v3, v14, :cond_1e

    :cond_9
    add-int/lit8 v3, v2, 0x1

    .line 722
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v9, :cond_a

    if-ne v1, v6, :cond_1e

    :cond_a
    const/16 v0, 0x8

    return v0

    :cond_b
    add-int/lit8 v2, v3, 0x1

    .line 657
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    const/16 v4, 0x6e

    const/16 v5, 0x4e

    if-eq v3, v10, :cond_10

    if-eq v3, v8, :cond_c

    if-eq v3, v7, :cond_10

    const/16 v6, 0x75

    if-ne v3, v6, :cond_1e

    :cond_c
    add-int/lit8 v3, v2, 0x1

    .line 668
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v5, :cond_f

    if-ne v1, v4, :cond_d

    goto :goto_1

    :cond_d
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_e

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1e

    :cond_e
    const/4 v0, 0x6

    return v0

    :cond_f
    :goto_1
    const/4 v0, 0x5

    return v0

    :cond_10
    add-int/lit8 v3, v2, 0x1

    .line 660
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v5, :cond_11

    if-ne v1, v4, :cond_1e

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_12
    add-int/lit8 v2, v3, 0x1

    .line 680
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v15, :cond_13

    if-ne v3, v14, :cond_1e

    :cond_13
    add-int/lit8 v3, v2, 0x1

    .line 682
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x42

    if-eq v1, v2, :cond_14

    const/16 v2, 0x62

    if-ne v1, v2, :cond_1e

    :cond_14
    const/4 v0, 0x1

    return v0

    :cond_15
    add-int/lit8 v2, v3, 0x1

    .line 753
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v15, :cond_16

    if-ne v3, v14, :cond_1e

    :cond_16
    add-int/lit8 v3, v2, 0x1

    .line 755
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v13, :cond_17

    if-ne v1, v12, :cond_1e

    :cond_17
    const/16 v0, 0xb

    return v0

    :cond_18
    add-int/lit8 v2, v3, 0x1

    .line 704
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v9, :cond_1c

    if-ne v3, v6, :cond_19

    goto :goto_2

    :cond_19
    if-eq v3, v8, :cond_1a

    const/16 v4, 0x75

    if-ne v3, v4, :cond_1e

    :cond_1a
    add-int/lit8 v3, v2, 0x1

    .line 711
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x47

    if-eq v1, v2, :cond_1b

    const/16 v2, 0x67

    if-ne v1, v2, :cond_1e

    :cond_1b
    const/4 v0, 0x7

    return v0

    :cond_1c
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .line 706
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v5, :cond_1d

    if-ne v1, v4, :cond_1e

    :cond_1d
    const/4 v0, 0x3

    return v0

    .line 765
    :catch_0
    :cond_1e
    :goto_3
    new-instance v1, Ljava/text/ParseException;

    iget v0, v0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v2, "Bad Month"

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseNumber()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    .line 573
    :goto_0
    iget v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v5, "No Number found"

    if-lt v4, v0, :cond_1

    if-eqz v1, :cond_0

    return v3

    .line 640
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v5, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 574
    :cond_1
    iget-object v6, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    aget-char v6, v6, v4

    packed-switch v6, :pswitch_data_0

    if-eqz v1, :cond_2

    return v3

    :pswitch_0
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x9

    goto :goto_1

    :pswitch_1
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x8

    goto :goto_1

    :pswitch_2
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x7

    goto :goto_1

    :pswitch_3
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x6

    goto :goto_1

    :pswitch_4
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x5

    goto :goto_1

    :pswitch_5
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    :pswitch_6
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    :pswitch_7
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :pswitch_8
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    goto :goto_1

    :pswitch_9
    mul-int/lit8 v3, v3, 0xa

    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 632
    iput v4, p0, Ljavax/mail/internet/MailDateParser;->index:I

    move v1, v2

    goto :goto_0

    .line 629
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v5, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseNumericTimeZone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 798
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 805
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result p0

    .line 806
    div-int/lit8 v1, p0, 0x64

    mul-int/lit8 v1, v1, 0x3c

    rem-int/lit8 p0, p0, 0x64

    add-int/2addr v1, p0

    if-eqz v0, :cond_1

    neg-int p0, v1

    return p0

    :cond_1
    return v1

    .line 802
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v1, "Bad Numeric TimeZone"

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public parseTimeZone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 774
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 777
    aget-char v0, v1, v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseAlphaTimeZone()I

    move-result p0

    return p0

    .line 779
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumericTimeZone()I

    move-result p0

    return p0

    .line 775
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v1, "No more characters"

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipChar(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 534
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 535
    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 536
    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return-void

    .line 538
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v0, "Wrong char"

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 541
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v0, "No more characters"

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public skipIfChar(C)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 550
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 551
    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    add-int/2addr v0, p1

    .line 552
    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 558
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v0, "No more characters"

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public skipUntilNumber()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 474
    :goto_0
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 488
    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    new-instance v0, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v1, "No Number Found"

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public skipWhiteSpace()V
    .locals 4

    .line 501
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    .line 502
    :goto_0
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v1, v0, :cond_0

    return-void

    .line 503
    :cond_0
    iget-object v2, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    aget-char v2, v2, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 508
    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_0
.end method
