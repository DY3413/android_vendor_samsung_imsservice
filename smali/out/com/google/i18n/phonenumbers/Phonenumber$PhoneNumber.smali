.class public Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
.super Ljava/lang/Object;
.source "Phonenumber.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private countryCodeSource_:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field private countryCode_:I

.field private extension_:Ljava/lang/String;

.field private hasCountryCode:Z

.field private hasCountryCodeSource:Z

.field private hasExtension:Z

.field private hasItalianLeadingZero:Z

.field private hasNationalNumber:Z

.field private hasNumberOfLeadingZeros:Z

.field private hasPreferredDomesticCarrierCode:Z

.field private hasRawInput:Z

.field private italianLeadingZero_:Z

.field private nationalNumber_:J

.field private numberOfLeadingZeros_:I

.field private preferredDomesticCarrierCode_:Ljava/lang/String;

.field private rawInput_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    const-wide/16 v1, 0x0

    .line 61
    iput-wide v1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    const-string v1, ""

    .line 77
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    .line 96
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    const/4 v0, 0x1

    .line 112
    iput v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    .line 128
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->UNSPECIFIED:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-void
.end method


# virtual methods
.method public clearCountryCode()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    .line 55
    iput v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    return-object p0
.end method

.method public clearCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 2

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    .line 160
    sget-object v0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->UNSPECIFIED:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 240
    instance-of v0, p1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public exactlySameAs(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 230
    :cond_8
    iget v2, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    if-ne v2, v3, :cond_51

    iget-wide v2, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    iget-wide v4, p1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_51

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    iget-boolean v3, p1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    if-ne v2, v3, :cond_51

    iget v2, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    if-ne v2, v3, :cond_51

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v2, v3, :cond_51

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 235
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result p0

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result p1

    if-ne p0, p1, :cond_51

    move v0, v1

    :cond_51
    return v0
.end method

.method public getCountryCode()I
    .registers 1

    .line 47
    iget p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    return p0
.end method

.method public getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0
.end method

.method public getExtension()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    return-object p0
.end method

.method public getNationalNumber()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    return-wide v0
.end method

.method public getNumberOfLeadingZeros()I
    .registers 1

    .line 114
    iget p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    return p0
.end method

.method public getPreferredDomesticCarrierCode()Ljava/lang/String;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object p0
.end method

.method public getRawInput()Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    return-object p0
.end method

.method public hasCountryCodeSource()Z
    .registers 1

    .line 148
    iget-boolean p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    return p0
.end method

.method public hasExtension()Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    return p0
.end method

.method public hasItalianLeadingZero()Z
    .registers 1

    .line 97
    iget-boolean p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    return p0
.end method

.method public hasNumberOfLeadingZeros()Z
    .registers 1

    .line 113
    iget-boolean p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    return p0
.end method

.method public hasPreferredDomesticCarrierCode()Z
    .registers 1

    .line 167
    iget-boolean p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    return p0
.end method

.method public hasRawInput()Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    return p0
.end method

.method public hashCode()I
    .registers 5

    const/16 v0, 0x87d

    .line 250
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 251
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 252
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 253
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    const/16 v2, 0x4cf

    const/16 v3, 0x4d5

    if-eqz v1, :cond_2f

    move v1, v2

    goto :goto_30

    :cond_2f
    move v1, v3

    :goto_30
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 254
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 255
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 256
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 257
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 258
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result p0

    if-eqz p0, :cond_62

    goto :goto_63

    :cond_62
    move v2, v3

    :goto_63
    add-int/2addr v0, v2

    return v0
.end method

.method public isItalianLeadingZero()Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    return p0
.end method

.method public setCountryCode(I)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode:Z

    .line 50
    iput p1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    return-object p0
.end method

.method public setCountryCodeSource(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource:Z

    .line 155
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0
.end method

.method public setExtension(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension:Z

    .line 85
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    return-object p0
.end method

.method public setItalianLeadingZero(Z)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero:Z

    .line 101
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->italianLeadingZero_:Z

    return-object p0
.end method

.method public setNationalNumber(J)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNationalNumber:Z

    .line 66
    iput-wide p1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    return-object p0
.end method

.method public setNumberOfLeadingZeros(I)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros:Z

    .line 117
    iput p1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    return-object p0
.end method

.method public setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode:Z

    .line 174
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    return-object p0
.end method

.method public setRawInput(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput:Z

    .line 136
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->rawInput_:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country Code: "

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCode_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " National Number: "

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->nationalNumber_:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, " Leading Zero(s): true"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_2a
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasNumberOfLeadingZeros()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, " Number of leading zeros: "

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->numberOfLeadingZeros_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    :cond_3a
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, " Extension: "

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->extension_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_4a
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, " Country Code Source: "

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->countryCodeSource_:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    :cond_5a
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v1

    if-eqz v1, :cond_6a

    const-string v1, " Preferred Domestic Carrier Code: "

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->preferredDomesticCarrierCode_:Ljava/lang/String;

    .line 281
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
