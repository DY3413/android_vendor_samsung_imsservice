.class public Lcom/sec/internal/ims/servicemodules/im/strategy/UsccStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;
.source "UsccStrategy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 19
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v0, 0x1

    aput-object p2, p0, v0

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 20
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->NONE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object p0
.end method