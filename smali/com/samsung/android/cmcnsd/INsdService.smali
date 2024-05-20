.class public interface abstract Lcom/samsung/android/cmcnsd/INsdService;
.super Ljava/lang/Object;
.source "INsdService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/INsdService$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerNetworkCallback(ILcom/samsung/android/cmcnsd/INsdNetworkCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
