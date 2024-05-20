.class public Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
.super Ljava/lang/Object;
.source "NsdNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/network/NsdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mAuthenticationToken:Ljava/lang/String;

.field public mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

.field public mHostAddress:Ljava/lang/String;

.field public final mInterfaceNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mInterfaceNameList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .locals 2

    .line 181
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;-><init>()V

    .line 182
    iget-boolean v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mIsConnected:Z

    invoke-static {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->access$002(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Z)Z

    .line 183
    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mHostAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->access$102(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mAuthenticationToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->access$202(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->access$302(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 186
    invoke-static {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->access$400(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mInterfaceNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public setCapabilities(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    return-object p0
.end method
