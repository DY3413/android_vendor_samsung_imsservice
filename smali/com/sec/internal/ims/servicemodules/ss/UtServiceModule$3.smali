.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;
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

    .line 1166
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$mperformExemptUtService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    return-void
.end method
