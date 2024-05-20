.class Lcom/msc/sa/aidl/ISACallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISACallback.java"

# interfaces
.implements Lcom/msc/sa/aidl/ISACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msc/sa/aidl/ISACallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/msc/sa/aidl/ISACallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/msc/sa/aidl/ISACallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
