.class Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;
.super Ljava/lang/Object;
.source "StrategyUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StrategyUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isCapabilityValidUriForUS(Lcom/sec/ims/util/ImsUri;I)Z
    .registers 10

    const-string v0, "US"

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return v1

    .line 19
    :cond_6
    invoke-static {p0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 25
    :try_start_e
    invoke-virtual {v2, p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    .line 28
    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v4, v5, :cond_52

    .line 29
    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCapabilityValidUri: msdn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v4, v6, :cond_4c

    if-eqz p0, :cond_46

    const-string v4, "+1"

    .line 31
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0xc

    if-ge v4, v6, :cond_52

    :cond_46
    const-string p0, "isCapabilityValidUri: Impossible too long phone number"

    .line 32
    invoke-static {v5, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_4c
    const-string p0, "isCapabilityValidUri: Impossible phone number"

    .line 36
    invoke-static {v5, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 40
    :cond_52
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCode()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 41
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3
    :try_end_5d
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_e .. :try_end_5d} :catch_bd

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_bc

    .line 49
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "900"

    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b5

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x38

    const/4 v6, 0x1

    if-ne v4, v5, :cond_85

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v4, v3, :cond_85

    goto :goto_b5

    .line 60
    :cond_85
    :try_start_85
    invoke-virtual {v2, p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    if-ne v2, v6, :cond_b4

    .line 62
    invoke-static {p0, v0}, Lcom/sec/internal/helper/UriUtil;->isShortCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 63
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCapabilityValidUri: ShortCode. invalid request. msdn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_af
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_85 .. :try_end_af} :catch_b0

    return v1

    :catch_b0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b4
    return v6

    .line 51
    :cond_b5
    :goto_b5
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isCapabilityValidUri: 900 8YY contact. invalid request"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_bc
    return v1

    :catch_bd
    move-exception p0

    .line 43
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid number. NumberParseException was thrown: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v1
.end method
