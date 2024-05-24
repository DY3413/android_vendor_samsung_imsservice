.class public Lcom/sec/internal/ims/servicemodules/ss/UtLog;
.super Ljava/lang/Object;
.source "UtLog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractCrLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;
    .registers 16

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x64

    const-string/jumbo v2, "}"

    const-string v3, ",{"

    const-string/jumbo v4, "serviceClass"

    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    const-string v7, ","

    const/4 v8, 0x0

    if-eq p0, v1, :cond_60

    const/16 v1, 0x66

    if-eq p0, v1, :cond_38

    const/16 v1, 0x68

    if-eq p0, v1, :cond_38

    const/16 v1, 0x72

    if-eq p0, v1, :cond_26

    goto/16 :goto_b5

    .line 239
    :cond_26
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p1, v8

    invoke-virtual {p0, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b5

    .line 233
    :cond_38
    array-length p0, p1

    move v1, v8

    :goto_3a
    if-ge v1, p0, :cond_b5

    aget-object v9, p1, v1

    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v9, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 215
    :cond_60
    array-length p0, p1

    move v1, v8

    :goto_62
    if-ge v1, p0, :cond_b5

    aget-object v9, p1, v1

    .line 216
    invoke-virtual {v9, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "condition"

    .line 217
    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "number"

    .line 218
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 219
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7e

    const-string v12, ""

    .line 223
    :cond_7e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {v12}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a8

    const-string v11, "NoReplyTimer"

    .line 226
    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_a8
    invoke-static {v10}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 244
    :cond_b5
    :goto_b5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractCrLogFromUtProfile(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;
    .registers 5

    .line 97
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

    .line 99
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    packed-switch v1, :pswitch_data_122

    goto/16 :goto_11c

    :pswitch_27
    const-string p0, "GET_SD"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_2e
    const-string p0, "PUT_CW,"

    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogStatus(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_3e
    const-string p0, "GET_CW"

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_45
    const-string p0, "PUT_COLR,"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_51
    const-string p0, "GET_COLR"

    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_58
    const-string p0, "PUT_COLP,"

    .line 151
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_64
    const-string p0, "GET_COLP"

    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_6b
    const-string p0, "PUT_CLIR,"

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_77
    const-string p0, "GET_CLIR"

    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_7e
    const-string p0, "PUT_CLIP,"

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_8a
    const-string p0, "GET_CLIP"

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11c

    :pswitch_91
    const-string v1, "PUT_CB,"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCbType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->password:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11c

    :pswitch_c4
    const-string p0, "GET_CB,"

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCbType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11c

    :pswitch_d3
    const-string v1, "PUT_CF,"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCfType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11c

    :pswitch_10e
    const-string p0, "GET_CF,"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getCrLogCfType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :goto_11c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_122
    .packed-switch 0x64
        :pswitch_10e
        :pswitch_d3
        :pswitch_c4
        :pswitch_91
        :pswitch_c4
        :pswitch_91
        :pswitch_8a
        :pswitch_7e
        :pswitch_77
        :pswitch_6b
        :pswitch_64
        :pswitch_58
        :pswitch_51
        :pswitch_45
        :pswitch_3e
        :pswitch_2e
        :pswitch_27
    .end packed-switch
.end method

.method public static extractLogFromError(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " {error: "

    .line 250
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

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "errorCode"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;
    .registers 20

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x64

    const-string v4, " serviceClass: "

    const-string v5, " status: "

    const-string v6, "condition"

    const-string/jumbo v7, "serviceClass"

    const-string/jumbo v8, "status"

    const-string/jumbo v9, "}"

    const/4 v10, 0x1

    const-string v11, ","

    const/4 v12, 0x0

    if-eq v0, v3, :cond_c8

    const/16 v3, 0x66

    if-eq v0, v3, :cond_84

    const/16 v3, 0x68

    if-eq v0, v3, :cond_84

    const/16 v3, 0x6c

    if-eq v0, v3, :cond_61

    const/16 v3, 0x72

    if-eq v0, v3, :cond_44

    const-string/jumbo v1, "requestType["

    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_142

    :cond_44
    const-string/jumbo v0, "queryCallWaiting"

    .line 195
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

    goto/16 :goto_142

    .line 198
    :cond_61
    aget-object v0, v1, v12

    const-string/jumbo v1, "queryClir"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_142

    const-string/jumbo v1, "queryCLIR {"

    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v12

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_142

    :cond_84
    const-string/jumbo v0, "queryCallBarring"

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    array-length v0, v1

    move v3, v12

    :goto_8c
    if-ge v3, v0, :cond_142

    aget-object v13, v1, v3

    const-string v14, " {cbType: "

    .line 189
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    :cond_c8
    const-string/jumbo v0, "queryCallForward"

    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    array-length v0, v1

    move v3, v12

    :goto_d0
    if-ge v3, v0, :cond_142

    aget-object v13, v1, v3

    .line 169
    invoke-virtual {v13, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 170
    invoke-virtual {v13, v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v10, "number"

    .line 171
    invoke-virtual {v13, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_ea

    const-string v10, ""

    :cond_ea
    const-string v12, " {cfType: "

    .line 176
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v13, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " number: "

    .line 178
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    if-ne v15, v10, :cond_130

    const-string v10, " NoReplyTimer: "

    .line 180
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "NoReplyTimer"

    const/4 v12, 0x0

    invoke-virtual {v13, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_131

    :cond_130
    const/4 v12, 0x0

    .line 182
    :goto_131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x1

    goto :goto_d0

    .line 207
    :cond_142
    :goto_142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    const-string p0, "profile is null"

    return-object p0

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const-string v2, ", action = "

    const-string v3, " {enable = "

    const-string v4, ", ssClass = "

    const-string/jumbo v5, "}"

    packed-switch v1, :pswitch_data_188

    .line 90
    :pswitch_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_1d
    const-string/jumbo p0, "updateACB"

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_25
    const-string/jumbo p0, "queryACB"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_2d
    const-string/jumbo p0, "querySimServDoc"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_35
    const-string/jumbo v1, "updateCallWaiting"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringStatus(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_58
    const-string/jumbo p0, "queryCallWaiting"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_60
    const-string/jumbo v1, "updateCOLR"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {presentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_75
    const-string/jumbo p0, "queryCOLR"

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_7d
    const-string/jumbo v1, "updateCOLP"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_90
    const-string/jumbo p0, "queryCOLP"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_98
    const-string/jumbo v1, "updateCLIR"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {clirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringClirMode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_b1
    const-string/jumbo p0, "queryCLIR"

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_b9
    const-string/jumbo v1, "updateCLIP"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_cc
    const-string/jumbo p0, "queryCLIP"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_183

    :pswitch_d4
    const-string/jumbo v1, "updateCallBarring"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {cbType = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password = "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->password:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_183

    :pswitch_112
    const-string/jumbo v1, "queryCallBarring"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cbType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCbType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_183

    :pswitch_127
    const-string/jumbo v1, "updateCallForward"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {cfType = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringSsClass(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noReplyTimer = "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number = "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_183

    :pswitch_16f
    const-string/jumbo v1, "queryCallForward"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cfType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringCfType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_188
    .packed-switch 0x64
        :pswitch_16f
        :pswitch_127
        :pswitch_112
        :pswitch_d4
        :pswitch_112
        :pswitch_d4
        :pswitch_cc
        :pswitch_b9
        :pswitch_b1
        :pswitch_98
        :pswitch_90
        :pswitch_7d
        :pswitch_75
        :pswitch_60
        :pswitch_58
        :pswitch_35
        :pswitch_2d
        :pswitch_18
        :pswitch_25
        :pswitch_1d
    .end packed-switch
.end method

.method public static getCrLogAction(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    .line 347
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "E"

    return-object p0

    :cond_13
    const-string p0, "R"

    return-object p0

    :cond_16
    const-string p0, "A"

    return-object p0

    :cond_19
    const-string p0, "D"

    return-object p0
.end method

.method public static getCrLogCbType(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_14

    .line 462
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p0, "ICWR"

    return-object p0

    :cond_17
    const-string p0, "OIEXHC"

    return-object p0

    :cond_1a
    const-string p0, "OI"

    return-object p0

    :cond_1d
    const-string p0, "AO"

    return-object p0

    :cond_20
    const-string p0, "AI"

    return-object p0
.end method

.method public static getCrLogCfType(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    .line 428
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "NRc"

    return-object p0

    :cond_13
    const-string p0, "NRy"

    return-object p0

    :cond_16
    const-string p0, "B"

    return-object p0

    :cond_19
    const-string p0, "U"

    return-object p0
.end method

.method public static getCrLogSsClass(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/16 v0, 0x10

    if-eq p0, v0, :cond_12

    const/16 v0, 0xff

    if-eq p0, v0, :cond_18

    .line 317
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const-string p0, "V"

    return-object p0

    :cond_15
    const-string p0, "A"

    return-object p0

    :cond_18
    const-string p0, "ALL"

    return-object p0
.end method

.method private static getCrLogStatus(I)Ljava/lang/String;
    .registers 1

    .line 0
    if-nez p0, :cond_5

    const-string p0, "X"

    return-object p0

    :cond_5
    const-string p0, "O"

    return-object p0
.end method

.method private static getCrLogStatus(Z)Ljava/lang/String;
    .registers 1

    .line 0
    if-eqz p0, :cond_5

    const-string p0, "O"

    return-object p0

    :cond_5
    const-string p0, "X"

    return-object p0
.end method

.method public static getStringAction(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    .line 332
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "Erasure"

    return-object p0

    :cond_13
    const-string p0, "Registration"

    return-object p0

    :cond_16
    const-string p0, "Activation"

    return-object p0

    :cond_19
    const-string p0, "Deactivation"

    return-object p0
.end method

.method public static getStringCbType(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_20

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_14

    .line 445
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p0, "Incoming calls when roaming"

    return-object p0

    :cond_17
    const-string p0, "Outgoing international calls except home"

    return-object p0

    :cond_1a
    const-string p0, "Outgoing international calls"

    return-object p0

    :cond_1d
    const-string p0, "All outgoing calls"

    return-object p0

    :cond_20
    const-string p0, "All incoming calls"

    return-object p0
.end method

.method public static getStringCfType(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    .line 413
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "Not logged in"

    return-object p0

    :pswitch_b
    const-string p0, "All conditional"

    return-object p0

    :pswitch_e
    const-string p0, "All"

    return-object p0

    :pswitch_11
    const-string p0, "Not reachable"

    return-object p0

    :pswitch_14
    const-string p0, "Unanswered"

    return-object p0

    :pswitch_17
    const-string p0, "Busy"

    return-object p0

    :pswitch_1a
    const-string p0, "Unconditional"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static getStringClirMode(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 475
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "Suppression"

    return-object p0

    :cond_10
    const-string p0, "Invocation"

    return-object p0

    :cond_13
    const-string p0, "Default"

    return-object p0
.end method

.method public static getStringErrorCode(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_56

    .line 554
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->isPdnFailCause(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PDN_REJECT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 p0, p0, -0x2726

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1d
    const-string p0, "EMPTY_DNS"

    return-object p0

    :pswitch_20
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_23
    const-string p0, "INVALID_PDN_REQUEST"

    return-object p0

    :pswitch_26
    const-string p0, "HTTP_CONNECTION_ERROR"

    return-object p0

    :pswitch_29
    const-string p0, "START_PDN_FAILURE"

    return-object p0

    :pswitch_2c
    const-string p0, "NOT_REGISTERED_IN_VOLTEREGIED"

    return-object p0

    :pswitch_2f
    const-string p0, "PUT_BLOCKED"

    return-object p0

    :pswitch_32
    const-string p0, "SERVICE_DEACTIVATED"

    return-object p0

    :pswitch_35
    const-string p0, "NOT_SUPPORT_BARRING"

    return-object p0

    :pswitch_38
    const-string p0, "NO_XCAP_APN"

    return-object p0

    :pswitch_3b
    const-string p0, "INVALID_REQUEST"

    return-object p0

    :pswitch_3e
    const-string p0, "NOT_CONFIGURED"

    return-object p0

    :pswitch_41
    const-string p0, "NO_MATCHED_PROFILE"

    return-object p0

    :pswitch_44
    const-string p0, "NO_DDS_SLOT"

    return-object p0

    :pswitch_47
    const-string p0, "SIM_NOT_READY"

    return-object p0

    :pswitch_4a
    const-string p0, "ALREADY_FORBIDDEN"

    return-object p0

    :pswitch_4d
    const-string p0, "NOT_SUPPORT_BA_ALL"

    return-object p0

    .line 558
    :cond_50
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x3ea
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static getStringMessage(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_39

    packed-switch p0, :pswitch_data_3c

    .line 514
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    const-string p0, "EVENT_REQUEST_TIMEOUT"

    return-object p0

    :pswitch_f
    const-string p0, "EVENT_INIT_SS_403"

    return-object p0

    :pswitch_12
    const-string p0, "EVENT_CACHE_RESULT_PARSE"

    return-object p0

    :pswitch_15
    const-string p0, "EVENT_REQUEST_FAIL"

    return-object p0

    :pswitch_18
    const-string p0, "EVENT_HTTP_FAIL"

    return-object p0

    :pswitch_1b
    const-string p0, "EVENT_HTTP_COMPLETE"

    return-object p0

    :pswitch_1e
    const-string p0, "EVENT_SEPARATE_MEDIA"

    return-object p0

    :pswitch_21
    const-string p0, "EVENT_SEPARATE_CF_ALL"

    return-object p0

    :pswitch_24
    const-string p0, "EVENT_SEPARATE_CFNRY"

    return-object p0

    :pswitch_27
    const-string p0, "EVENT_SEPARATE_CFNL"

    return-object p0

    :pswitch_2a
    const-string p0, "EVENT_DOCUMENT_CACHE_RESET"

    return-object p0

    :pswitch_2d
    const-string p0, "EVENT_TERMINAL_REQUEST"

    return-object p0

    :pswitch_30
    const-string p0, "EVENT_PDN_DISCONNECTED"

    return-object p0

    :pswitch_33
    const-string p0, "EVENT_DISCONNECT_PDN"

    return-object p0

    :pswitch_36
    const-string p0, "EVENT_PDN_CONNECTED"

    return-object p0

    :cond_39
    const-string p0, "EVENT_REQUEST_PDN"

    return-object p0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method public static getStringRequestType(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_42

    .line 392
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "SS_PUT_ACB"

    return-object p0

    :pswitch_b
    const-string p0, "SS_GET_ACB"

    return-object p0

    :pswitch_e
    const-string p0, "SS_GET_SD"

    return-object p0

    :pswitch_11
    const-string p0, "SS_PUT_CW"

    return-object p0

    :pswitch_14
    const-string p0, "SS_GET_CW"

    return-object p0

    :pswitch_17
    const-string p0, "SS_PUT_COLR"

    return-object p0

    :pswitch_1a
    const-string p0, "SS_GET_COLR"

    return-object p0

    :pswitch_1d
    const-string p0, "SS_PUT_COLP"

    return-object p0

    :pswitch_20
    const-string p0, "SS_GET_COLP"

    return-object p0

    :pswitch_23
    const-string p0, "SS_PUT_CLIR"

    return-object p0

    :pswitch_26
    const-string p0, "SS_GET_CLIR"

    return-object p0

    :pswitch_29
    const-string p0, "SS_PUT_CLIP"

    return-object p0

    :pswitch_2c
    const-string p0, "SS_GET_CLIP"

    return-object p0

    :pswitch_2f
    const-string p0, "SS_PUT_OCB"

    return-object p0

    :pswitch_32
    const-string p0, "SS_GET_OCB"

    return-object p0

    :pswitch_35
    const-string p0, "SS_PUT_ICB"

    return-object p0

    :pswitch_38
    const-string p0, "SS_GET_ICB"

    return-object p0

    :pswitch_3b
    const-string p0, "SS_PUT_CF"

    return-object p0

    :pswitch_3e
    const-string p0, "SS_GET_CF"

    return-object p0

    nop

    :pswitch_data_42
    .packed-switch 0x64
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_3
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static getStringSsClass(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x8

    if-eq p0, v0, :cond_19

    const/16 v0, 0x10

    if-eq p0, v0, :cond_16

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1f

    .line 302
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "VIDEO"

    return-object p0

    :cond_19
    const-string p0, "SMS"

    return-object p0

    :cond_1c
    const-string p0, "AUDIO"

    return-object p0

    :cond_1f
    const-string p0, "ALL"

    return-object p0
.end method

.method private static getStringStatus(I)Ljava/lang/String;
    .registers 1

    .line 0
    if-nez p0, :cond_5

    const-string p0, "Deactivated"

    return-object p0

    :cond_5
    const-string p0, "Activated"

    return-object p0
.end method

.method private static getStringStatus(Z)Ljava/lang/String;
    .registers 1

    .line 0
    if-eqz p0, :cond_5

    const-string p0, "Activated"

    return-object p0

    :cond_5
    const-string p0, "Deactivated"

    return-object p0
.end method

.method public static i(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 570
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
    .registers 4

    .line 566
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
    .registers 1

    .line 562
    div-int/lit16 p0, p0, 0x2710

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
