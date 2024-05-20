.class Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;
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
    name = "ReadRootAppParm"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readParam(Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
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

    .line 981
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 982
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const-string v2, "root/application/0/"

    invoke-virtual {v1, v2, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p2

    const-string v1, "home_network_domain_name"

    .line 983
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "private_user_identity"

    .line 984
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "keep_alive_enabled"

    .line 985
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Timer_T1"

    .line 986
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Timer_T2"

    .line 987
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "Timer_T4"

    .line 988
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "RegRetryBaseTime"

    .line 989
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "RegRetryMaxTime"

    .line 990
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "public_user_identity"

    .line 996
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 997
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->-$$Nest$mgetPublicUserIdentities(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v0

    .line 998
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 999
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->-$$Nest$mgetPublicUserIdentitiesBackwardCompatibility(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v1, "address"

    .line 1001
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "addresstype"

    .line 1002
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    return-object v0

    .line 1003
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->-$$Nest$mgetLboPcscfAddresses(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v0

    .line 1004
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 1005
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->-$$Nest$mgetLboPcscfAddressesBackwardCompatibility(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v0

    :goto_2
    return-object v0

    .line 993
    :cond_6
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 994
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "root/application/0/3gpp_ims/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    :goto_4
    return-object p0
.end method
