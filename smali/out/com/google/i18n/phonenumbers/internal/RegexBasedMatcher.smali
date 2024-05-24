.class public final Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;
.super Ljava/lang/Object;
.source "RegexBasedMatcher.java"

# interfaces
.implements Lcom/google/i18n/phonenumbers/internal/MatcherApi;


# instance fields
.field private final regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;->regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

    return-void
.end method

.method public static create()Lcom/google/i18n/phonenumbers/internal/MatcherApi;
    .registers 1

    .line 30
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;-><init>()V

    return-object v0
.end method

.method private static match(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z
    .registers 3

    .line 50
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 54
    :cond_c
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p2, 0x1

    :cond_13
    return p2
.end method


# virtual methods
.method public matchNationalNumber(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z
    .registers 5

    .line 40
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 46
    :cond_c
    iget-object p0, p0, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;->regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {p0, p2}, Lcom/google/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-static {p1, p0, p3}, Lcom/google/i18n/phonenumbers/internal/RegexBasedMatcher;->match(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z

    move-result p0

    return p0
.end method
