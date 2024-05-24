.class public abstract Lcom/voltecrypt/service/SXICTQMVoLTECallBack$Stub;
.super Landroid/os/Binder;
.source "SXICTQMVoLTECallBack.java"

# interfaces
.implements Lcom/voltecrypt/service/SXICTQMVoLTECallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voltecrypt/service/SXICTQMVoLTECallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voltecrypt/service/SXICTQMVoLTECallBack$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/voltecrypt/service/SXICTQMVoLTECallBack;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.voltecrypt.service.SXICTQMVoLTECallBack"

    .line 94
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 95
    instance-of v1, v0, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz v1, :cond_13

    .line 96
    check-cast v0, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    return-object v0

    .line 98
    :cond_13
    new-instance v0, Lcom/voltecrypt/service/SXICTQMVoLTECallBack$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
