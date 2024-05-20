.class Lcom/sec/internal/helper/parser/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ","

.field private static final QUOTE:Ljava/lang/String; = "\""

.field protected static final REGEX_ALGORITHM:Ljava/lang/String; = "algorithm[\\s]*="

.field protected static final REGEX_NONCE:Ljava/lang/String; = "nonce[\\s]*="

.field protected static final REGEX_OPAQUE:Ljava/lang/String; = "opaque[\\s]*="

.field protected static final REGEX_QOP:Ljava/lang/String; = "qop[\\s]*="

.field protected static final REGEX_REALM:Ljava/lang/String; = "realm[\\s]*="

.field protected static final REGEX_STALE:Ljava/lang/String; = "stale[\\s]*="

.field private static final SPACE_REGEX:Ljava/lang/String; = "[\\s]*"

.field protected static final SPACE_SEPERATOR_REGEX:Ljava/lang/String; = "[\\s]*="


# instance fields
.field private paramMatcher:Ljava/util/regex/Matcher;

.field private paramPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sec/internal/helper/parser/HttpHeaderParser;->paramPattern:Ljava/util/regex/Pattern;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/helper/parser/HttpHeaderParser;->paramMatcher:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method protected getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "\""

    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ","

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 62
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method protected getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 69
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/parser/HttpHeaderParser;->paramPattern:Ljava/util/regex/Pattern;

    .line 70
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/parser/HttpHeaderParser;->paramMatcher:Ljava/util/regex/Matcher;

    .line 71
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/sec/internal/helper/parser/HttpHeaderParser;->paramMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
