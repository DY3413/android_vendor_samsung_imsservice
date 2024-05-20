.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;
.super Landroid/database/ContentObserver;
.source "UtServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V
    .locals 0

    .line 1283
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1286
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 1287
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetmIsConfigured(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)[Z

    move-result-object p2

    const/4 v0, 0x0

    aput-boolean v0, p2, p1

    const-string p2, "UtServiceModule"

    const-string v0, "Loaded Config Data"

    .line 1288
    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1289
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1290
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
