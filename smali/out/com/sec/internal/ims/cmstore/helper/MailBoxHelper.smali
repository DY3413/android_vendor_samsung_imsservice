.class public Lcom/sec/internal/ims/cmstore/helper/MailBoxHelper;
.super Ljava/lang/Object;
.source "MailBoxHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMailBoxReset(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 40
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "notificationList"

    .line 41
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_f

    return v0

    .line 45
    :cond_f
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    if-nez p0, :cond_18

    return v0

    :cond_18
    const-string v1, "nmsEventList"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_21

    return v0

    :cond_21
    const-string v1, "nmsEvent"

    .line 53
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_2a

    return v0

    .line 57
    :cond_2a
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    if-eqz p0, :cond_41

    const-string/jumbo v1, "resetBox"

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_39} :catch_3d

    if-eqz p0, :cond_41

    const/4 p0, 0x1

    return p0

    :catch_3d
    move-exception p0

    .line 62
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_41
    return v0
.end method
