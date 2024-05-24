.class public final Lokio/internal/_ByteStringKt;
.super Ljava/lang/Object;
.source "-ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-ByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -ByteString.kt\nokio/internal/_ByteStringKt\n+ 2 -Util.kt\nokio/_UtilKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,360:1\n129#1,2:366\n131#1,9:369\n66#2:361\n72#2:362\n72#2:364\n72#2:365\n66#2:393\n72#2:405\n1#3:363\n1#3:368\n212#4,7:378\n122#4:385\n219#4,5:386\n122#4:391\n226#4:392\n228#4:394\n396#4,2:395\n122#4:397\n399#4,6:398\n127#4:404\n405#4:406\n122#4:407\n406#4,13:408\n122#4:421\n421#4:422\n122#4:423\n424#4:424\n230#4,3:425\n439#4,3:428\n122#4:431\n442#4:432\n127#4:433\n445#4,10:434\n127#4:444\n455#4:445\n122#4:446\n456#4,4:447\n127#4:451\n460#4:452\n122#4:453\n461#4,14:454\n122#4:468\n476#4,2:469\n122#4:471\n480#4:472\n122#4:473\n483#4:474\n234#4,3:475\n499#4,3:478\n122#4:481\n502#4:482\n127#4:483\n505#4,2:484\n127#4:486\n509#4,10:487\n127#4:497\n519#4:498\n122#4:499\n520#4,4:500\n127#4:504\n524#4:505\n122#4:506\n525#4,4:507\n127#4:511\n529#4:512\n122#4:513\n530#4,15:514\n122#4:529\n546#4,2:530\n122#4:532\n549#4,2:533\n122#4:535\n553#4:536\n122#4:537\n556#4:538\n241#4:539\n122#4:540\n242#4,5:541\n*S KotlinDebug\n*F\n+ 1 -ByteString.kt\nokio/internal/_ByteStringKt\n*L\n326#1:366,2\n326#1:369,9\n65#1:361\n66#1:362\n256#1:364\n257#1:365\n345#1:393\n345#1:405\n326#1:368\n345#1:378,7\n350#1:385\n345#1:386,5\n350#1:391\n345#1:392\n345#1:394\n345#1:395,2\n350#1:397\n345#1:398,6\n345#1:404\n345#1:406\n350#1:407\n345#1:408,13\n350#1:421\n345#1:422\n350#1:423\n345#1:424\n345#1:425,3\n345#1:428,3\n350#1:431\n345#1:432\n345#1:433\n345#1:434,10\n345#1:444\n345#1:445\n350#1:446\n345#1:447,4\n345#1:451\n345#1:452\n350#1:453\n345#1:454,14\n350#1:468\n345#1:469,2\n350#1:471\n345#1:472\n350#1:473\n345#1:474\n345#1:475,3\n345#1:478,3\n350#1:481\n345#1:482\n345#1:483\n345#1:484,2\n345#1:486\n345#1:487,10\n345#1:497\n345#1:498\n350#1:499\n345#1:500,4\n345#1:504\n345#1:505\n350#1:506\n345#1:507,4\n345#1:511\n345#1:512\n350#1:513\n345#1:514,15\n350#1:529\n345#1:530,2\n350#1:532\n345#1:533,2\n350#1:535\n345#1:536\n350#1:537\n345#1:538\n345#1:539\n350#1:540\n345#1:541,5\n*E\n"
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 58
    fill-array-data v0, :array_a

    sput-object v0, Lokio/internal/_ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lokio/internal/_ByteStringKt;->codePointIndexToCharIndex([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .registers 1

    .line 1
    invoke-static {p0}, Lokio/internal/_ByteStringKt;->decodeHexDigit(C)I

    move-result p0

    return p0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 345
    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_8
    :goto_8
    if-ge v4, v2, :cond_22b

    .line 214
    aget-byte v7, v0, v4

    const/16 v8, 0x9f

    const/16 v9, 0x7f

    const/16 v10, 0x1f

    const/16 v11, 0xd

    const v12, 0xfffd

    const/16 v13, 0xa

    const/high16 v14, 0x10000

    const/16 v16, -0x1

    const/16 v17, 0x1

    if-ltz v7, :cond_8a

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_26

    return v5

    :cond_26
    if-eq v7, v13, :cond_45

    if-eq v7, v11, :cond_45

    if-ltz v7, :cond_31

    if-gt v7, v10, :cond_31

    move/from16 v6, v17

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    :goto_32
    if-nez v6, :cond_41

    if-gt v9, v7, :cond_3b

    if-gt v7, v8, :cond_3b

    move/from16 v6, v17

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    :goto_3c
    if-eqz v6, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v6, 0x0

    goto :goto_43

    :cond_41
    :goto_41
    move/from16 v6, v17

    :goto_43
    if-nez v6, :cond_47

    :cond_45
    if-ne v7, v12, :cond_48

    :cond_47
    return v16

    :cond_48
    if-ge v7, v14, :cond_4d

    move/from16 v6, v17

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x2

    :goto_4e
    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    :goto_51
    move/from16 v6, v18

    if-ge v4, v2, :cond_8

    .line 222
    aget-byte v7, v0, v4

    if-ltz v7, :cond_8

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v18, v6, 0x1

    if-ne v6, v1, :cond_60

    return v5

    :cond_60
    if-eq v7, v13, :cond_7f

    if-eq v7, v11, :cond_7f

    if-ltz v7, :cond_6b

    if-gt v7, v10, :cond_6b

    move/from16 v6, v17

    goto :goto_6c

    :cond_6b
    const/4 v6, 0x0

    :goto_6c
    if-nez v6, :cond_7b

    if-gt v9, v7, :cond_75

    if-gt v7, v8, :cond_75

    move/from16 v6, v17

    goto :goto_76

    :cond_75
    const/4 v6, 0x0

    :goto_76
    if-eqz v6, :cond_79

    goto :goto_7b

    :cond_79
    const/4 v6, 0x0

    goto :goto_7d

    :cond_7b
    :goto_7b
    move/from16 v6, v17

    :goto_7d
    if-nez v6, :cond_81

    :cond_7f
    if-ne v7, v12, :cond_82

    :cond_81
    return v16

    :cond_82
    if-ge v7, v14, :cond_87

    move/from16 v6, v17

    goto :goto_88

    :cond_87
    const/4 v6, 0x2

    :goto_88
    add-int/2addr v5, v6

    goto :goto_51

    :cond_8a
    shr-int/lit8 v3, v7, 0x5

    const/4 v15, -0x2

    const/16 v14, 0x80

    if-ne v3, v15, :cond_eb

    add-int/lit8 v3, v4, 0x1

    if-gt v2, v3, :cond_99

    if-ne v6, v1, :cond_98

    return v5

    :cond_98
    return v16

    .line 403
    :cond_99
    aget-byte v3, v0, v3

    and-int/lit16 v15, v3, 0xc0

    if-ne v15, v14, :cond_a2

    move/from16 v15, v17

    goto :goto_a3

    :cond_a2
    const/4 v15, 0x0

    :goto_a3
    if-nez v15, :cond_a9

    if-ne v6, v1, :cond_a8

    return v5

    :cond_a8
    return v16

    :cond_a9
    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v7, v7, 0x6

    xor-int/2addr v3, v7

    if-ge v3, v14, :cond_b4

    if-ne v6, v1, :cond_b3

    return v5

    :cond_b3
    return v16

    :cond_b4
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_b9

    return v5

    :cond_b9
    if-eq v3, v13, :cond_d8

    if-eq v3, v11, :cond_d8

    if-ltz v3, :cond_c4

    if-gt v3, v10, :cond_c4

    move/from16 v6, v17

    goto :goto_c5

    :cond_c4
    const/4 v6, 0x0

    :goto_c5
    if-nez v6, :cond_d4

    if-gt v9, v3, :cond_ce

    if-gt v3, v8, :cond_ce

    move/from16 v6, v17

    goto :goto_cf

    :cond_ce
    const/4 v6, 0x0

    :goto_cf
    if-eqz v6, :cond_d2

    goto :goto_d4

    :cond_d2
    const/4 v6, 0x0

    goto :goto_d6

    :cond_d4
    :goto_d4
    move/from16 v6, v17

    :goto_d6
    if-nez v6, :cond_da

    :cond_d8
    if-ne v3, v12, :cond_db

    :cond_da
    return v16

    :cond_db
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_e2

    move/from16 v15, v17

    goto :goto_e3

    :cond_e2
    const/4 v15, 0x2

    :goto_e3
    add-int/2addr v5, v15

    .line 357
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v4, v4, 0x2

    :goto_e8
    move v6, v7

    goto/16 :goto_8

    :cond_eb
    shr-int/lit8 v3, v7, 0x4

    const v12, 0xdfff

    const v8, 0xd800

    if-ne v3, v15, :cond_17c

    add-int/lit8 v3, v4, 0x2

    if-gt v2, v3, :cond_fd

    if-ne v6, v1, :cond_fc

    return v5

    :cond_fc
    return v16

    :cond_fd
    add-int/lit8 v15, v4, 0x1

    .line 453
    aget-byte v15, v0, v15

    and-int/lit16 v9, v15, 0xc0

    if-ne v9, v14, :cond_108

    move/from16 v9, v17

    goto :goto_109

    :cond_108
    const/4 v9, 0x0

    :goto_109
    if-nez v9, :cond_10f

    if-ne v6, v1, :cond_10e

    return v5

    :cond_10e
    return v16

    .line 458
    :cond_10f
    aget-byte v3, v0, v3

    and-int/lit16 v9, v3, 0xc0

    if-ne v9, v14, :cond_118

    move/from16 v9, v17

    goto :goto_119

    :cond_118
    const/4 v9, 0x0

    :goto_119
    if-nez v9, :cond_11f

    if-ne v6, v1, :cond_11e

    return v5

    :cond_11e
    return v16

    :cond_11f
    const v9, -0x1e080

    xor-int/2addr v3, v9

    shl-int/lit8 v9, v15, 0x6

    xor-int/2addr v3, v9

    shl-int/lit8 v7, v7, 0xc

    xor-int/2addr v3, v7

    const/16 v7, 0x800

    if-ge v3, v7, :cond_131

    if-ne v6, v1, :cond_130

    return v5

    :cond_130
    return v16

    :cond_131
    if-gt v8, v3, :cond_138

    if-gt v3, v12, :cond_138

    move/from16 v7, v17

    goto :goto_139

    :cond_138
    const/4 v7, 0x0

    :goto_139
    if-eqz v7, :cond_13f

    if-ne v6, v1, :cond_13e

    return v5

    :cond_13e
    return v16

    :cond_13f
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_144

    return v5

    :cond_144
    if-eq v3, v13, :cond_167

    if-eq v3, v11, :cond_167

    if-ltz v3, :cond_14f

    if-gt v3, v10, :cond_14f

    move/from16 v6, v17

    goto :goto_150

    :cond_14f
    const/4 v6, 0x0

    :goto_150
    if-nez v6, :cond_163

    const/16 v6, 0x7f

    if-gt v6, v3, :cond_15d

    const/16 v6, 0x9f

    if-gt v3, v6, :cond_15d

    move/from16 v6, v17

    goto :goto_15e

    :cond_15d
    const/4 v6, 0x0

    :goto_15e
    if-eqz v6, :cond_161

    goto :goto_163

    :cond_161
    const/4 v6, 0x0

    goto :goto_165

    :cond_163
    :goto_163
    move/from16 v6, v17

    :goto_165
    if-nez v6, :cond_16c

    :cond_167
    const v6, 0xfffd

    if-ne v3, v6, :cond_16d

    :cond_16c
    return v16

    :cond_16d
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_174

    move/from16 v15, v17

    goto :goto_175

    :cond_174
    const/4 v15, 0x2

    :goto_175
    add-int/2addr v5, v15

    .line 357
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_e8

    :cond_17c
    shr-int/lit8 v3, v7, 0x3

    if-ne v3, v15, :cond_227

    add-int/lit8 v3, v4, 0x3

    if-gt v2, v3, :cond_188

    if-ne v6, v1, :cond_187

    return v5

    :cond_187
    return v16

    :cond_188
    add-int/lit8 v9, v4, 0x1

    .line 517
    aget-byte v9, v0, v9

    and-int/lit16 v15, v9, 0xc0

    if-ne v15, v14, :cond_193

    move/from16 v15, v17

    goto :goto_194

    :cond_193
    const/4 v15, 0x0

    :goto_194
    if-nez v15, :cond_19a

    if-ne v6, v1, :cond_199

    return v5

    :cond_199
    return v16

    :cond_19a
    add-int/lit8 v15, v4, 0x2

    .line 522
    aget-byte v15, v0, v15

    and-int/lit16 v10, v15, 0xc0

    if-ne v10, v14, :cond_1a5

    move/from16 v10, v17

    goto :goto_1a6

    :cond_1a5
    const/4 v10, 0x0

    :goto_1a6
    if-nez v10, :cond_1ac

    if-ne v6, v1, :cond_1ab

    return v5

    :cond_1ab
    return v16

    .line 527
    :cond_1ac
    aget-byte v3, v0, v3

    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v14, :cond_1b5

    move/from16 v10, v17

    goto :goto_1b6

    :cond_1b5
    const/4 v10, 0x0

    :goto_1b6
    if-nez v10, :cond_1bc

    if-ne v6, v1, :cond_1bb

    return v5

    :cond_1bb
    return v16

    :cond_1bc
    const v10, 0x381f80

    xor-int/2addr v3, v10

    shl-int/lit8 v10, v15, 0x6

    xor-int/2addr v3, v10

    shl-int/lit8 v9, v9, 0xc

    xor-int/2addr v3, v9

    shl-int/lit8 v7, v7, 0x12

    xor-int/2addr v3, v7

    const v7, 0x10ffff

    if-le v3, v7, :cond_1d2

    if-ne v6, v1, :cond_1d1

    return v5

    :cond_1d1
    return v16

    :cond_1d2
    if-gt v8, v3, :cond_1d9

    if-gt v3, v12, :cond_1d9

    move/from16 v7, v17

    goto :goto_1da

    :cond_1d9
    const/4 v7, 0x0

    :goto_1da
    if-eqz v7, :cond_1e0

    if-ne v6, v1, :cond_1df

    return v5

    :cond_1df
    return v16

    :cond_1e0
    const/high16 v7, 0x10000

    if-ge v3, v7, :cond_1e8

    if-ne v6, v1, :cond_1e7

    return v5

    :cond_1e7
    return v16

    :cond_1e8
    add-int/lit8 v7, v6, 0x1

    if-ne v6, v1, :cond_1ed

    return v5

    :cond_1ed
    if-eq v3, v13, :cond_212

    if-eq v3, v11, :cond_212

    if-ltz v3, :cond_1fa

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_1fa

    move/from16 v6, v17

    goto :goto_1fb

    :cond_1fa
    const/4 v6, 0x0

    :goto_1fb
    if-nez v6, :cond_20e

    const/16 v6, 0x7f

    if-gt v6, v3, :cond_208

    const/16 v6, 0x9f

    if-gt v3, v6, :cond_208

    move/from16 v6, v17

    goto :goto_209

    :cond_208
    const/4 v6, 0x0

    :goto_209
    if-eqz v6, :cond_20c

    goto :goto_20e

    :cond_20c
    const/4 v6, 0x0

    goto :goto_210

    :cond_20e
    :goto_20e
    move/from16 v6, v17

    :goto_210
    if-nez v6, :cond_217

    :cond_212
    const v6, 0xfffd

    if-ne v3, v6, :cond_218

    :cond_217
    return v16

    :cond_218
    const/high16 v6, 0x10000

    if-ge v3, v6, :cond_21f

    move/from16 v15, v17

    goto :goto_220

    :cond_21f
    const/4 v15, 0x2

    :goto_220
    add-int/2addr v5, v15

    .line 357
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v4, v4, 0x4

    goto/16 :goto_e8

    :cond_227
    if-ne v6, v1, :cond_22a

    return v5

    :cond_22a
    return v16

    :cond_22b
    return v5
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .registers 5
    .param p0    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method

.method private static final decodeHexDigit(C)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-gt v2, p0, :cond_c

    const/16 v3, 0x39

    if-gt p0, v3, :cond_c

    move v3, v0

    goto :goto_d

    :cond_c
    move v3, v1

    :goto_d
    if-eqz v3, :cond_11

    sub-int/2addr p0, v2

    goto :goto_2f

    :cond_11
    const/16 v2, 0x61

    if-gt v2, p0, :cond_1b

    const/16 v3, 0x66

    if-gt p0, v3, :cond_1b

    move v3, v0

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    if-eqz v3, :cond_22

    :goto_1e
    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, 0xa

    goto :goto_2f

    :cond_22
    const/16 v2, 0x41

    if-gt v2, p0, :cond_2b

    const/16 v3, 0x46

    if-gt p0, v3, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    if-eqz v0, :cond_30

    goto :goto_1e

    :goto_2f
    return p0

    .line 313
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected hex digit: "

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .registers 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 57
    sget-object v0, Lokio/internal/_ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method
