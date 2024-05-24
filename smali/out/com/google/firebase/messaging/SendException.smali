.class public final Lcom/google/firebase/messaging/SendException;
.super Ljava/lang/Exception;


# instance fields
.field private final mErrorCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 9

    .line 0
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5f

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_62

    goto :goto_54

    :sswitch_1c
    const-string v1, "missing_to"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_54

    :cond_25
    move v6, v2

    goto :goto_54

    :sswitch_27
    const-string v1, "messagetoobig"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_54

    :cond_30
    move v6, v3

    goto :goto_54

    :sswitch_32
    const-string v1, "invalid_parameters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_54

    :cond_3b
    move v6, v4

    goto :goto_54

    :sswitch_3d
    const-string/jumbo v1, "toomanymessages"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_54

    :cond_47
    move v6, v5

    goto :goto_54

    :sswitch_49
    const-string/jumbo v1, "service_not_available"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    goto :goto_54

    :cond_53
    move v6, v0

    :goto_54
    packed-switch v6, :pswitch_data_78

    goto :goto_5f

    :pswitch_58
    move v0, v4

    goto :goto_5f

    :pswitch_5a
    move v0, v5

    goto :goto_5f

    :pswitch_5c
    move v0, v2

    goto :goto_5f

    :pswitch_5e
    move v0, v3

    :cond_5f
    :goto_5f
    iput v0, p0, Lcom/google/firebase/messaging/SendException;->mErrorCode:I

    return-void

    :sswitch_data_62
    .sparse-switch
        -0x67e7c3ad -> :sswitch_49
        -0x4cf26401 -> :sswitch_3d
        -0x36e3eace -> :sswitch_32
        -0x24c7160d -> :sswitch_27
        -0x5aa500c -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5c
        :pswitch_5a
        :pswitch_58
        :pswitch_5a
    .end packed-switch
.end method
