.class public Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerBasic;
.super Ljava/lang/Object;
.source "ServiceAvailabilityEventListenerBasic.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceAvailabilityUpdate(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
