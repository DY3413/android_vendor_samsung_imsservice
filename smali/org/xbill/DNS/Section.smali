.class public final Lorg/xbill/DNS/Section;
.super Ljava/lang/Object;
.source "Section.java"


# static fields
.field private static longSections:[Ljava/lang/String;

.field private static sections:Lorg/xbill/DNS/Mnemonic;

.field private static updateSections:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "Message Section"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    .line 37
    sput-object v3, Lorg/xbill/DNS/Section;->longSections:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    .line 38
    sput-object v1, Lorg/xbill/DNS/Section;->updateSections:[Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    .line 42
    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    .line 44
    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    const/4 v3, 0x0

    const-string v4, "qd"

    invoke-virtual {v0, v3, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 45
    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    const-string v4, "an"

    invoke-virtual {v0, v1, v4}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 46
    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    const/4 v4, 0x2

    const-string v5, "au"

    invoke-virtual {v0, v4, v5}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 47
    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    const-string v5, "ad"

    invoke-virtual {v0, v2, v5}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 49
    sget-object v0, Lorg/xbill/DNS/Section;->longSections:[Ljava/lang/String;

    const-string v5, "QUESTIONS"

    aput-object v5, v0, v3

    const-string v5, "ANSWERS"

    .line 50
    aput-object v5, v0, v1

    const-string v5, "AUTHORITY RECORDS"

    .line 51
    aput-object v5, v0, v4

    const-string v5, "ADDITIONAL RECORDS"

    .line 52
    aput-object v5, v0, v2

    .line 54
    sget-object v0, Lorg/xbill/DNS/Section;->updateSections:[Ljava/lang/String;

    const-string v6, "ZONE"

    aput-object v6, v0, v3

    const-string v3, "PREREQUISITES"

    .line 55
    aput-object v3, v0, v1

    const-string v1, "UPDATE RECORDS"

    .line 56
    aput-object v1, v0, v4

    .line 57
    aput-object v5, v0, v2

    return-void
.end method

.method public static longString(I)Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    .line 73
    sget-object v0, Lorg/xbill/DNS/Section;->longSections:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updString(I)Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Lorg/xbill/DNS/Section;->sections:Lorg/xbill/DNS/Mnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    .line 83
    sget-object v0, Lorg/xbill/DNS/Section;->updateSections:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
