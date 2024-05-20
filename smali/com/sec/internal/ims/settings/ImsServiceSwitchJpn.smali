.class public Lcom/sec/internal/ims/settings/ImsServiceSwitchJpn;
.super Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;
.source "ImsServiceSwitchJpn.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected overrideImsSwitchForCarrier(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1

    .line 17
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isRKTOmcCode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isJPNOpenOmcCode()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "enableServiceVilte"

    const-string v0, "false"

    .line 18
    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method
