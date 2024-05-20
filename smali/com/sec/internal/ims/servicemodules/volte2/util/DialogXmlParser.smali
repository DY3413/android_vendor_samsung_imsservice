.class public Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;
.super Ljava/lang/Object;
.source "DialogXmlParser.java"


# static fields
.field private static final CMC_TYPE_NONE:I = 0x0

.field private static final CMC_TYPE_PRIMARY:I = 0x1

.field private static final CMC_TYPE_SECONDARY:I = 0x2

.field private static final CMC_WIFI_HS_TYPE_PRIMARY:I = 0x5

.field private static final CMC_WIFI_HS_TYPE_SECONDARY:I = 0x6

.field private static final CMC_WIFI_P2P_TYPE_PRIMARY:I = 0x7

.field private static final CMC_WIFI_P2P_TYPE_SECONDARY:I = 0x8

.field private static final CMC_WIFI_TYPE_PRIMARY:I = 0x3

.field private static final CMC_WIFI_TYPE_SECONDARY:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "DialogXmlParser"

.field private static sInstance:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;


# instance fields
.field private mXPath:Ljavax/xml/xpath/XPath;

.field private mXPathCallId:Ljavax/xml/xpath/XPathExpression;

.field private mXPathCallSlot:Ljavax/xml/xpath/XPathExpression;

.field private mXPathCallType:Ljavax/xml/xpath/XPathExpression;

.field private mXPathCode:Ljavax/xml/xpath/XPathExpression;

.field private mXPathDialog:Ljavax/xml/xpath/XPathExpression;

.field private mXPathDialogInfo:Ljavax/xml/xpath/XPathExpression;

.field private mXPathDirection:Ljavax/xml/xpath/XPathExpression;

.field private mXPathEntity:Ljavax/xml/xpath/XPathExpression;

.field private mXPathEvent:Ljavax/xml/xpath/XPathExpression;

.field private mXPathExclusive:Ljavax/xml/xpath/XPathExpression;

.field private mXPathId:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalDisplay:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalDisplayName:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalIdentity:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalTag:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalTarget:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalUri:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaAttributes:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaPortZero:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaType:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteDisplay:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteDisplayName:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteIdentity:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteTag:Ljavax/xml/xpath/XPathExpression;

.field private mXPathSessionDesc:Ljavax/xml/xpath/XPathExpression;

.field private mXPathSipInstance:Ljavax/xml/xpath/XPathExpression;

.field private mXPathSipRendering:Ljavax/xml/xpath/XPathExpression;

.field private mXPathState:Ljavax/xml/xpath/XPathExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->init()V

    return-void
.end method

.method private convertDialogCallState(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string p0, "no"

    .line 247
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return p1
.end method

.method private convertDialogCallType(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string/jumbo p0, "video"

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return p1
.end method

.method private convertDialogDirection(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string p0, "initiator"

    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "recipient"

    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 164
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private convertDialogMediaDirection(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string p0, "sendrecv"

    .line 233
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const-string p0, "recvonly"

    .line 235
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string p0, "sendonly"

    .line 237
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string p0, "inactive"

    .line 239
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private convertDialogState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 170
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertDialogState(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 174
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertDialogState(): ignoring invalid code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p4, p0

    .line 178
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    :goto_1
    move p2, v3

    goto :goto_2

    :sswitch_0
    const-string v0, "early"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    move p2, v1

    goto :goto_2

    :sswitch_1
    const-string v0, "confirmed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v2

    goto :goto_2

    :sswitch_2
    const-string/jumbo v0, "trying"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v4

    goto :goto_2

    :sswitch_3
    const-string/jumbo v0, "terminated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move p2, p0

    :goto_2
    packed-switch p2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    if-ne p1, v4, :cond_4

    const/16 p1, 0xb4

    if-ne p4, p1, :cond_4

    return p0

    :pswitch_1
    return v4

    :pswitch_2
    if-nez p1, :cond_4

    const/4 p0, 0x4

    return p0

    .line 204
    :cond_4
    :goto_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string p1, "convertDialogState(): ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_3
    const-string p0, "rejected"

    .line 195
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x1e6

    if-ne p4, p0, :cond_5

    return v1

    :cond_5
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x4e02f1dd -> :sswitch_3
        -0x338ec7b9 -> :sswitch_2
        -0x2fedbca1 -> :sswitch_1
        0x5bd1763 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDeviceIdFromSipInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string/jumbo p0, "urn:gsma:imei:([0-9-]+)"

    .line 216
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 218
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[^0-9]"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid instance id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->sInstance:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->sInstance:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    .line 41
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->sInstance:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 82
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    .line 83
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;)V

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "/dins:dialog-info"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialogInfo:Ljavax/xml/xpath/XPathExpression;

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@entity"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEntity:Ljavax/xml/xpath/XPathExpression;

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:dialog"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialog:Ljavax/xml/xpath/XPathExpression;

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@id"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathId:Ljavax/xml/xpath/XPathExpression;

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@call-id"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallId:Ljavax/xml/xpath/XPathExpression;

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@local-tag"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTag:Ljavax/xml/xpath/XPathExpression;

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@remote-tag"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteTag:Ljavax/xml/xpath/XPathExpression;

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@direction"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDirection:Ljavax/xml/xpath/XPathExpression;

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "sa:exclusive"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathExclusive:Ljavax/xml/xpath/XPathExpression;

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:state"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathState:Ljavax/xml/xpath/XPathExpression;

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:state/@event"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEvent:Ljavax/xml/xpath/XPathExpression;

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:state/@code"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCode:Ljavax/xml/xpath/XPathExpression;

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:identity"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalIdentity:Ljavax/xml/xpath/XPathExpression;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:identity/@display-name"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplayName:Ljavax/xml/xpath/XPathExpression;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:identity/@display"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplay:Ljavax/xml/xpath/XPathExpression;

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target/@uri"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalUri:Ljavax/xml/xpath/XPathExpression;

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTarget:Ljavax/xml/xpath/XPathExpression;

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:session-description"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSessionDesc:Ljavax/xml/xpath/XPathExpression;

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:calltype"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallType:Ljavax/xml/xpath/XPathExpression;

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:callslot"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallSlot:Ljavax/xml/xpath/XPathExpression;

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target/dins:param[@pname=\'+sip.instance\']/@pval"

    .line 136
    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipInstance:Ljavax/xml/xpath/XPathExpression;

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target/dins:param[@pname=\'+sip.rendering\']/@pval"

    .line 139
    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipRendering:Ljavax/xml/xpath/XPathExpression;

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:mediaAttributes"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaAttributes:Ljavax/xml/xpath/XPathExpression;

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:mediaType"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaType:Ljavax/xml/xpath/XPathExpression;

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:mediaDirection"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:port0"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaPortZero:Ljavax/xml/xpath/XPathExpression;

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:remote/dins:identity"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteIdentity:Ljavax/xml/xpath/XPathExpression;

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:remote/dins:identity/@display-name"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplayName:Ljavax/xml/xpath/XPathExpression;

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:remote/dins:identity/@display"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplay:Ljavax/xml/xpath/XPathExpression;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "XPath compile failed!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public parseDialogInfoXml(Ljava/lang/String;)Lcom/sec/ims/DialogEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->parseDialogInfoXml(Ljava/lang/String;I)Lcom/sec/ims/DialogEvent;

    move-result-object p0

    return-object p0
.end method

.method public parseDialogInfoXml(Ljava/lang/String;I)Lcom/sec/ims/DialogEvent;
    .locals 49
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 259
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 261
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialogInfo:Ljavax/xml/xpath/XPathExpression;

    sget-object v4, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v0, v4}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 264
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEntity:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v3, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 269
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 271
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v4

    .line 274
    :cond_0
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialog:Ljavax/xml/xpath/XPathExpression;

    sget-object v5, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v0, v5}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/w3c/dom/NodeList;

    .line 276
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 278
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const-string v8, ""

    if-ge v7, v0, :cond_16

    .line 279
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 289
    :try_start_0
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDirection:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v9, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogDirection(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1d

    .line 290
    :try_start_1
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathState:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v10, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEvent:Ljavax/xml/xpath/XPathExpression;

    .line 291
    invoke-interface {v11, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCode:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v12, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 290
    invoke-direct {v1, v9, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1c

    if-gez v10, :cond_1

    move-object/from16 v20, v3

    goto/16 :goto_25

    .line 297
    :cond_1
    :try_start_2
    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaAttributes:Ljavax/xml/xpath/XPathExpression;

    sget-object v12, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v11, v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/NodeList;

    .line 300
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1b

    const/4 v13, 0x2

    if-lez v12, :cond_8

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 301
    :goto_1
    :try_start_3
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v12, v6, :cond_7

    .line 302
    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 303
    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaType:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v14, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogCallType(Ljava/lang/String;)I

    move-result v14
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v15, :cond_2

    goto :goto_2

    :cond_2
    if-eq v15, v13, :cond_3

    if-ne v14, v13, :cond_3

    :goto_2
    move v15, v14

    :cond_3
    move-object/from16 v20, v3

    const/4 v3, 0x1

    if-eq v14, v3, :cond_6

    if-eq v14, v13, :cond_4

    .line 326
    :try_start_4
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 327
    invoke-interface {v3, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-direct {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogMediaDirection(Ljava/lang/String;)I

    move-result v16

    goto :goto_3

    .line 314
    :cond_4
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 315
    invoke-interface {v3, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-direct {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogMediaDirection(Ljava/lang/String;)I

    move-result v17

    .line 316
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaPortZero:Ljavax/xml/xpath/XPathExpression;

    sget-object v14, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v3, v6, v14}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/NodeList;

    .line 317
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_5

    const/16 v18, 0x1

    goto :goto_3

    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    .line 321
    :cond_6
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 322
    invoke-interface {v3, v6}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-direct {v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogMediaDirection(Ljava/lang/String;)I

    move-result v16
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v20

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_7
    move-object/from16 v20, v3

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v20, v3

    :goto_4
    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v23, v14

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    move/from16 v24, v9

    move/from16 v3, v16

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    move-object/from16 v9, v27

    :goto_5
    move-object/from16 v16, v9

    goto/16 :goto_23

    :cond_8
    move-object/from16 v20, v3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 333
    :goto_6
    :try_start_5
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathId:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v3, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_1a

    const/16 v6, 0x8

    const/4 v11, 0x4

    if-eq v2, v13, :cond_9

    if-eq v2, v11, :cond_9

    if-ne v2, v6, :cond_a

    .line 337
    :cond_9
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_19

    if-lez v12, :cond_a

    const/16 v12, 0x1f

    .line 340
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v21, 0x7fffffff

    and-int v14, v14, v21

    add-int/2addr v12, v14

    .line 341
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v11, v8

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v23, v14

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    move/from16 v24, v9

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    move-object v8, v3

    move-object/from16 v9, v27

    move/from16 v3, v16

    goto :goto_5

    .line 343
    :cond_a
    :goto_7
    :try_start_8
    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallId:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v12, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_19

    .line 344
    :try_start_9
    iget-object v14, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTag:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v14, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_18

    .line 345
    :try_start_a
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteTag:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_17

    .line 347
    :try_start_b
    iget-object v11, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalIdentity:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v11, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_b} :catch_16

    .line 348
    :try_start_c
    iget-object v13, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteIdentity:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v13, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_c} :catch_15

    move-object/from16 v23, v6

    .line 349
    :try_start_d
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplay:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_d} :catch_14

    move/from16 v24, v9

    .line 350
    :try_start_e
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSessionDesc:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v9, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_e .. :try_end_e} :catch_13

    move/from16 v25, v10

    .line 352
    :try_start_f
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_f} :catch_12

    move-object/from16 v26, v6

    const/4 v6, 0x1

    if-ne v10, v6, :cond_b

    .line 353
    :try_start_10
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplayName:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_10 .. :try_end_10} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_1b

    :cond_b
    move-object/from16 v6, v26

    .line 356
    :goto_8
    :try_start_11
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplay:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v10, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_11} :catch_12

    move-object/from16 v26, v6

    .line 358
    :try_start_12
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_12} :catch_11

    move-object/from16 v27, v10

    const/4 v10, 0x1

    if-ne v6, v10, :cond_c

    .line 359
    :try_start_13
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplayName:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_13
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_13} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    goto/16 :goto_19

    :cond_c
    move-object/from16 v6, v27

    .line 362
    :goto_9
    :try_start_14
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipRendering:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v10, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 363
    invoke-direct {v1, v10}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogCallState(Ljava/lang/String;)I

    move-result v10
    :try_end_14
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_14} :catch_10

    move-object/from16 v27, v6

    .line 364
    :try_start_15
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathExclusive:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6
    :try_end_15
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_15} :catch_f

    move/from16 v28, v6

    .line 367
    :try_start_16
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipInstance:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 368
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_e

    .line 369
    invoke-direct {v1, v6}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->getDeviceIdFromSipInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_d
    const/4 v8, 0x2

    :goto_a
    move/from16 v48, v16

    move-object/from16 v16, v6

    move/from16 v6, v48

    goto :goto_b

    .line 371
    :cond_e
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTarget:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v6, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_16
    .catch Ljava/text/ParseException; {:try_start_16 .. :try_end_16} :catch_e

    if-nez v16, :cond_f

    const/16 v16, 0x4

    :cond_f
    if-nez v15, :cond_d

    const/4 v8, 0x2

    const/4 v15, 0x1

    goto :goto_a

    :goto_b
    if-eq v2, v8, :cond_10

    const/4 v8, 0x4

    if-eq v2, v8, :cond_10

    const/16 v8, 0x8

    if-ne v2, v8, :cond_14

    .line 385
    :cond_10
    :try_start_17
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_14

    const-string v8, "*31#"

    .line 386
    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_12

    const-string v8, "#31#"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_d

    :cond_11
    :goto_c
    move-object v8, v9

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v8, 0x4

    .line 387
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 388
    sget-object v8, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Remove CLIR prefix"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_17 .. :try_end_17} :catch_d

    goto :goto_c

    .line 390
    :goto_e
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sip:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_18 .. :try_end_18} :catch_b

    .line 391
    :try_start_19
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v13, "[CMC] Displayname on pulling UI : use session-description value."

    invoke-static {v9, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_19 .. :try_end_19} :catch_a

    .line 394
    :try_start_1a
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallType:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v9, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_6
    .catch Ljava/text/ParseException; {:try_start_1a .. :try_end_1a} :catch_5

    move v15, v9

    goto :goto_f

    :catch_5
    move-exception v0

    move-object v13, v2

    goto/16 :goto_13

    .line 396
    :catch_6
    :try_start_1b
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v13, "[CMC] ignoring invalid callType"

    invoke-static {v9, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_f
    sget-object v9, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1b
    .catch Ljava/text/ParseException; {:try_start_1b .. :try_end_1b} :catch_a

    move-object/from16 v19, v2

    :try_start_1c
    const-string v2, "[CMC] calltype: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallSlot:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v2, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1c
    .catch Ljava/text/ParseException; {:try_start_1c .. :try_end_1c} :catch_9

    if-nez v2, :cond_13

    .line 402
    :try_start_1d
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallSlot:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v2, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_7
    .catch Ljava/text/ParseException; {:try_start_1d .. :try_end_1d} :catch_9

    move v2, v0

    goto :goto_10

    .line 404
    :catch_7
    :try_start_1e
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[CMC] ignoring invalid callSlot"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/text/ParseException; {:try_start_1e .. :try_end_1e} :catch_9

    const/4 v2, 0x0

    .line 406
    :goto_10
    :try_start_1f
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callSlot : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/text/ParseException; {:try_start_1f .. :try_end_1f} :catch_8

    move-object v9, v8

    move-object/from16 v8, v19

    const/4 v0, 0x2

    goto :goto_15

    :catch_8
    move-exception v0

    move-object v9, v8

    move-object/from16 v13, v19

    goto :goto_12

    :cond_13
    move-object v9, v8

    move-object/from16 v8, v19

    goto :goto_14

    :catch_9
    move-exception v0

    goto :goto_11

    :catch_a
    move-exception v0

    move-object/from16 v19, v2

    :goto_11
    move-object v9, v8

    move-object/from16 v13, v19

    const/4 v2, 0x0

    :goto_12
    move-object v8, v3

    move v3, v6

    move/from16 v19, v10

    move/from16 v10, v25

    goto :goto_17

    :catch_b
    move-exception v0

    :goto_13
    move-object v9, v8

    move/from16 v19, v10

    move/from16 v10, v25

    const/4 v2, 0x0

    goto :goto_16

    :cond_14
    move-object v8, v13

    :goto_14
    const/4 v0, 0x2

    const/4 v2, 0x0

    :goto_15
    if-eq v10, v0, :cond_15

    const/4 v13, 0x4

    if-eq v6, v13, :cond_15

    .line 412
    :try_start_20
    sget-object v13, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v0, "HELD call check by Audio Direction"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_20} :catch_c

    const/4 v13, 0x2

    goto :goto_18

    :catch_c
    move-exception v0

    move-object v13, v8

    move/from16 v19, v10

    move/from16 v10, v25

    :goto_16
    move-object v8, v3

    move v3, v6

    :goto_17
    move/from16 v6, v28

    goto/16 :goto_23

    :cond_15
    move v13, v10

    :goto_18
    move/from16 v43, v2

    move-object/from16 v29, v3

    move/from16 v44, v6

    move-object/from16 v35, v8

    move-object/from16 v38, v9

    move-object/from16 v34, v11

    move-object/from16 v31, v12

    move/from16 v42, v13

    move-object/from16 v32, v14

    move/from16 v41, v15

    move-object/from16 v30, v16

    move/from16 v45, v17

    move/from16 v47, v18

    move-object/from16 v33, v23

    move/from16 v40, v24

    move/from16 v39, v25

    move-object/from16 v36, v26

    move-object/from16 v37, v27

    move/from16 v46, v28

    goto/16 :goto_24

    :catch_d
    move-exception v0

    move-object v8, v3

    move v3, v6

    move/from16 v19, v10

    move/from16 v10, v25

    move/from16 v6, v28

    const/4 v2, 0x0

    goto/16 :goto_23

    :catch_e
    move-exception v0

    move/from16 v19, v10

    move/from16 v10, v25

    move/from16 v6, v28

    const/4 v2, 0x0

    goto :goto_1a

    :catch_f
    move-exception v0

    move/from16 v19, v10

    move/from16 v10, v25

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_1a

    :catch_10
    move-exception v0

    move-object/from16 v27, v6

    goto :goto_19

    :catch_11
    move-exception v0

    move-object/from16 v27, v10

    :goto_19
    move/from16 v10, v25

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    :goto_1a
    move-object/from16 v48, v8

    move-object v8, v3

    move/from16 v3, v16

    move-object/from16 v16, v48

    goto/16 :goto_23

    :catch_12
    move-exception v0

    move-object/from16 v26, v6

    :goto_1b
    move-object/from16 v27, v8

    move/from16 v10, v25

    goto/16 :goto_20

    :catch_13
    move-exception v0

    move-object/from16 v26, v6

    move/from16 v25, v10

    move-object v9, v8

    move-object/from16 v27, v9

    goto/16 :goto_20

    :catch_14
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object/from16 v26, v9

    goto :goto_1f

    :catch_15
    move-exception v0

    move-object/from16 v23, v6

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v13, v9

    goto :goto_1c

    :catch_16
    move-exception v0

    move-object/from16 v23, v6

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    :goto_1c
    move-object/from16 v26, v13

    goto :goto_1f

    :catch_17
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object/from16 v23, v13

    goto :goto_1e

    :catch_18
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    goto :goto_1d

    :catch_19
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    :goto_1d
    move-object v14, v13

    move-object/from16 v23, v14

    :goto_1e
    move-object/from16 v26, v23

    :goto_1f
    move-object/from16 v27, v26

    :goto_20
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    move-object v8, v3

    move/from16 v3, v16

    goto :goto_21

    :catch_1a
    move-exception v0

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v23, v14

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    move/from16 v3, v16

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    :goto_21
    move-object/from16 v16, v27

    goto/16 :goto_23

    :catch_1b
    move-exception v0

    move-object/from16 v20, v3

    move/from16 v24, v9

    move/from16 v25, v10

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object/from16 v23, v16

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_22

    :catch_1c
    move-exception v0

    move-object/from16 v20, v3

    move/from16 v24, v9

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object/from16 v23, v16

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_22
    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_23

    :catch_1d
    move-exception v0

    move-object/from16 v20, v3

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object/from16 v23, v16

    move-object/from16 v26, v23

    move-object/from16 v27, v26

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    .line 416
    :goto_23
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    move/from16 v21, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v3

    const-string v3, "Parse error for dialog id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v46, v6

    move-object/from16 v29, v8

    move-object/from16 v38, v9

    move/from16 v39, v10

    move-object/from16 v34, v11

    move-object/from16 v31, v12

    move-object/from16 v35, v13

    move-object/from16 v32, v14

    move/from16 v41, v15

    move-object/from16 v30, v16

    move/from16 v45, v17

    move/from16 v47, v18

    move/from16 v42, v19

    move/from16 v43, v21

    move/from16 v44, v22

    move-object/from16 v33, v23

    move/from16 v40, v24

    move-object/from16 v36, v26

    move-object/from16 v37, v27

    .line 419
    :goto_24
    new-instance v0, Lcom/sec/ims/Dialog;

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v47}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 425
    :cond_16
    new-instance v0, Lcom/sec/ims/DialogEvent;

    invoke-direct {v0, v4, v5}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 426
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsed dialog xml: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 267
    :cond_17
    new-instance v0, Ljavax/xml/xpath/XPathExpressionException;

    const-string v1, "invalid entity"

    invoke-direct {v0, v1}, Ljavax/xml/xpath/XPathExpressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
