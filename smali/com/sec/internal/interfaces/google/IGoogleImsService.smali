.class public interface abstract Lcom/sec/internal/interfaces/google/IGoogleImsService;
.super Ljava/lang/Object;
.source "IGoogleImsService.java"


# virtual methods
.method public abstract getRcsClientConfiguration(II)Ljava/lang/String;
.end method

.method public abstract notifyIntImsConfigChanged(III)V
.end method

.method public abstract notifyProvisionedIntValueChanged(III)V
.end method

.method public abstract notifyProvisionedStringValueChanged(IILjava/lang/String;)V
.end method

.method public abstract notifyRcsAutoConfigurationErrorReceived(IILjava/lang/String;)V
.end method

.method public abstract notifyRcsAutoConfigurationReceived(I[BZ)V
.end method

.method public abstract notifyRcsAutoConfigurationRemoved(I)V
.end method

.method public abstract notifyRcsPreConfigurationReceived(I[B)V
.end method

.method public abstract notifyStringImsConfigChanged(IILjava/lang/String;)V
.end method

.method public abstract onPublishUpdated(IILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onRemoteCapabilityRequest(ILandroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRequestPublishCapabilities(II)V
.end method

.method public abstract onUnPublish(I)V
.end method

.method public abstract updateCapabilities(ILandroid/telephony/ims/feature/ImsFeature$Capabilities;)V
.end method

.method public abstract updateCapabilities(I[I[Z)V
.end method

.method public abstract updateRcsCapabilities(ILandroid/telephony/ims/feature/ImsFeature$Capabilities;)V
.end method

.method public abstract updateRcsCapabilities(I[I[Z)V
.end method
