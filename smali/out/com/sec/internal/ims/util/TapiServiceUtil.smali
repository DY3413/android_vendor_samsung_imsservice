.class public Lcom/sec/internal/ims/util/TapiServiceUtil;
.super Ljava/lang/Object;
.source "TapiServiceUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportTapi()Z
    .registers 6

    .line 11
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_1d

    .line 14
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "rcs"

    invoke-static {v4, v5, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    goto :goto_19

    :cond_18
    move v5, v1

    :goto_19
    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1d
    return v3
.end method
