.class public Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
.super Ljava/lang/Object;
.source "LinkPropertiesWrapper.java"


# instance fields
.field private final mLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    :try_start_3
    const-class v0, Landroid/net/LinkProperties;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_16} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_16} :catch_17
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_16} :catch_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Landroid/net/LinkProperties;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->describeContents()I

    move-result p0

    return p0
.end method

.method public getAddresses()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAddresses"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 77
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllAddresses()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAllAddresses"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 88
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDnsServers()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDomains()Ljava/lang/String;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLinkAddresses()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public getPcscfServers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPcscfServers"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 149
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRoutes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasGlobalIPv6Address()Z
    .registers 5

    const/4 v0, 0x0

    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasGlobalIPv6Address"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 116
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public hasIPv4Address()Z
    .registers 5

    const/4 v0, 0x0

    .line 137
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasIPv4Address"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 138
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public hasIPv6DefaultRoute()Z
    .registers 5

    const/4 v0, 0x0

    .line 126
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasIPv6DefaultRoute"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 127
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public isIdenticalInterfaceName(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z
    .registers 8

    const/4 v0, 0x0

    .line 98
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isIdenticalInterfaceName"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/net/LinkProperties;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v2, v3, [Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    aput-object p1, v2, v0

    .line 100
    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_28} :catch_29
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_28} :catch_29
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_28} :catch_29

    return p0

    :catch_29
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 62
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0, p1, p2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
