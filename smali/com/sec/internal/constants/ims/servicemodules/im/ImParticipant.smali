.class public Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
.super Ljava/util/Observable;
.source "ImParticipant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;,
        Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    }
.end annotation


# static fields
.field public static final NO_ALIAS:Ljava/lang/String; = ""


# instance fields
.field private final mChatId:Ljava/lang/String;

.field private mId:I

.field private mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

.field private mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

.field private final mUri:Lcom/sec/ims/util/ImsUri;

.field private mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 51
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mId:I

    .line 52
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 54
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 55
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 56
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    const-string v0, ""

    .line 28
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 38
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->REGULAR:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 42
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    .line 44
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    .line 45
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 46
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 243
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 246
    :cond_2
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 247
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 248
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 251
    :cond_3
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 254
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez p0, :cond_6

    .line 255
    iget-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    .line 257
    :cond_6
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mId:I

    return p0
.end method

.method public getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-object p0
.end method

.method public getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    return-object p0
.end method

.method public getUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getUserAlias()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 93
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 231
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mId:I

    return-void
.end method

.method public setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    return-void
.end method

.method public setType(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    return-void
.end method

.method public setUserAlias(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImParticipant [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 221
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->mUserAlias:Ljava/lang/String;

    .line 222
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
