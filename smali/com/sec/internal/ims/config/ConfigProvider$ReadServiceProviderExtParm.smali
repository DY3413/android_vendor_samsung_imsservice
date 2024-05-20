.class Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;
.super Ljava/lang/Object;
.source "ConfigProvider.java"

# interfaces
.implements Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/ConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadServiceProviderExtParm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;)V
    .locals 0

    .line 1397
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readParam(Ljava/lang/String;I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "fthttpGroupChat"

    .line 1401
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "root/application/1/serviceproviderext/"

    if-eqz v0, :cond_0

    .line 1402
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    .line 1403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "chatbot/Username"

    .line 1404
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "chatbot/Password"

    .line 1405
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1409
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string v0, "root/serviceproviderext/"

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    .line 1410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 1406
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string v0, "root/application/1/serviceproviderext/chatbot/"

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    .line 1407
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
