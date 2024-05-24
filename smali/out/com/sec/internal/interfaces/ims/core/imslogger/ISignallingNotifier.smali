.class public interface abstract Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;
.super Ljava/lang/Object;
.source "ISignallingNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    }
.end annotation


# static fields
.field public static final ACTION_SIP_MESSAGE:Ljava/lang/String; = "com.sec.imsservice.sip.signalling"

.field public static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.sip.signalling.READ_PERMISSION"


# virtual methods
.method public abstract send(Ljava/lang/Object;)Z
.end method
