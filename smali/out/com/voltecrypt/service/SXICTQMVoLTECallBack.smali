.class public interface abstract Lcom/voltecrypt/service/SXICTQMVoLTECallBack;
.super Ljava/lang/Object;
.source "SXICTQMVoLTECallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voltecrypt/service/SXICTQMVoLTECallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetVoLTEStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetVoLTEStatusComment()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHangUp(Lcom/voltecrypt/service/SxHangUpEntity;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRequestAuthentication(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRequestPeerProfileStatus(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
