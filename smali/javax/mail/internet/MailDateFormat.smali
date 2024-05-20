.class public Ljavax/mail/internet/MailDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "MailDateFormat.java"


# static fields
.field private static cal:Ljava/util/Calendar; = null

.field static debug:Z = false

.field private static final serialVersionUID:J = -0x711451d5f59c82abL

.field private static tz:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GMT"

    .line 342
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->tz:Ljava/util/TimeZone;

    .line 343
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljavax/mail/internet/MailDateFormat;->tz:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sput-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 141
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss \'XXXXX\' (z)"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method private static declared-synchronized ourUTC(IIIIIIIZ)Ljava/util/Date;
    .locals 2

    const-class v0, Ljavax/mail/internet/MailDateFormat;

    monitor-enter v0

    .line 348
    :try_start_0
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 349
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, p7}, Ljava/util/Calendar;->setLenient(Z)V

    .line 350
    sget-object p7, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {p7, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 351
    sget-object p0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 p7, 0x2

    invoke-virtual {p0, p7, p1}, Ljava/util/Calendar;->set(II)V

    .line 352
    sget-object p0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 353
    sget-object p0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 p1, 0xb

    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 354
    sget-object p0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 p1, 0xc

    add-int/2addr p4, p6

    invoke-virtual {p0, p1, p4}, Ljava/util/Calendar;->set(II)V

    .line 355
    sget-object p0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, p5}, Ljava/util/Calendar;->set(II)V

    .line 357
    sget-object p0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static parseDate([CLjava/text/ParsePosition;Z)Ljava/util/Date;
    .locals 12

    const-string v0, "\'"

    .line 271
    :try_start_0
    new-instance v1, Ljavax/mail/internet/MailDateParser;

    invoke-direct {v1, p0}, Ljavax/mail/internet/MailDateParser;-><init>([C)V

    .line 274
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->skipUntilNumber()V

    .line 275
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v4

    const/16 v2, 0x2d

    .line 277
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 278
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 282
    :cond_0
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->parseMonth()I

    move-result v3

    .line 283
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 288
    :cond_1
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v2

    const/16 v5, 0x32

    if-ge v2, v5, :cond_2

    add-int/lit16 v2, v2, 0x7d0

    goto :goto_0

    :cond_2
    const/16 v5, 0x64

    if-ge v2, v5, :cond_3

    add-int/lit16 v2, v2, 0x76c

    .line 298
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 299
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v5

    const/16 v6, 0x3a

    .line 302
    invoke-virtual {v1, v6}, Ljavax/mail/internet/MailDateParser;->skipChar(C)V

    .line 303
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v7

    .line 306
    invoke-virtual {v1, v6}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    .line 307
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v9, v6

    goto :goto_1

    :cond_4
    move v9, v8

    .line 313
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 314
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->parseTimeZone()I

    move-result v6
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v8, v6

    goto :goto_2

    .line 316
    :catch_0
    :try_start_2
    sget-boolean v6, Ljavax/mail/internet/MailDateFormat;->debug:Z

    if-eqz v6, :cond_5

    .line 317
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "No timezone? : \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 317
    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 322
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljavax/mail/internet/MailDateParser;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move v6, v7

    move v7, v9

    move v9, p2

    .line 323
    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MailDateFormat;->ourUTC(IIIIIIIZ)Ljava/util/Date;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p2

    .line 333
    sget-boolean v1, Ljavax/mail/internet/MailDateFormat;->debug:Z

    if-eqz v1, :cond_6

    .line 334
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad date: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    const/4 p0, 0x1

    .line 337
    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .line 165
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 166
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x19

    .line 170
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p3

    const/16 v1, 0x58

    if-ne p3, v1, :cond_1

    .line 174
    iget-object p3, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->clear()V

    .line 175
    iget-object p3, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {p3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 176
    iget-object p1, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 p3, 0xf

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 177
    iget-object p0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 p3, 0x10

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p1, p0

    if-gez p1, :cond_0

    add-int/lit8 p0, v0, 0x1

    const/16 p3, 0x2d

    .line 180
    invoke-virtual {p2, v0, p3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    neg-int p1, p1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, v0, 0x1

    const/16 p3, 0x2b

    .line 183
    invoke-virtual {p2, v0, p3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 185
    :goto_1
    div-int/lit8 p1, p1, 0x3c

    div-int/lit16 p1, p1, 0x3e8

    .line 186
    div-int/lit8 p3, p1, 0x3c

    .line 187
    rem-int/lit8 p1, p1, 0x3c

    add-int/lit8 v0, p0, 0x1

    .line 189
    div-int/lit8 v1, p3, 0xa

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, p0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 p0, v0, 0x1

    .line 190
    rem-int/2addr p3, v2

    invoke-static {p3, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result p3

    invoke-virtual {p2, v0, p3}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 p3, p0, 0x1

    .line 191
    div-int/lit8 v0, p1, 0xa

    invoke-static {v0, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 192
    rem-int/2addr p1, v2

    invoke-static {p1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result p0

    invoke-virtual {p2, p3, p0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    return-object p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 0

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0}, Ljava/text/SimpleDateFormat;->isLenient()Z

    move-result p0

    invoke-static {p1, p2, p0}, Ljavax/mail/internet/MailDateFormat;->parseDate([CLjava/text/ParsePosition;Z)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 0

    .line 365
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Method setCalendar() shouldn\'t be called"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 0

    .line 370
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Method setNumberFormat() shouldn\'t be called"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
