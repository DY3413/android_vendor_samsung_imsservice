.class public final enum Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
.super Ljava/lang/Enum;
.source "DigestAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/httpclient/DigestAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field public static final enum md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .registers 6

    .line 55
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v1, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v2, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v3, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v4, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v5, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 56
    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "MD5"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "MD5_SESSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "AKAV1_MD5"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "AKAV2_MD5"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    new-instance v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    const-string v1, "md5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    .line 55
    invoke-static {}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->$values()[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->$VALUES:[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAlgoType(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .registers 3

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 64
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_60

    goto :goto_4b

    :sswitch_15
    const-string v0, "AKAv2-MD5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_4b

    :cond_1e
    const/4 v1, 0x4

    goto :goto_4b

    :sswitch_20
    const-string v0, "AKAv1-MD5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_4b

    :cond_29
    const/4 v1, 0x3

    goto :goto_4b

    :sswitch_2b
    const-string v0, "md5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_4b

    :cond_34
    const/4 v1, 0x2

    goto :goto_4b

    :sswitch_36
    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_4b

    :cond_3f
    const/4 v1, 0x1

    goto :goto_4b

    :sswitch_41
    const-string v0, "MD5-sess"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    packed-switch v1, :pswitch_data_76

    .line 76
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->UNKNOWN:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 74
    :pswitch_51
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 72
    :pswitch_54
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV1_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 68
    :pswitch_57
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->md5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 66
    :pswitch_5a
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    .line 70
    :pswitch_5d
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0

    :sswitch_data_60
    .sparse-switch
        -0x56fcf8df -> :sswitch_41
        0x1297e -> :sswitch_36
        0x1a57e -> :sswitch_2b
        0x4ef15743 -> :sswitch_20
        0x4eff6ec4 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .registers 2

    .line 55
    const-class v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;
    .registers 1

    .line 55
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->$VALUES:[Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 82
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth$1;->$SwitchMap$com$sec$internal$helper$httpclient$DigestAuth$Algo:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_26

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-eq p0, v0, :cond_20

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    const-string p0, ""

    return-object p0

    :cond_1a
    const-string p0, "AKAv2-MD5"

    return-object p0

    :cond_1d
    const-string p0, "AKAv1-MD5"

    return-object p0

    :cond_20
    const-string p0, "MD5-sess"

    return-object p0

    :cond_23
    const-string p0, "md5"

    return-object p0

    :cond_26
    const-string p0, "MD5"

    return-object p0
.end method
