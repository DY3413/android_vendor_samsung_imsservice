.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;
.super Ljava/lang/Object;
.source "DialogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createAutoconfigBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 0

    .line 693
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 696
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 697
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result p2

    const-string v0, "NegativeButton"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 698
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fputmNextCancel(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V

    .line 699
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmSemaphore(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method