.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

.field public final synthetic f$1:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda7;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda7;->f$1:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda7;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor$$ExternalSyntheticLambda7;->f$1:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;->$r8$lambda$LRVLaCHkjV2KQD6FvytNAKhNxGI(Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    return-void
.end method
