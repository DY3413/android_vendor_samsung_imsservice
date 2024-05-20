.class public Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;
.super Ljava/lang/Object;
.source "DefaultCloudMessageStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NmsNotificationType"
.end annotation


# instance fields
.field private contractType:I

.field private dataType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->setDataType(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->setContractType(I)V

    return-void
.end method


# virtual methods
.method public getContractType()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->contractType:I

    return p0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->dataType:Ljava/lang/String;

    return-object p0
.end method

.method public setContractType(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->contractType:I

    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->dataType:Ljava/lang/String;

    return-void
.end method
