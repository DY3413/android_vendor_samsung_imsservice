.class Lcom/sec/internal/ims/util/RcsSettingsUtils$SimEventListener;
.super Ljava/lang/Object;
.source "RcsSettingsUtils.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/RcsSettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/RcsSettingsUtils;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/util/RcsSettingsUtils;)V
    .registers 2

    .line 857
    iput-object p1, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils$SimEventListener;->this$0:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/util/RcsSettingsUtils;Lcom/sec/internal/ims/util/RcsSettingsUtils$SimEventListener-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils$SimEventListener;-><init>(Lcom/sec/internal/ims/util/RcsSettingsUtils;)V

    return-void
.end method


# virtual methods
.method public onReady(IZ)V
    .registers 6

    .line 860
    iget-object v0, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils$SimEventListener;->this$0:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    invoke-static {v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/util/RcsSettingsUtils;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReady: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " absent="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_25

    return-void

    .line 865
    :cond_25
    iget-object p0, p0, Lcom/sec/internal/ims/util/RcsSettingsUtils$SimEventListener;->this$0:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    invoke-virtual {p0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->loadCCAndAC()V

    .line 866
    invoke-static {}, Lcom/sec/internal/ims/util/PhoneUtils;->initialize()V

    return-void
.end method
