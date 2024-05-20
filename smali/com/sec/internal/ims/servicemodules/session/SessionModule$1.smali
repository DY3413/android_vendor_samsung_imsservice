.class Lcom/sec/internal/ims/servicemodules/session/SessionModule$1;
.super Landroid/telephony/PhoneStateListener;
.source "SessionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/session/SessionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/session/SessionModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/session/SessionModule;)V
    .locals 0

    .line 1234
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 1238
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call state is changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->-$$Nest$fputcallState(Lcom/sec/internal/ims/servicemodules/session/SessionModule;I)V

    return-void
.end method
