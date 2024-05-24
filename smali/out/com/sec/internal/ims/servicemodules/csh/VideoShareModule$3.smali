.class Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$3;
.super Ljava/lang/Object;
.source "VideoShareModule.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->toggleCamera(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V
    .registers 2

    .line 447
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .registers 2

    .line 454
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IToggleCamera onFailure"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .registers 1

    .line 0
    return-void
.end method
