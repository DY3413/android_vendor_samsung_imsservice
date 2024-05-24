.class public Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
.super Ljava/util/Observable;
.source "ChatData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;,
        Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    }
.end annotation


# instance fields
.field private final mChatId:Ljava/lang/String;

.field private mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field private mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field private mContributionId:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mCreatedBy:Lcom/sec/ims/util/ImsUri;

.field private mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field private mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

.field private final mIconPath:Ljava/lang/String;

.field private mId:I

.field private mInsertedTimeStamp:J

.field private mInvitedBy:Lcom/sec/ims/util/ImsUri;

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
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;Ljava/lang/String;ZILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZJLjava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)V
    .registers 35

    move-object v0, p0

    move-object v1, p7

    move-object/from16 v2, p18

    move-object/from16 v3, p19

    move-object/from16 v4, p20

    .line 94
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 31
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 32
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 33
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move v5, p1

    .line 95
    iput v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    move-object v5, p2

    .line 96
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    move-object v5, p3

    .line 97
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    move-object v5, p4

    .line 98
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    move-object v5, p5

    .line 99
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-object v5, p6

    .line 100
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 101
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    move v5, p8

    .line 102
    iput-boolean v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    move/from16 v5, p9

    .line 103
    iput v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    move-object/from16 v5, p10

    .line 104
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v5, p11

    .line 105
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    move-object/from16 v5, p12

    .line 106
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    move-object/from16 v5, p13

    .line 107
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    move/from16 v5, p14

    .line 108
    iput-boolean v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    move-wide/from16 v5, p15

    .line 109
    iput-wide v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    move-object/from16 v5, p17

    .line 110
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 111
    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    move/from16 v5, p24

    .line 112
    iput-boolean v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    move-object/from16 v5, p25

    .line 113
    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-nez v1, :cond_5c

    if-nez v2, :cond_5c

    if-eqz v3, :cond_63

    .line 116
    :cond_5c
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-direct {v5, p7, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    iput-object v5, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    :cond_63
    if-nez v4, :cond_6d

    if-nez p21, :cond_6d

    if-eqz p22, :cond_6a

    goto :goto_6d

    :cond_6a
    :goto_6a
    move-object/from16 v1, p26

    goto :goto_86

    .line 120
    :cond_6d
    :goto_6d
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    if-nez p23, :cond_74

    .line 121
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_FILE:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    goto :goto_76

    :cond_74
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;->ICON_TYPE_URI:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;

    :goto_76
    move-object p1, v1

    move-object p2, v2

    move-object/from16 p3, p21

    move-object/from16 p4, p22

    move-object/from16 p5, p20

    move-object/from16 p6, p23

    invoke-direct/range {p1 .. p6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData$IconType;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    goto :goto_6a

    .line 125
    :goto_86
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    move-object/from16 v1, p27

    .line 126
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)V
    .registers 16

    .line 60
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 31
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 32
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 33
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    .line 61
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 63
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 66
    iput-object p10, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    const/16 p1, 0x64

    .line 67
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    .line 68
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 69
    iput-object p7, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    .line 70
    iput-object p8, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    .line 73
    iput-object p9, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 74
    iput-object p11, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    .line 75
    iput-object p12, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    if-eqz p4, :cond_3e

    .line 78
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 81
    :cond_3e
    iget-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_48

    goto :goto_4c

    .line 82
    :cond_48
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p1

    .line 83
    :goto_4c
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isMcsSupported(I)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 84
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getEpochNanosec()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    .line 87
    :cond_58
    iput-object p13, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    .line 88
    iput-object p14, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 523
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 526
    :cond_13
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    .line 527
    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 528
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-eqz v2, :cond_27

    return v1

    .line 531
    :cond_1e
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 534
    :cond_27
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    if-ne p0, p1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    return-object p0
.end method

.method public getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object p0
.end method

.method public getContributionId()Ljava/lang/String;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    return-object p0
.end method

.method public getConversationId()Ljava/lang/String;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method public getCreatedBy()Lcom/sec/ims/util/ImsUri;
    .registers 1

    .line 346
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object p0
.end method

.method public getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;
    .registers 1

    .line 322
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    return-object p0
.end method

.method public getIconPath()Ljava/lang/String;
    .registers 1

    .line 318
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconPath:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .registers 1

    .line 213
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    return p0
.end method

.method public getInsertedTimeStamp()J
    .registers 3

    .line 259
    iget-wide v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    return-wide v0
.end method

.method public getInvitedBy()Lcom/sec/ims/util/ImsUri;
    .registers 1

    .line 350
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getMaxParticipantsCount()I
    .registers 1

    .line 480
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mMaxParticipantCount:I

    return p0
.end method

.method public getOwnGroupAlias()Ljava/lang/String;
    .registers 1

    .line 264
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnIMSI()Ljava/lang/String;
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnPhoneNum()Ljava/lang/String;
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionUri()Lcom/sec/ims/util/ImsUri;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    return-object p0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public getSubjectData()Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;
    .registers 1

    .line 314
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 487
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatId:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 488
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isChatbotRole()Z
    .registers 1

    .line 342
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    return p0
.end method

.method public isGroupChat()Z
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result p0

    return p0
.end method

.method public isIconUpdatedRequiredOnSessionEstablished()Z
    .registers 1

    .line 330
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsIconUpdateRequiredOnSessionEstablished:Z

    return p0
.end method

.method public isMuted()Z
    .registers 1

    .line 334
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    return p0
.end method

.method public isReusable()Z
    .registers 1

    .line 338
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    return p0
.end method

.method public setContributionId(Ljava/lang/String;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mContributionId:Ljava/lang/String;

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mConversationId:Ljava/lang/String;

    return-void
.end method

.method public setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 295
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eq p1, v0, :cond_d

    .line 296
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 297
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_d
    return-void
.end method

.method public setIconUpdatedRequiredOnSessionEstablished(Z)V
    .registers 2

    .line 326
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsIconUpdateRequiredOnSessionEstablished:Z

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 217
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mId:I

    return-void
.end method

.method public setInsertedTimeStamp(J)V
    .registers 3

    .line 261
    iput-wide p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInsertedTimeStamp:J

    return-void
.end method

.method public setOwnIMSI(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 288
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 289
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnIMSI:Ljava/lang/String;

    .line 290
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_11
    return-void
.end method

.method public setOwnPhoneNum(Ljava/lang/String;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnNumber:Ljava/lang/String;

    return-void
.end method

.method public setSessionUri(Lcom/sec/ims/util/ImsUri;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 306
    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 494
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

    .line 496
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

    .line 499
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

    .line 507
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsChatbotRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCreatedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    .line 510
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInvitedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    .line 511
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .registers 2

    .line 475
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 476
    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public updateChatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-eq v0, p1, :cond_b

    .line 202
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 203
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_b
    return-void
.end method

.method public updateCreatedBy(Lcom/sec/ims/util/ImsUri;)V
    .registers 3

    .line 461
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    if-eq p1, v0, :cond_b

    .line 462
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    .line 463
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_b
    return-void
.end method

.method public updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .registers 2

    .line 435
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 436
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateInvitedBy(Lcom/sec/ims/util/ImsUri;)V
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    if-eq p1, v0, :cond_b

    .line 469
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    .line 470
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_b
    return-void
.end method

.method public updateIsChatbotRole(Z)V
    .registers 3

    .line 454
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    if-eq p1, v0, :cond_b

    .line 455
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsChatbotRole:Z

    .line 456
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_b
    return-void
.end method

.method public updateIsMuted(Z)V
    .registers 3

    .line 253
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    if-eq v0, p1, :cond_b

    .line 254
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsMuted:Z

    .line 255
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_b
    return-void
.end method

.method public updateIsReusable(Z)V
    .registers 3

    .line 447
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    if-eq p1, v0, :cond_b

    .line 448
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mIsReusable:Z

    .line 449
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_b
    return-void
.end method

.method public updateOwnGroupAlias(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 440
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 441
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mOwnGroupAlias:Ljava/lang/String;

    .line 442
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_11
    return-void
.end method

.method public updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    if-eq p1, v0, :cond_b

    .line 415
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mState:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 416
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_b
    return-void
.end method

.method public updateSubject(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 421
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 422
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubject:Ljava/lang/String;

    .line 423
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_11
    return-void
.end method

.method public updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 429
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    .line 430
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_9
    return-void
.end method
