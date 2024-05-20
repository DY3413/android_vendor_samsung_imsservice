.class public Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/rcs/util/RcsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualRcs"
.end annotation


# static fields
.field private static mIsDualRcsRegForSlot:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsDualRcsSettings:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsRegForSlot:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dualRcsPolicyCase(Landroid/content/Context;I)Z
    .locals 7

    .line 183
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->getDualRcsPolicy(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 193
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualRcsPolicyCase: policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-ne v0, v2, :cond_4

    .line 198
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 199
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$smgetMatchedSalesCode(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p0

    if-ne p1, p0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1

    :cond_4
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 207
    invoke-static {p0, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 208
    invoke-static {v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    return v2

    :cond_7
    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    return v2

    :cond_8
    const/4 v4, 0x4

    if-ne v0, v4, :cond_b

    .line 219
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getRepresentSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getRepresentSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->getRepresentSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualRcsPolicyCase: omcCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", omcNwCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", counterOmcNwCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p0

    if-eq p1, p0, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    return v2

    :cond_a
    return v1

    :cond_b
    const/4 v4, 0x5

    if-ne v0, v4, :cond_e

    .line 229
    invoke-static {p0, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 230
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 231
    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    return v1

    :cond_d
    return v2

    .line 241
    :cond_e
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dualRcsPolicyCase: Invalid policy "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getDualRcsPolicy(I)I
    .locals 3

    .line 143
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 144
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->GOOGLEGC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "us"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "dual_rcs_policy"

    .line 150
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isDualRcsReg()Z
    .locals 6

    .line 68
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const-string v1, "isDualRcsReg: false"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    move v0, v2

    .line 72
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 73
    sget-object v3, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsRegForSlot:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isDualRcsReg: true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static isDualRcsSettings()Z
    .locals 3

    .line 83
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDualRcsSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-boolean v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    return v0
.end method

.method public static isRegAllowed(Landroid/content/Context;I)Z
    .locals 2

    .line 154
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSingleRegiRequiredAndAndroidMessageAppInUsed(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 164
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->needToCheckOmcCodeAndSimMno(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 170
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 174
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDishCrossOver()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isCctCBRS()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 179
    :cond_4
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->dualRcsPolicyCase(Landroid/content/Context;I)Z

    move-result p0

    return p0

    .line 175
    :cond_5
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DishCross or CCT CBRS - isRegAllowed: return true"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static needToCheckOmcCodeAndSimMno(I)Z
    .locals 2

    .line 138
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->getDualRcsPolicy(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static refreshDualRcsReg(Landroid/content/Context;)V
    .locals 4

    .line 88
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsSettings(Landroid/content/Context;)V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 90
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p0, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->updateDualRcsRegi(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static refreshDualRcsSettings(Landroid/content/Context;)V
    .locals 3

    .line 112
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 113
    sput-boolean v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    return-void

    :cond_0
    move v0, v1

    .line 117
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 118
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 119
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    :goto_1
    sput-boolean v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    return-void

    :cond_3
    move v0, v1

    .line 125
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 126
    invoke-static {p0, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->dualRcsPolicyCase(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 p0, 0x1

    .line 127
    sput-boolean p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    :cond_5
    sput-boolean v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsSettings:Z

    return-void
.end method

.method private static updateDualRcsRegi(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDualRcsRegi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsRegForSlot:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 99
    sget-object v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsRegForSlot:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->RCS_PREFERENCE_PROVIDER_SUPPORT_DUAL_RCS:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->mIsDualRcsRegForSlot:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
