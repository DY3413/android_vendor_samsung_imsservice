.class public Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;
.super Ljava/lang/Object;
.source "DiagnosisController.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/volte2/IDiagnosisController;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

.field private mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DiagnosisController"

    .line 20
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->LOG_TAG:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 27
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-void
.end method

.method private dailyInfoCallEndForCmc(Landroid/content/ContentValues;)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 225
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isCallDrop(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "CMCF"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isIncomingFail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "CMMT"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isOutgoingFail()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "CMMO"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "CMCE"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method private dailyInfoCallEndForNR(Landroid/content/ContentValues;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    const/4 v1, 0x1

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "NEVI"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NEEM"

    .line 211
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const-string v0, "NEVO"

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isCallDrop(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "NEFC"

    .line 217
    invoke-virtual {p1, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string p0, "NETC"

    .line 220
    invoke-virtual {p1, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private dailyInfoCallEndForVoWifi(Landroid/content/ContentValues;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    const/4 v1, 0x1

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "WEVI"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WEEM"

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const-string v0, "WEVO"

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isCallDrop(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "WEFC"

    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isIncomingFail()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "VWMT"

    .line 177
    invoke-virtual {p1, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 178
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isOutgoingFail()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "VWMO"

    .line 179
    invoke-virtual {p1, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_1
    const-string p0, "WETC"

    .line 183
    invoke-virtual {p1, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private dailyInfoCallEndForVolte(Landroid/content/ContentValues;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    const/4 v1, 0x1

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v0, "VEVI"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VEEM"

    .line 190
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const-string v0, "VEVO"

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isCallDrop(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VEFC"

    .line 196
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isIncomingFail()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "PSMT"

    .line 198
    invoke-virtual {p1, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isOutgoingFail()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "PSMO"

    .line 200
    invoke-virtual {p1, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_1
    const-string p0, "VETC"

    .line 204
    invoke-virtual {p1, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private dailyInfoCallType(Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [Z

    .line 251
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, p2, v4

    .line 252
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 254
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "EXVO"

    invoke-virtual {p1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-boolean v7, v1, v6

    .line 255
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "DWCT"

    invoke-virtual {p1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aput-boolean v6, v1, v3

    goto :goto_1

    .line 257
    :cond_0
    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 258
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "EXVI"

    invoke-virtual {p1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-boolean v7, v1, v3

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "UPCT"

    invoke-virtual {p1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aput-boolean v6, v1, v6

    goto :goto_1

    .line 261
    :cond_1
    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 262
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "EXEM"

    invoke-virtual {p1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x2

    aput-boolean v6, v1, v7

    goto :goto_1

    .line 264
    :cond_2
    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 265
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "EXTY"

    invoke-virtual {p1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x3

    aput-boolean v6, v1, v7

    goto :goto_1

    .line 267
    :cond_3
    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 268
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "EXRT"

    invoke-virtual {p1, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x4

    aput-boolean v6, v1, v7

    .line 272
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 273
    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 274
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "EXVC"

    invoke-virtual {p1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 276
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "EXAC"

    invoke-virtual {p1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    const/4 v5, 0x5

    aput-boolean v6, v1, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    move p0, v3

    :goto_3
    if-ge v3, v0, :cond_9

    .line 283
    aget-boolean p2, v1, v3

    if-eqz p2, :cond_8

    add-int/lit8 p0, p0, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 286
    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "EXTC"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private isEPDGWhenCallEnd(I)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9c7

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 137
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result p0

    const/16 p1, 0x15

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isIncomingFail()Z
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPreviousState()Lcom/sec/internal/helper/State;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIncomingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsIncomingCall;

    if-eq v0, v2, :cond_1

    .line 240
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPreviousState()Lcom/sec/internal/helper/State;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->isMTCall()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isNrWhenCallEnd(I)Z
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 142
    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 p1, 0x14

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOutgoingFail()Z
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPreviousState()Lcom/sec/internal/helper/State;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mOutgoingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsOutgoingCall;

    if-eq v0, v2, :cond_1

    .line 245
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPreviousState()Lcom/sec/internal/helper/State;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mAlertingCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsAlertingCall;

    if-eq v0, v2, :cond_1

    .line 246
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getPreviousState()Lcom/sec/internal/helper/State;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mReadyToCall:Lcom/sec/internal/ims/servicemodules/volte2/ImsReadyToCall;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private needToDailyInfoCallEnd()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 162
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected dailyInfoCallEnd(Landroid/content/ContentValues;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->needToDailyInfoCallEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->dailyInfoCallEndForCmc(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isNrWhenCallEnd(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->dailyInfoCallEndForNR(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isEPDGWhenCallEnd(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->dailyInfoCallEndForVoWifi(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->dailyInfoCallEndForVolte(Landroid/content/ContentValues;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isCallDrop(I)Z
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0xc8

    if-eq p1, p0, :cond_0

    const/16 p0, 0xd2

    if-eq p1, p0, :cond_0

    const/16 p0, 0xdc

    if-eq p1, p0, :cond_0

    const/16 p0, 0xe6

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_0

    const/16 p0, 0x1e6

    if-eq p1, p0, :cond_0

    const/16 p0, 0x25b

    if-eq p1, p0, :cond_0

    const/16 p0, 0x457

    if-eq p1, p0, :cond_0

    const/16 p0, 0xbc1

    if-eq p1, p0, :cond_0

    const/16 p0, 0xbc2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public sendPSCallInfo(Landroid/content/ContentValues;)V
    .locals 11

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-wide v3, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 67
    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSIPFlowInfo:Ljava/lang/String;

    const-string v3, "SPFW"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MOMT"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TYPE"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 72
    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x5

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 75
    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPrevCallStateOrdinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "STAT"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/32 v2, 0xf423f

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    long-to-int v4, v0

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "CTME"

    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isCallDrop(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 84
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "FLCD"

    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->isDowngradedVideoCall()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_7

    .line 87
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v7, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mVideoRTPtimeout:Z

    const-string v8, "DWGD"

    if-eqz v7, :cond_5

    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 89
    :cond_5
    iget-boolean v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mIsStartCameraSuccess:Z

    if-nez v4, :cond_6

    const/4 v4, 0x3

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 92
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "ROAM"

    invoke-virtual {p1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isEPDGWhenCallEnd(I)Z

    move-result v4

    const-string v7, "PSCS"

    const-string v8, "EPDG"

    if-eqz v4, :cond_8

    .line 99
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    :goto_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-wide v5, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallRingingTime:J

    iget-wide v7, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallInitTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_9

    cmp-long v4, v5, v2

    if-gtz v4, :cond_9

    long-to-int v4, v5

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "CSTE"

    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    :cond_9
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-wide v5, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallEndTime:J

    iget-wide v9, v4, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTerminateTime:J

    sub-long/2addr v5, v9

    cmp-long v4, v5, v7

    if-lez v4, :cond_a

    cmp-long v2, v5, v2

    if-gtz v2, :cond_a

    long-to-int v2, v5

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CETE"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    const v2, 0x30000022

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTypeHistory:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->isCallDrop(I)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->errorCode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "PSCI"

    invoke-static {v0, v1, v2, p1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSCI, storeLogToAgent["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p1, p0, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->requestToSendStoredLog(ILandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public sendPSDailyInfo()V
    .locals 6

    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallTypeHistory["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTypeHistory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTypeHistory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mCallTypeHistory:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    const/4 v4, 0x1

    if-lez v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 39
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "CMCS"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    if-eqz v2, :cond_2

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "NSTC"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mEpsFallback:Z

    if-eqz v2, :cond_2

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "EFCT"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->dailyInfoCallEnd(Landroid/content/ContentValues;)V

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->dailyInfoCallType(Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SRCT"

    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasCSFBError()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CFCT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getForwarded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FWCT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "overwrite_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DRPT, storeLogToAgent["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/DiagnosisController;->mCsm:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "DRPT"

    invoke-static {v1, p0, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method
