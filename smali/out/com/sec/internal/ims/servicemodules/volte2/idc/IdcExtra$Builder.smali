.class public Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;
.super Ljava/lang/Object;
.source "IdcExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:I

.field private mChangeType:Ljava/lang/String;

.field private mDcAppId:I

.field private mSdp:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAction(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mAction:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChangeType(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mChangeType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDcAppId(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mDcAppId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSdp(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mSdp:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;
    .registers 3

    .line 164
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra-IA;)V

    return-object v0
.end method

.method public setAction(I)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;
    .registers 2

    .line 144
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mAction:I

    return-object p0
.end method

.method public setChangeType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mChangeType:Ljava/lang/String;

    return-object p0
.end method

.method public setDcAppId(I)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;
    .registers 2

    .line 159
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mDcAppId:I

    return-object p0
.end method

.method public setSdp(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->mSdp:Ljava/lang/String;

    return-object p0
.end method
