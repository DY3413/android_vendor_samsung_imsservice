.class public Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;
.super Ljava/lang/Object;
.source "RegistrationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/imsphone/RegistrationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisteredToken"
.end annotation


# instance fields
.field private mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

.field private mRegisteredFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/imsphone/SipDelegateConfig;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/imsphone/SipDelegateConfig;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;->mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    .line 218
    iput-object p2, p0, Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;->mRegisteredFeatureTags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getDelegateConfig()Lcom/sec/internal/imsphone/SipDelegateConfig;
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;->mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    return-object p0
.end method

.method public getRegisteredFeatureTags()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object p0, p0, Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;->mRegisteredFeatureTags:Ljava/util/Set;

    return-object p0
.end method
