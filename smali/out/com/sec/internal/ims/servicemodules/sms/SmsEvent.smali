.class public Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
.super Ljava/lang/Object;
.source "SmsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMSIP_CST_NOTI_INFO:I = 0xc

.field public static final SMSIP_CST_RECEIVED:I = 0xb


# instance fields
.field private mCallID:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mData:[B

.field private mEventType:I

.field private mLocalUri:Ljava/lang/String;

.field private mMessageID:I

.field private mPhoneId:I

.field private mReason:Ljava/lang/String;

.field private mReasonCode:I

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRetryAfter:I

.field private mRpRef:I

.field private mSmscAddr:Ljava/lang/String;

.field private mState:I

.field private mTpDcs:I

.field private mTpMr:I

.field private mTpPid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 266
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 28
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 29
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    const/4 v2, 0x0

    .line 36
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    .line 37
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    .line 38
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    .line 40
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    .line 41
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 43
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mPhoneId:I

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 96
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 28
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 29
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    const/4 v2, 0x0

    .line 36
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    .line 37
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    .line 38
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    .line 40
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    .line 41
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 43
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mPhoneId:I

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_38

    .line 78
    new-array v0, v1, [B

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 80
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    goto :goto_3a

    .line 82
    :cond_38
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    .line 84
    :goto_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/ImsRegistration;IIILjava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    .line 37
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    .line 38
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    .line 40
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    const/4 v2, -0x1

    .line 41
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    .line 43
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mPhoneId:I

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 64
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    .line 65
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    .line 66
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    .line 67
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    .line 68
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    .line 69
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    .line 70
    iput-object p9, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    .line 71
    iput p10, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    .line 72
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCallID()Ljava/lang/String;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getData()[B
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    return-object p0
.end method

.method public getEventType()I
    .registers 1

    .line 116
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    return p0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getLocalUri()Ljava/lang/String;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageID()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    return p0
.end method

.method public getPhoneId()I
    .registers 1

    .line 168
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mPhoneId:I

    return p0
.end method

.method public getReason()Ljava/lang/String;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method public getReasonCode()I
    .registers 1

    .line 124
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    return p0
.end method

.method public getRetryAfter()I
    .registers 1

    .line 148
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    return p0
.end method

.method public getRpRef()I
    .registers 1

    .line 108
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    return p0
.end method

.method public getSmscAddr()Ljava/lang/String;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .registers 1

    .line 104
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    return p0
.end method

.method public getTpDcs()I
    .registers 1

    .line 156
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    return p0
.end method

.method public getTpMr()I
    .registers 1

    .line 160
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    return p0
.end method

.method public getTpPid()I
    .registers 1

    .line 152
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    return p0
.end method

.method public setCallID(Ljava/lang/String;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setData([B)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    return-void
.end method

.method public setEventType(I)V
    .registers 2

    .line 188
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    return-void
.end method

.method public setImsRegistration(Lcom/sec/ims/ImsRegistration;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-void
.end method

.method public setLocalUri(Ljava/lang/String;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mLocalUri:Ljava/lang/String;

    return-void
.end method

.method public setMessageID(I)V
    .registers 2

    .line 192
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    return-void
.end method

.method public setPhoneId(I)V
    .registers 2

    .line 240
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mPhoneId:I

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    return-void
.end method

.method public setReasonCode(I)V
    .registers 2

    .line 196
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    return-void
.end method

.method public setRetryAfter(I)V
    .registers 2

    .line 220
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    return-void
.end method

.method public setRpRef(I)V
    .registers 2

    .line 180
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    return-void
.end method

.method public setSmscAddr(Ljava/lang/String;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 176
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    return-void
.end method

.method public setTpDcs(I)V
    .registers 2

    .line 228
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpDcs:I

    return-void
.end method

.method public setTpMr(I)V
    .registers 2

    .line 232
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    return-void
.end method

.method public setTpPid(I)V
    .registers 2

    .line 224
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpPid:I

    return-void
.end method

.method public toKeyDump()Ljava/lang/String;
    .registers 5

    .line 345
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    const/16 v1, 0x64

    const-string v2, ","

    const-string v3, ""

    if-lt v0, v1, :cond_22

    const/16 v1, 0x6a

    if-gt v0, v1, :cond_22

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    :cond_22
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    if-ltz v0, :cond_3a

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    :cond_3a
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    if-ltz v0, :cond_52

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mTpMr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    :cond_52
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    if-ltz v0, :cond_6a

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    :cond_6a
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    if-ltz v0, :cond_82

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    :cond_82
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    if-eqz v0, :cond_9a

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    :cond_9a
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    if-eqz p0, :cond_c9

    const-string v0, "application/vnd.3gpp.sms"

    .line 358
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "3gpp"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c9

    .line 361
    :cond_b8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "3gpp2"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_c9
    :goto_c9
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 282
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mState:I

    const-string v1, ""

    packed-switch v0, :pswitch_data_1f0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[NONE] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_97

    .line 302
    :pswitch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[INCOMING] state MT_RECEIVING_DELIVER_REPORT_ACK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_97

    .line 299
    :pswitch_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[INCOMING] state MT_SENDING_DELIVER_REPORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_97

    .line 293
    :pswitch_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[INCOMING] state MT_RECEIVING_STATUS_REPORT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_97

    .line 296
    :pswitch_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[INCOMING] state MT_RECEIVING_INCOMING_SMS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_97

    .line 290
    :pswitch_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[OUTGOING] state MO_RECEIVING_202_ACCEPTED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_97

    .line 287
    :pswitch_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[OUTGOING] state MO_RECEIVING_CALLID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_97

    .line 284
    :pswitch_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[OUTGOING] state MO_SENDING_START "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_97
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    const-string v2, "] "

    if-eqz v1, :cond_b6

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "contentType ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_b6
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    if-ltz v1, :cond_d3

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "messageID ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_d3
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    if-ltz v1, :cond_f1

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "rpRef ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRpRef:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_f1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    if-ltz v1, :cond_117

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reasonCode ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    const v3, 0x8000

    if-ge v0, v3, :cond_10b

    goto :goto_10d

    :cond_10b
    add-int/lit16 v0, v0, -0x8000

    .line 317
    :goto_10d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_117
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    if-eqz v1, :cond_135

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reason ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_135
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    if-eqz v1, :cond_152

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "callID ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_152
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    if-eqz v1, :cond_1cd

    .line 323
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v1

    const-string/jumbo v3, "smscAddr ["

    if-nez v1, :cond_177

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1cd

    .line 327
    :cond_177
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    const-string/jumbo v4, "sip:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_190

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    const-string/jumbo v4, "tel:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18e

    goto :goto_190

    :cond_18e
    const/4 v1, 0x3

    goto :goto_191

    :cond_190
    :goto_190
    const/4 v1, 0x7

    .line 330
    :goto_191
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_1b6

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1cd

    .line 333
    :cond_1b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_1cd
    :goto_1cd
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_1ef

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "regId ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1ef
    return-object v0

    :pswitch_data_1f0
    .packed-switch 0x64
        :pswitch_86
        :pswitch_74
        :pswitch_62
        :pswitch_50
        :pswitch_3e
        :pswitch_2c
        :pswitch_1a
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 250
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    if-eqz p2, :cond_e

    .line 251
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_12

    :cond_e
    const/4 p2, 0x0

    .line 254
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    :goto_12
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mEventType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mMessageID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReasonCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mCallID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mSmscAddr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->mRetryAfter:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
