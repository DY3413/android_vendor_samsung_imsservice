.class Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$2;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "NSDSModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$mremoveFromRegiListOnDeregistered(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Lcom/sec/ims/ImsRegistration;)V

    .line 217
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    .line 218
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->-$$Nest$meditRegiListOnRegistered(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;Lcom/sec/ims/ImsRegistration;)V

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
