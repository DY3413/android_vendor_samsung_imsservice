.class Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;
.super Ljava/lang/Object;
.source "DialogXmlParser.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, "dins"

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string/jumbo p0, "urn:ietf:params:xml:ns:dialog-info"

    return-object p0

    :cond_c
    const-string/jumbo p0, "sa"

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string/jumbo p0, "urn:ietf:params:xml:ns:sa-dialog-info"

    return-object p0

    :cond_19
    const-string p0, ""

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 99
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .registers 2

    .line 104
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
