.class Ljavax/mail/internet/MailDateParser;
.super Ljava/lang/Object;
.source "MailDateFormat.java"


# instance fields
.field index:I

.field orig:[C


# direct methods
.method public constructor <init>([C)V
    .registers 3

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
    .registers 1

    .line 900
    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return p0
.end method

.method public parseAlphaTimeZone()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "Bad Alpha TimeZone"

    .line 825
    :try_start_2
    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v2, v1, v2

    const/16 v4, 0x74

    const/16 v5, 0x54

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_ae

    .line 872
    new-instance v1, Ljava/text/ParseException;

    goto/16 :goto_9f

    :sswitch_19
    add-int/lit8 v2, v3, 0x1

    .line 828
    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v2, v1, v3

    if-eq v2, v5, :cond_2c

    if-ne v2, v4, :cond_24

    goto :goto_2c

    .line 833
    :cond_24
    new-instance v1, Ljava/text/ParseException;

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2c
    :goto_2c
    move v6, v7

    goto :goto_5a

    :sswitch_2e
    const/16 v7, 0x1e0

    goto :goto_5a

    :sswitch_31
    const/16 v7, 0x1a4

    goto :goto_5a

    :sswitch_34
    add-int/lit8 v2, v3, 0x1

    .line 837
    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    const/16 v6, 0x4d

    if-eq v3, v6, :cond_42

    const/16 v6, 0x6d

    if-ne v3, v6, :cond_4d

    :cond_42
    add-int/lit8 v3, v2, 0x1

    .line 839
    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v2, v1, v2

    if-eq v2, v5, :cond_2c

    if-ne v2, v4, :cond_4d

    goto :goto_2c

    .line 845
    :cond_4d
    new-instance v1, Ljava/text/ParseException;

    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_55
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_55} :catch_a5

    :sswitch_55
    const/16 v7, 0x12c

    goto :goto_5a

    :sswitch_58
    const/16 v7, 0x168

    :goto_5a
    if-eqz v6, :cond_9e

    .line 879
    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v2, v1, v2

    const/16 v6, 0x53

    if-eq v2, v6, :cond_8b

    const/16 v6, 0x73

    if-ne v2, v6, :cond_6d

    goto :goto_8b

    :cond_6d
    const/16 v6, 0x44

    if-eq v2, v6, :cond_75

    const/16 v6, 0x64

    if-ne v2, v6, :cond_9e

    :cond_75
    add-int/lit8 v2, v3, 0x1

    .line 886
    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v3

    if-eq v1, v5, :cond_88

    if-eq v1, v4, :cond_80

    goto :goto_88

    .line 891
    :cond_80
    new-instance v1, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_88
    :goto_88
    add-int/lit8 v7, v7, -0x3c

    goto :goto_9e

    :cond_8b
    :goto_8b
    add-int/lit8 v2, v3, 0x1

    .line 881
    iput v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v3

    if-eq v1, v5, :cond_9e

    if-ne v1, v4, :cond_96

    goto :goto_9e

    .line 883
    :cond_96
    new-instance v1, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_9e
    :goto_9e
    return v7

    .line 872
    :goto_9f
    :try_start_9f
    iget v2, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_a5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9f .. :try_end_a5} :catch_a5

    .line 875
    :catch_a5
    new-instance v1, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    nop

    :sswitch_data_ae
    .sparse-switch
        0x43 -> :sswitch_58
        0x45 -> :sswitch_55
        0x47 -> :sswitch_34
        0x4d -> :sswitch_31
        0x50 -> :sswitch_2e
        0x55 -> :sswitch_19
        0x63 -> :sswitch_58
        0x65 -> :sswitch_55
        0x67 -> :sswitch_34
        0x6d -> :sswitch_31
        0x70 -> :sswitch_2e
        0x75 -> :sswitch_19
    .end sparse-switch
.end method

.method public parseMonth()I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 653
    :try_start_2
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

    if-eq v2, v10, :cond_128

    const/16 v11, 0x44

    const/16 v12, 0x63

    const/16 v13, 0x43

    const/16 v14, 0x65

    const/16 v15, 0x45

    if-eq v2, v11, :cond_111

    const/16 v11, 0x46

    if-eq v2, v11, :cond_f7

    const/16 v11, 0x4a

    const/16 v7, 0x61

    if-eq v2, v11, :cond_c0

    const/16 v11, 0x53

    if-eq v2, v11, :cond_a9

    if-eq v2, v7, :cond_128

    const/16 v11, 0x64

    if-eq v2, v11, :cond_111

    const/16 v11, 0x66

    if-eq v2, v11, :cond_f7

    const/16 v11, 0x6a

    if-eq v2, v11, :cond_c0

    const/16 v8, 0x73

    if-eq v2, v8, :cond_a9

    packed-switch v2, :pswitch_data_160

    packed-switch v2, :pswitch_data_16a

    goto/16 :goto_155

    :pswitch_4e
    add-int/lit8 v2, v3, 0x1

    .line 731
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v13, :cond_58

    if-ne v3, v12, :cond_155

    :cond_58
    add-int/lit8 v3, v2, 0x1

    .line 733
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x54

    if-eq v1, v2, :cond_66

    const/16 v2, 0x74

    if-ne v1, v2, :cond_155

    :cond_66
    const/16 v0, 0x9

    return v0

    :pswitch_69
    add-int/lit8 v2, v3, 0x1

    .line 742
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_77

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_155

    :cond_77
    add-int/lit8 v3, v2, 0x1

    .line 744
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x56

    if-eq v1, v2, :cond_85

    const/16 v2, 0x76

    if-ne v1, v2, :cond_155

    :cond_85
    const/16 v0, 0xa

    return v0

    :pswitch_88
    add-int/lit8 v2, v3, 0x1

    .line 691
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v10, :cond_92

    if-ne v3, v7, :cond_155

    :cond_92
    add-int/lit8 v3, v2, 0x1

    .line 693
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v5, :cond_a7

    if-ne v1, v4, :cond_9d

    goto :goto_a7

    :cond_9d
    const/16 v2, 0x59

    if-eq v1, v2, :cond_a5

    const/16 v2, 0x79

    if-ne v1, v2, :cond_155

    :cond_a5
    const/4 v0, 0x4

    return v0

    :cond_a7
    :goto_a7
    const/4 v0, 0x2

    return v0

    :cond_a9
    add-int/lit8 v2, v3, 0x1

    .line 720
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v15, :cond_b3

    if-ne v3, v14, :cond_155

    :cond_b3
    add-int/lit8 v3, v2, 0x1

    .line 722
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v9, :cond_bd

    if-ne v1, v6, :cond_155

    :cond_bd
    const/16 v0, 0x8

    return v0

    :cond_c0
    add-int/lit8 v2, v3, 0x1

    .line 657
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    const/16 v4, 0x6e

    const/16 v5, 0x4e

    if-eq v3, v10, :cond_eb

    if-eq v3, v8, :cond_d4

    if-eq v3, v7, :cond_eb

    const/16 v6, 0x75

    if-ne v3, v6, :cond_155

    :cond_d4
    add-int/lit8 v3, v2, 0x1

    .line 668
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v5, :cond_e9

    if-ne v1, v4, :cond_df

    goto :goto_e9

    :cond_df
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_e7

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_155

    :cond_e7
    const/4 v0, 0x6

    return v0

    :cond_e9
    :goto_e9
    const/4 v0, 0x5

    return v0

    :cond_eb
    add-int/lit8 v3, v2, 0x1

    .line 660
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v5, :cond_f5

    if-ne v1, v4, :cond_155

    :cond_f5
    const/4 v0, 0x0

    return v0

    :cond_f7
    add-int/lit8 v2, v3, 0x1

    .line 680
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v15, :cond_101

    if-ne v3, v14, :cond_155

    :cond_101
    add-int/lit8 v3, v2, 0x1

    .line 682
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x42

    if-eq v1, v2, :cond_10f

    const/16 v2, 0x62

    if-ne v1, v2, :cond_155

    :cond_10f
    const/4 v0, 0x1

    return v0

    :cond_111
    add-int/lit8 v2, v3, 0x1

    .line 753
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v15, :cond_11b

    if-ne v3, v14, :cond_155

    :cond_11b
    add-int/lit8 v3, v2, 0x1

    .line 755
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    if-eq v1, v13, :cond_125

    if-ne v1, v12, :cond_155

    :cond_125
    const/16 v0, 0xb

    return v0

    :cond_128
    add-int/lit8 v2, v3, 0x1

    .line 704
    iput v2, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v3, v1, v3

    if-eq v3, v9, :cond_149

    if-ne v3, v6, :cond_133

    goto :goto_149

    :cond_133
    if-eq v3, v8, :cond_139

    const/16 v4, 0x75

    if-ne v3, v4, :cond_155

    :cond_139
    add-int/lit8 v3, v2, 0x1

    .line 711
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x47

    if-eq v1, v2, :cond_147

    const/16 v2, 0x67

    if-ne v1, v2, :cond_155

    :cond_147
    const/4 v0, 0x7

    return v0

    :cond_149
    :goto_149
    add-int/lit8 v3, v2, 0x1

    .line 706
    iput v3, v0, Ljavax/mail/internet/MailDateParser;->index:I

    aget-char v1, v1, v2
    :try_end_14f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_14f} :catch_155

    if-eq v1, v5, :cond_153

    if-ne v1, v4, :cond_155

    :cond_153
    const/4 v0, 0x3

    return v0

    .line 765
    :catch_155
    :cond_155
    :goto_155
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Bad Month"

    iget v0, v0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    nop

    :pswitch_data_160
    .packed-switch 0x4d
        :pswitch_88
        :pswitch_69
        :pswitch_4e
    .end packed-switch

    :pswitch_data_16a
    .packed-switch 0x6d
        :pswitch_88
        :pswitch_69
        :pswitch_4e
    .end packed-switch
.end method

.method public parseNumber()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    .line 573
    :goto_5
    iget v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    const-string v4, "No Number found"

    if-lt v3, v0, :cond_16

    if-eqz v1, :cond_e

    return v2

    .line 640
    :cond_e
    new-instance v0, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v4, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 574
    :cond_16
    iget-object v5, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    aget-char v5, v5, v3

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_5e

    if-eqz v1, :cond_55

    return v2

    :pswitch_21
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x9

    goto :goto_4f

    :pswitch_26
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x8

    goto :goto_4f

    :pswitch_2b
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x7

    goto :goto_4f

    :pswitch_30
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x6

    goto :goto_4f

    :pswitch_35
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x5

    goto :goto_4f

    :pswitch_3a
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x4

    goto :goto_4f

    :pswitch_3f
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x3

    goto :goto_4f

    :pswitch_44
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x2

    goto :goto_4f

    :pswitch_49
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    goto :goto_4f

    :pswitch_4d
    mul-int/lit8 v2, v2, 0xa

    :goto_4f
    add-int/lit8 v3, v3, 0x1

    .line 632
    iput v3, p0, Ljavax/mail/internet/MailDateParser;->index:I

    move v1, v6

    goto :goto_5

    .line 629
    :cond_55
    new-instance v0, Ljava/text/ParseException;

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v4, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    :pswitch_data_5e
    .packed-switch 0x30
        :pswitch_4d
        :pswitch_49
        :pswitch_44
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_26
        :pswitch_21
    .end packed-switch
.end method

.method public parseNumericTimeZone()I
    .registers 4
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

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_15

    :cond_10
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_25

    const/4 v0, 0x0

    .line 805
    :goto_15
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result p0

    .line 806
    div-int/lit8 v1, p0, 0x64

    mul-int/lit8 v1, v1, 0x3c

    rem-int/lit8 p0, p0, 0x64

    add-int/2addr v1, p0

    if-eqz v0, :cond_24

    neg-int p0, v1

    return p0

    :cond_24
    return v1

    .line 802
    :cond_25
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Bad Numeric TimeZone"

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public parseTimeZone()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 774
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 777
    aget-char v0, v1, v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_17

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_12

    goto :goto_17

    .line 781
    :cond_12
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseAlphaTimeZone()I

    move-result p0

    return p0

    .line 779
    :cond_17
    :goto_17
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateParser;->parseNumericTimeZone()I

    move-result p0

    return p0

    .line 775
    :cond_1c
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No more characters"

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public skipChar(C)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 534
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    .line 535
    aget-char v1, v1, v0

    if-ne v1, p1, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 536
    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return-void

    .line 538
    :cond_10
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "Wrong char"

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 541
    :cond_1a
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "No more characters"

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public skipIfChar(C)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 550
    iget v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    iget-object v1, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 551
    aget-char v1, v1, v0

    if-ne v1, p1, :cond_10

    const/4 p1, 0x1

    add-int/2addr v0, p1

    .line 552
    iput v0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    return p1

    :cond_10
    const/4 p0, 0x0

    return p0

    .line 558
    :cond_12
    new-instance p1, Ljava/text/ParseException;

    const-string v0, "No more characters"

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public skipUntilNumber()V
    .registers 3
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

    packed-switch v0, :pswitch_data_1a

    goto :goto_b

    :pswitch_a
    return-void

    :goto_b
    add-int/lit8 v1, v1, 0x1

    .line 488
    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I
    :try_end_f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_0

    .line 493
    :catch_10
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "No Number Found"

    iget p0, p0, Ljavax/mail/internet/MailDateParser;->index:I

    invoke-direct {v0, v1, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :pswitch_data_1a
    .packed-switch 0x30
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public skipWhiteSpace()V
    .registers 5

    .line 501
    iget-object v0, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    array-length v0, v0

    .line 502
    :goto_3
    iget v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    if-lt v1, v0, :cond_8

    return-void

    .line 503
    :cond_8
    iget-object v2, p0, Ljavax/mail/internet/MailDateParser;->orig:[C

    aget-char v2, v2, v1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1d

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1d

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1d

    return-void

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    .line 508
    iput v1, p0, Ljavax/mail/internet/MailDateParser;->index:I

    goto :goto_3
.end method
