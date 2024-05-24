.class public Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;
.super Ljava/lang/Object;
.source "IdcExtra.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;,
        Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Key;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IdcExtra"


# instance fields
.field private mAction:I

.field private mChangeType:Ljava/lang/String;

.field private mDcAppId:I

.field private mExtraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSdp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)V
    .registers 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    .line 115
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->-$$Nest$fgetmAction(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mAction:I

    .line 116
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->-$$Nest$fgetmSdp(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mSdp:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->-$$Nest$fgetmChangeType(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mChangeType:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;->-$$Nest$fgetmDcAppId(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mDcAppId:I

    .line 119
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->buildMap()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    .line 24
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->parse(Ljava/lang/String;)Z

    return-void
.end method

.method private buildMap()V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mAction:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mSdp:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_16

    move-object v1, v2

    :cond_16
    const-string/jumbo v3, "sdp"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mChangeType:Ljava/lang/String;

    if-nez v1, :cond_23

    goto :goto_24

    :cond_23
    move-object v2, v1

    :goto_24
    const-string v1, "change_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mDcAppId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "dc_app_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getBuilder()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;
    .registers 1

    .line 130
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .registers 5

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    :try_start_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_26

    const-string v2, ","

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_4b} :catch_51

    goto :goto_f

    .line 90
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_51
    move-exception p0

    .line 87
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encode Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public getAction()I
    .registers 1

    .line 99
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mAction:I

    return p0
.end method

.method public getChangeType()Ljava/lang/String;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mChangeType:Ljava/lang/String;

    return-object p0
.end method

.method public getDcAppId()I
    .registers 1

    .line 111
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mDcAppId:I

    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_15} :catch_16

    :cond_15
    return v0

    .line 42
    :catch_16
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInt Error NumberFormatException: K("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), Value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getSdp()Ljava/lang/String;
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mSdp:Ljava/lang/String;

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_13

    :cond_11
    const-string p0, ""

    :goto_13
    return-object p0
.end method

.method public init()V
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public parse(Ljava/lang/String;)Z
    .registers 10

    .line 50
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->init()V

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    :try_start_b
    const-string v0, ","

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 58
    array-length v0, p1

    move v2, v1

    :goto_13
    const/4 v3, 0x1

    if-ge v2, v0, :cond_54

    aget-object v4, p1, v2

    const-string v5, ":"

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 60
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3d

    .line 63
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    aget-object v5, v5, v1

    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 61
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fails with : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_54} :catch_55

    :cond_54
    return v3

    :catch_55
    move-exception p1

    .line 67
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->mExtraMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return v1
.end method
