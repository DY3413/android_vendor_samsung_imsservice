.class public final synthetic Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;->$r8$lambda$RFX3Y0pNMUpYmelVLM7iuUMo4v8(Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;Z)V

    return-void
.end method
