.class public Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;
.super Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;
.source "XmlParserAdapterMultipleServer.java"


# static fields
.field private static final ATTR_VALUE_ACCESS_CONTROL_APPID:Ljava/lang/String; = "app-id"

.field private static final LOG_TAG:Ljava/lang/String; = "XmlParserAdapterMultipleServer"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 42
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    .line 43
    sget-object v0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Init XmlParserAdapterMultipleServer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;->mListTagName:Ljava/util/Map;

    const-string/jumbo v1, "server"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;->mListTagName:Ljava/util/Map;

    const-string v0, "app-id"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public parseEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;->parseEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    const-string p0, "app-id"

    .line 51
    invoke-interface {p4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
