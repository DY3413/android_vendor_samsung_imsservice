.class Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;
.super Ljava/lang/Object;
.source "NSDSContentProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->connectToNSDSMultiSimService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;)V
    .registers 2

    .line 828
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 831
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected: Connected to NSDSMultiSimService."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    iget-object p1, p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 833
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connect DB"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    .line 836
    :cond_29
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 841
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected: Disconnected."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    return-void
.end method
