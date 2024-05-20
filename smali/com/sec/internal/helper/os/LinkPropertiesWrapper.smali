.class public Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
.super Ljava/lang/Object;
.source "LinkPropertiesWrapper.java"


# instance fields
.field private final mLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 36
    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Landroid/net/LinkProperties;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->describeContents()I

    move-result p0

    return p0
.end method

.method public getAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAddresses"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAllAddresses"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 94
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDnsServers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDomains()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLinkAddresses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method public getPcscfServers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPcscfServers"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRoutes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasGlobalIPv6Address()Z
    .locals 4

    const/4 v0, 0x0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasGlobalIPv6Address"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 122
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public hasIPv4Address()Z
    .locals 4

    const/4 v0, 0x0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasIPv4Address"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 144
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public hasIPv6DefaultRoute()Z
    .locals 4

    const/4 v0, 0x0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasIPv6DefaultRoute"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 133
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public isIdenticalInterfaceName(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z
    .locals 6

    const/4 v0, 0x0

    .line 104
    :try_start_0
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

    .line 106
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    new-array v2, v3, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    aput-object p1, v2, v0

    .line 106
    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0, p1, p2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
