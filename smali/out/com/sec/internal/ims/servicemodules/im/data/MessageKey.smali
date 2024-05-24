.class public Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;
.super Ljava/lang/Object;
.source "MessageKey.java"


# instance fields
.field public final chatId:Ljava/lang/String;

.field public final direction:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field public final imdnId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->imdnId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->direction:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 15
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 p3, 0x0

    :goto_d
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->chatId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 20
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 23
    :cond_6
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    .line 25
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->imdnId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->imdnId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->direction:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->direction:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->chatId:Ljava/lang/String;

    if-eqz p0, :cond_2a

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->chatId:Ljava/lang/String;

    if-eqz p1, :cond_2a

    .line 26
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    :cond_2a
    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->imdnId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->direction:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-nez p0, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_14
    xor-int p0, v0, v1

    return p0
.end method
