.class public Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;
.super Landroid/database/ContentObserver;
.source "ContactCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/ContactCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContactObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Landroid/os/Handler;)V
    .registers 3

    .line 638
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    .line 639
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 644
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "===== Contact updated. ====="

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    if-nez p1, :cond_19

    .line 647
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "No SIM available. bail."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 650
    :cond_19
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    return-void
.end method
