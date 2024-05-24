.class public final synthetic Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->$r8$lambda$QqFsBkwHtVoiyPGL0uxFWJ-fO0E(Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;Z)V

    return-void
.end method
