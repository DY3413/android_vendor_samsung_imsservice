.class public Lcom/voltecrypt/service/SxHangUpEntity;
.super Ljava/lang/Object;
.source "SxHangUpEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/voltecrypt/service/SxHangUpEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callId:Ljava/lang/String;

.field private callPhoneNum:Ljava/lang/String;

.field private calledPhoneNum:Ljava/lang/String;

.field private des:Ljava/lang/String;

.field private isEncrypt:I

.field private reason:I

.field private sessionId:Ljava/lang/String;

.field private time:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Lcom/voltecrypt/service/SxHangUpEntity$1;

    invoke-direct {v0}, Lcom/voltecrypt/service/SxHangUpEntity$1;-><init>()V

    sput-object v0, Lcom/voltecrypt/service/SxHangUpEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->time:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->time:J

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->time:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callPhoneNum:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->calledPhoneNum:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->type:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->sessionId:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->isEncrypt:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->reason:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->des:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->time:J

    .line 36
    iput-object p1, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callPhoneNum:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->calledPhoneNum:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/voltecrypt/service/SxHangUpEntity;->type:I

    .line 39
    iput-object p4, p0, Lcom/voltecrypt/service/SxHangUpEntity;->sessionId:Ljava/lang/String;

    .line 40
    iput p5, p0, Lcom/voltecrypt/service/SxHangUpEntity;->isEncrypt:I

    .line 41
    iput p6, p0, Lcom/voltecrypt/service/SxHangUpEntity;->reason:I

    .line 42
    iput-object p7, p0, Lcom/voltecrypt/service/SxHangUpEntity;->des:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_92

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_92

    .line 187
    :cond_13
    check-cast p1, Lcom/voltecrypt/service/SxHangUpEntity;

    .line 188
    iget-wide v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/voltecrypt/service/SxHangUpEntity;->time:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callPhoneNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxHangUpEntity;->callPhoneNum:Ljava/lang/String;

    .line 189
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->calledPhoneNum:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxHangUpEntity;->calledPhoneNum:Ljava/lang/String;

    .line 190
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->type:I

    .line 191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/voltecrypt/service/SxHangUpEntity;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->sessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxHangUpEntity;->sessionId:Ljava/lang/String;

    .line 192
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->isEncrypt:I

    .line 193
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/voltecrypt/service/SxHangUpEntity;->isEncrypt:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->reason:I

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/voltecrypt/service/SxHangUpEntity;->reason:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->des:Ljava/lang/String;

    iget-object v3, p1, Lcom/voltecrypt/service/SxHangUpEntity;->des:Ljava/lang/String;

    .line 195
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    iget-object p0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callId:Ljava/lang/String;

    iget-object p1, p1, Lcom/voltecrypt/service/SxHangUpEntity;->callId:Ljava/lang/String;

    .line 196
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    goto :goto_91

    :cond_90
    move v0, v1

    :goto_91
    return v0

    :cond_92
    :goto_92
    return v1
.end method

.method public hashCode()I
    .registers 12

    .line 201
    iget-wide v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callPhoneNum:Ljava/lang/String;

    iget-object v4, p0, Lcom/voltecrypt/service/SxHangUpEntity;->calledPhoneNum:Ljava/lang/String;

    iget v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/voltecrypt/service/SxHangUpEntity;->sessionId:Ljava/lang/String;

    iget v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->isEncrypt:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/voltecrypt/service/SxHangUpEntity;->des:Ljava/lang/String;

    iget-object v10, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callId:Ljava/lang/String;

    filled-new-array/range {v2 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SxHangUpEntity{time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/voltecrypt/service/SxHangUpEntity;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", callPhoneNum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callPhoneNum:Ljava/lang/String;

    .line 209
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", calledPhoneNum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->calledPhoneNum:Ljava/lang/String;

    .line 210
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->sessionId:Ljava/lang/String;

    .line 212
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isEncrypt=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->isEncrypt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reason=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->reason:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", des=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->des:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callId:Ljava/lang/String;

    .line 216
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 172
    iget-wide v0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-object p2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callPhoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->calledPhoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget p2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object p2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget p2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->isEncrypt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget p2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->reason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object p2, p0, Lcom/voltecrypt/service/SxHangUpEntity;->des:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/voltecrypt/service/SxHangUpEntity;->callId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
