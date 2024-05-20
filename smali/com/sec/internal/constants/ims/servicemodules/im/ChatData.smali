.class public Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
.super Ljava/util/Observable;
.source "ChatData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;,
        Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    }
.end annotation


# instance fields
.field private final mChatId:Ljava/lang/String;

.field private mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field private mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field private mContributionId:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field private mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

.field private final mIconPath:Ljava/lang/String;

.field private mId:I

.field private mInsertedTimeStamp:J

.field private mIsChatbotRole:Z

.field private mIsIconUpdateRequiredOnSessionEstablished:Z

.field private mIsMuted:Z

.field private mIsReusable:Z

.field private final mMaxParticipantCount:I

.field private mOwnGroupAlias:Ljava/lang/String;

.field private mOwnIMSI:Ljava/lang/String;

.field private mOwnNumber:Ljava/lang/String;

.field private mSessionUri:Lcom/sec/ims/util/ImsUri;

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

.field private mSubject:Ljava/lang/String;

.field private mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;Ljava/lang/String;ZILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZJLjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)V
    .locals 7

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p18

    move-object/from16 v3, p19

    move-object/from16 v4, p20

    .line 75
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 25
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 26
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move v5, p1

    .line 76
    iput v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    move-object v5, p2

    .line 77
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    move-object v5, p3

    .line 78
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    move-object v5, p4

    .line 79
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    move-object v5, p5

    .line 80
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-object v5, p6

    .line 81
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 82
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    move v5, p8

    .line 83
    iput-boolean v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    move/from16 v5, p9

    .line 84
    iput v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    move-object/from16 v5, p10

    .line 85
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v5, p11

    .line 86
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    move-object/from16 v5, p12

    .line 87
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    move-object/from16 v5, p13

    .line 88
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    move/from16 v5, p14

    .line 89
    iput-boolean v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    move-wide/from16 v5, p15

    .line 90
    iput-wide v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    move-object/from16 v5, p17

    .line 91
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 92
    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    move/from16 v5, p24

    .line 93
    iput-boolean v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    move-object/from16 v5, p25

    .line 94
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 97
    :cond_0
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-direct {v5, p7, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    :cond_1
    if-nez v4, :cond_2

    if-nez p21, :cond_2

    if-eqz p22, :cond_4

    .line 101
    :cond_2
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    if-nez p23, :cond_3

    .line 102
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    :goto_0
    move-object p1, v1

    move-object p2, v2

    move-object/from16 p3, p21

    move-object/from16 p4, p22

    move-object/from16 p5, p20

    move-object/from16 p6, p23

    invoke-direct/range {p1 .. p6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 26
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    .line 52
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 54
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 57
    iput-object p10, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    const/16 p1, 0x64

    .line 58
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    .line 59
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 60
    iput-object p7, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    .line 63
    iput-object p9, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 64
    iput-object p11, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 65
    iput-object p12, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    if-eqz p4, :cond_0

    .line 68
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    :cond_0
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

    .line 469
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 472
    :cond_2
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 473
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 474
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 477
    :cond_3
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 480
    :cond_4
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    return-object p0
.end method

.method public getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object p0
.end method

.method public getContributionId()Ljava/lang/String;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    return-object p0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method public getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object p0
.end method

.method public getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    return-object p0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 191
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    return p0
.end method

.method public getMaxParticipantsCount()I
    .locals 0

    .line 428
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    return p0
.end method

.method public getOwnGroupAlias()Ljava/lang/String;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnIMSI()Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnPhoneNum()Ljava/lang/String;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 436
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isChatbotRole()Z
    .locals 0

    .line 312
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    return p0
.end method

.method public isGroupChat()Z
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p0

    return p0
.end method

.method public isIconUpdatedRequiredOnSessionEstablished()Z
    .locals 0

    .line 300
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsIconUpdateRequiredOnSessionEstablished:Z

    return p0
.end method

.method public isMuted()Z
    .locals 0

    .line 304
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    return p0
.end method

.method public isReusable()Z
    .locals 0

    .line 308
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    return p0
.end method

.method public setContributionId(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    return-void
.end method

.method public setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eq p1, v0, :cond_0

    .line 270
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 271
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public setIconUpdatedRequiredOnSessionEstablished(Z)V
    .locals 0

    .line 296
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsIconUpdateRequiredOnSessionEstablished:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    return-void
.end method

.method public setOwnIMSI(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 264
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public setOwnPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    return-void
.end method

.method public setSessionUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatData [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    .line 444
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 447
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxParticipantCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsReusable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInsertedTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnIMSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 455
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsChatbotRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 0

    .line 423
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 424
    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-eq v0, p1, :cond_0

    .line 180
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 181
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 398
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateIsChatbotRole(Z)V
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    if-eq p1, v0, :cond_0

    .line 417
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    .line 418
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateIsMuted(Z)V
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    if-eq v0, p1, :cond_0

    .line 232
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    .line 233
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateIsReusable(Z)V
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    if-eq p1, v0, :cond_0

    .line 410
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    .line 411
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateOwnGroupAlias(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    .line 404
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    if-eq p1, v0, :cond_0

    .line 377
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 378
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateSubject(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 385
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 391
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 392
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method
