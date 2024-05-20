.class public Lcom/sec/internal/ims/servicemodules/ss/UtLog;
.super Ljava/lang/Object;
.source "UtLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractCrLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;
    .locals 14

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x64

    const-string/jumbo v2, "}"

    const-string v3, ",{"

    const-string v4, "serviceClass"

    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    const-string v7, ","

    const/4 v8, 0x0

    if-eq p0, v1, :cond_2

    const/16 v1, 0x66

    if-eq p0, v1, :cond_1

    const/16 v1, 0x68

    if-eq p0, v1, :cond_1

    const/16 v1, 0x72

    if-eq p0, v1, :cond_0

    goto/16 :goto_2

    .line 232
    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v8

    invoke-virtual {p0, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 226
    :cond_1
    array-length p0, p1

    move v1, v8

    :goto_0
    if-ge v1, p0, :cond_5

    aget-object v9, p1, v1

    .line 227
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v9, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_2
    array-length p0, p1

    move v1, v8

    :goto_1
    if-ge v1, p0, :cond_5

    aget-object v9, p1, v1

    .line 209
    invoke-virtual {v9, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "condition"

    .line 210
    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "number"

    .line 211
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 212
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v12, ""

    .line 216
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {v12}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    const-string v11, "NoReplyTimer"

    .line 219
    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_4
    invoke-static {v10}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractCrLogFromUtProfile(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",>,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "GET_SD"

    .line 94
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "PUT_CW,"

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "GET_CW"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_3
    const-string p0, "PUT_COLR,"

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_4
    const-string p0, "GET_COLR"

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_5
    const-string p0, "PUT_COLP,"

    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_6
    const-string p0, "GET_COLP"

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_7
    const-string p0, "PUT_CLIR,"

    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_8
    const-string p0, "GET_CLIR"

    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_9
    const-string p0, "PUT_CLIP,"

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_a
    const-string p0, "GET_CLIP"

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_b
    const-string v1, "PUT_CB,"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCbType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->password:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_c
    const-string p0, "GET_CB,"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCbType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_d
    const-string v1, "PUT_CF,"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCfType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_e
    const-string p0, "GET_CF,"

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCfType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extractLogFromError(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " {error: "

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "originErrorCode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringErrorCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " converted error: "

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errorCode"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x64

    const-string v4, " serviceClass: "

    const-string v5, " status: "

    const-string v6, "condition"

    const-string v7, "serviceClass"

    const-string/jumbo v8, "status"

    const-string/jumbo v9, "}"

    const/4 v10, 0x1

    const-string v11, ","

    const/4 v12, 0x0

    if-eq v0, v3, :cond_3

    const/16 v3, 0x66

    if-eq v0, v3, :cond_2

    const/16 v3, 0x68

    if-eq v0, v3, :cond_2

    const/16 v3, 0x6c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x72

    if-eq v0, v3, :cond_0

    const-string v1, "requestType["

    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    const-string v0, "queryCallWaiting"

    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {status: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v12

    invoke-virtual {v0, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 191
    :cond_1
    aget-object v0, v1, v12

    const-string v1, "queryClir"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "queryCLIR {"

    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v12

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_2
    const-string v0, "queryCallBarring"

    .line 180
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    array-length v0, v1

    move v3, v12

    :goto_0
    if-ge v3, v0, :cond_6

    aget-object v13, v1, v3

    const-string v14, " {cbType: "

    .line 182
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "queryCallForward"

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    array-length v0, v1

    move v3, v12

    :goto_1
    if-ge v3, v0, :cond_6

    aget-object v13, v1, v3

    .line 162
    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 163
    invoke-virtual {v13, v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v10, "number"

    .line 164
    invoke-virtual {v13, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 165
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_4

    const-string v10, ""

    :cond_4
    const-string v12, " {cfType: "

    .line 169
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v13, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " number: "

    .line 171
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    if-ne v15, v10, :cond_5

    const-string v10, " NoReplyTimer: "

    .line 173
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "NoReplyTimer"

    const/4 v12, 0x0

    invoke-virtual {v13, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 175
    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x1

    goto :goto_1

    .line 200
    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "profile is null"

    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const-string v2, ", action = "

    const-string v3, " {enable = "

    const-string v4, ", ssClass = "

    const-string/jumbo v5, "}"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "querySimServDoc"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v1, "updateCallWaiting"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "queryCallWaiting"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v1, "updateCOLR"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {presentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_4
    const-string p0, "queryCOLR"

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v1, "updateCOLP"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_6
    const-string p0, "queryCOLP"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v1, "updateCLIR"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {clirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringClirMode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_8
    const-string p0, "queryCLIR"

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v1, "updateCLIP"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_a
    const-string p0, "queryCLIP"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_b
    const-string/jumbo v1, "updateCallBarring"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {cbType = "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->password:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_c
    const-string v1, "queryCallBarring"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cbType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_d
    const-string/jumbo v1, "updateCallForward"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {cfType = "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noReplyTimer = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number = "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_e
    const-string v1, "queryCallForward"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cfType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCrLogAction(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 340
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "E"

    return-object p0

    :cond_1
    const-string p0, "R"

    return-object p0

    :cond_2
    const-string p0, "A"

    return-object p0

    :cond_3
    const-string p0, "D"

    return-object p0
.end method

.method public static getCrLogCbType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 449
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ICWR"

    return-object p0

    :cond_1
    const-string p0, "OIEXHC"

    return-object p0

    :cond_2
    const-string p0, "OI"

    return-object p0

    :cond_3
    const-string p0, "AO"

    return-object p0

    :cond_4
    const-string p0, "AI"

    return-object p0
.end method

.method public static getCrLogCfType(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 415
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "NRc"

    return-object p0

    :cond_1
    const-string p0, "NRy"

    return-object p0

    :cond_2
    const-string p0, "B"

    return-object p0

    :cond_3
    const-string p0, "U"

    return-object p0
.end method

.method public static getCrLogSsClass(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_2

    .line 310
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "V"

    return-object p0

    :cond_1
    const-string p0, "A"

    return-object p0

    :cond_2
    const-string p0, "ALL"

    return-object p0
.end method

.method private static getCrLogStatus(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "X"

    return-object p0

    :cond_0
    const-string p0, "O"

    return-object p0
.end method

.method private static getCrLogStatus(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "O"

    return-object p0

    :cond_0
    const-string p0, "X"

    return-object p0
.end method

.method public static getStringAction(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 325
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Erasure"

    return-object p0

    :cond_1
    const-string p0, "Registration"

    return-object p0

    :cond_2
    const-string p0, "Activation"

    return-object p0

    :cond_3
    const-string p0, "Deactivation"

    return-object p0
.end method

.method public static getStringCbType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 432
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Incoming calls when roaming"

    return-object p0

    :cond_1
    const-string p0, "Outgoing international calls except home"

    return-object p0

    :cond_2
    const-string p0, "Outgoing international calls"

    return-object p0

    :cond_3
    const-string p0, "All outgoing calls"

    return-object p0

    :cond_4
    const-string p0, "All incoming calls"

    return-object p0
.end method

.method public static getStringCfType(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 400
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Not reachable"

    return-object p0

    :cond_1
    const-string p0, "Unanswered"

    return-object p0

    :cond_2
    const-string p0, "Busy"

    return-object p0

    :cond_3
    const-string p0, "Unconditional"

    return-object p0
.end method

.method public static getStringClirMode(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 462
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Suppression"

    return-object p0

    :cond_1
    const-string p0, "Invocation"

    return-object p0

    :cond_2
    const-string p0, "Default"

    return-object p0
.end method

.method public static getStringErrorCode(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 541
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->isPdnFailCause(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PDN_REJECT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 p0, p0, -0x2726

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "EMPTY_DNS"

    return-object p0

    :pswitch_1
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_2
    const-string p0, "INVALID_PDN_REQUEST"

    return-object p0

    :pswitch_3
    const-string p0, "HTTP_CONNECTION_ERROR"

    return-object p0

    :pswitch_4
    const-string p0, "START_PDN_FAILURE"

    return-object p0

    :pswitch_5
    const-string p0, "NOT_REGISTERED_IN_VOLTEREGIED"

    return-object p0

    :pswitch_6
    const-string p0, "PUT_BLOCKED"

    return-object p0

    :pswitch_7
    const-string p0, "SERVICE_DEACTIVATED"

    return-object p0

    :pswitch_8
    const-string p0, "NOT_SUPPORT_BARRING"

    return-object p0

    :pswitch_9
    const-string p0, "NO_XCAP_APN"

    return-object p0

    :pswitch_a
    const-string p0, "INVALID_REQUEST"

    return-object p0

    :pswitch_b
    const-string p0, "NOT_CONFIGURED"

    return-object p0

    :pswitch_c
    const-string p0, "NO_MATCHED_PROFILE"

    return-object p0

    :pswitch_d
    const-string p0, "NO_DDS_SLOT"

    return-object p0

    :pswitch_e
    const-string p0, "SIM_NOT_READY"

    return-object p0

    :pswitch_f
    const-string p0, "ALREADY_FORBIDDEN"

    return-object p0

    :pswitch_10
    const-string p0, "NOT_SUPPORT_BA_ALL"

    return-object p0

    .line 545
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStringMessage(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 501
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "EVENT_REQUEST_TIMEOUT"

    return-object p0

    :pswitch_1
    const-string p0, "EVENT_INIT_SS_403"

    return-object p0

    :pswitch_2
    const-string p0, "EVENT_CACHE_RESULT_PARSE"

    return-object p0

    :pswitch_3
    const-string p0, "EVENT_REQUEST_FAIL"

    return-object p0

    :pswitch_4
    const-string p0, "EVENT_HTTP_FAIL"

    return-object p0

    :pswitch_5
    const-string p0, "EVENT_HTTP_COMPLETE"

    return-object p0

    :pswitch_6
    const-string p0, "EVENT_SEPARATE_MEDIA"

    return-object p0

    :pswitch_7
    const-string p0, "EVENT_SEPARATE_CF_ALL"

    return-object p0

    :pswitch_8
    const-string p0, "EVENT_SEPARATE_CFNRY"

    return-object p0

    :pswitch_9
    const-string p0, "EVENT_SEPARATE_CFNL"

    return-object p0

    :pswitch_a
    const-string p0, "EVENT_DOCUMENT_CACHE_RESET"

    return-object p0

    :pswitch_b
    const-string p0, "EVENT_TERMINAL_REQUEST"

    return-object p0

    :pswitch_c
    const-string p0, "EVENT_PDN_DISCONNECTED"

    return-object p0

    :pswitch_d
    const-string p0, "EVENT_DISCONNECT_PDN"

    return-object p0

    :pswitch_e
    const-string p0, "EVENT_PDN_CONNECTED"

    return-object p0

    :cond_0
    const-string p0, "EVENT_REQUEST_PDN"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStringRequestType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 385
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "SS_PUT_ACB"

    return-object p0

    :pswitch_2
    const-string p0, "SS_GET_ACB"

    return-object p0

    :pswitch_3
    const-string p0, "SS_GET_SD"

    return-object p0

    :pswitch_4
    const-string p0, "SS_PUT_CW"

    return-object p0

    :pswitch_5
    const-string p0, "SS_GET_CW"

    return-object p0

    :pswitch_6
    const-string p0, "SS_PUT_COLR"

    return-object p0

    :pswitch_7
    const-string p0, "SS_GET_COLR"

    return-object p0

    :pswitch_8
    const-string p0, "SS_PUT_COLP"

    return-object p0

    :pswitch_9
    const-string p0, "SS_GET_COLP"

    return-object p0

    :pswitch_a
    const-string p0, "SS_PUT_CLIR"

    return-object p0

    :pswitch_b
    const-string p0, "SS_GET_CLIR"

    return-object p0

    :pswitch_c
    const-string p0, "SS_PUT_CLIP"

    return-object p0

    :pswitch_d
    const-string p0, "SS_GET_CLIP"

    return-object p0

    :pswitch_e
    const-string p0, "SS_PUT_OCB"

    return-object p0

    :pswitch_f
    const-string p0, "SS_GET_OCB"

    return-object p0

    :pswitch_10
    const-string p0, "SS_PUT_ICB"

    return-object p0

    :pswitch_11
    const-string p0, "SS_GET_ICB"

    return-object p0

    :pswitch_12
    const-string p0, "SS_PUT_CF"

    return-object p0

    :pswitch_13
    const-string p0, "SS_GET_CF"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getStringSsClass(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0xff

    if-eq p0, v0, :cond_3

    .line 295
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "VIDEO"

    return-object p0

    :cond_1
    const-string p0, "SMS"

    return-object p0

    :cond_2
    const-string p0, "AUDIO"

    return-object p0

    :cond_3
    const-string p0, "ALL"

    return-object p0
.end method

.method private static getStringStatus(I)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "Deactivated"

    return-object p0

    :cond_0
    const-string p0, "Activated"

    return-object p0
.end method

.method private static getStringStatus(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "Activated"

    return-object p0

    :cond_0
    const-string p0, "Deactivated"

    return-object p0
.end method

.method public static i(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtXcap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtXcap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isPdnFailCause(I)Z
    .locals 0

    .line 549
    div-int/lit16 p0, p0, 0x2710

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
