.class Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SXICTQMVoLTECryptService.java"

# interfaces
.implements Lcom/voltecrypt/service/SXICTQMVoLTECryptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/voltecrypt/service/SXICTQMVoLTECryptService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
