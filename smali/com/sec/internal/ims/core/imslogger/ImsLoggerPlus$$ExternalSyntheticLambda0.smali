.class public final synthetic Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;

    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;->$r8$lambda$3PqGK2-Oa_e5PDWL2pRbrWU0ZqM(Lcom/sec/internal/ims/core/imslogger/ImsLoggerPlus;Landroid/content/Intent;)V

    return-void
.end method
