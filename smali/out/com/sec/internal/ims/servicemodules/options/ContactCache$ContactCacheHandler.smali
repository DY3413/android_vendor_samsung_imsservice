.class Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;
.super Landroid/os/Handler;
.source "ContactCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/ContactCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactCacheHandler"
.end annotation


# static fields
.field static final HANDLE_START_CONTACT_SYNC:I


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Landroid/os/Looper;)V
    .registers 3

    .line 733
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    .line 734
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 738
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    goto :goto_39

    .line 740
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HANDLE_START_CONTACT_SYNC : "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getContactProviderStatus()I

    move-result p1

    if-eqz p1, :cond_34

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    goto :goto_34

    :cond_1a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_39

    .line 746
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContactProvider is in busy state"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x12060003

    const-string v0, "N,CP:BUSY"

    .line 747
    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    goto :goto_39

    .line 744
    :cond_34
    :goto_34
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->onStartContactSync()V

    :cond_39
    :goto_39
    return-void
.end method
