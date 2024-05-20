.class public interface abstract Lcom/sec/internal/interfaces/google/ISipTransportNotifier;
.super Ljava/lang/Object;
.source "ISipTransportNotifier.java"


# virtual methods
.method public abstract getAllocatedFeatureTags(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSipDelegate(I)Z
.end method

.method public abstract notifyDeregistering(Lcom/sec/ims/ImsRegistration;)V
.end method

.method public abstract onMessageSendFailure(Ljava/lang/String;I)V
.end method

.method public abstract onPaniUpdated(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUpdateRegistrationTimeout(I)V
.end method

.method public abstract sendSip(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract updateAdhocProfile(ILcom/sec/ims/settings/ImsProfile;Z)V
.end method
