.class Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsLogAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/diagnosis/ImsLogAgent;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;->this$0:Lcom/sec/internal/ims/diagnosis/ImsLogAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 103
    invoke-static {}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.sec.imsservice.ACTION_DAILY_REPORT_EXPIRED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "simslot"

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "feature"

    .line 107
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "bigdata_info"

    .line 108
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 110
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;->this$0:Lcom/sec/internal/ims/diagnosis/ImsLogAgent;

    invoke-static {p0, p1, v0, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->-$$Nest$monCsCallInfoReceived(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;IILjava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/diagnosis/ImsLogAgent$1;->this$0:Lcom/sec/internal/ims/diagnosis/ImsLogAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgent;->-$$Nest$monDailyReport(Lcom/sec/internal/ims/diagnosis/ImsLogAgent;)V

    :goto_0
    return-void
.end method
