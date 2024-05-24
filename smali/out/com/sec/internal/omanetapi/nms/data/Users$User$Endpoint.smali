.class public Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint;
.super Ljava/lang/Object;
.source "Users.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/omanetapi/nms/data/Users$User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Endpoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$JoiningInfo;,
        Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$DisconnectionInfo;
    }
.end annotation


# instance fields
.field public mDisconnectionInfo:Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$DisconnectionInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disconnection-info"
    .end annotation
.end field

.field public mDisconnectionMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disconnection-method"
    .end annotation
.end field

.field public mEntity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entity"
    .end annotation
.end field

.field public mJoingingInfo:Lcom/sec/internal/omanetapi/nms/data/Users$User$Endpoint$JoiningInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "joining-info"
    .end annotation
.end field

.field public mState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field public mStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
