.class public Lcom/sec/internal/ims/config/CustomizationManager;
.super Ljava/lang/Object;
.source "CustomizationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CustomizationManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigManager(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/config/ConfigModule;IZ)Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    .locals 7

    .line 48
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    const/4 v0, 0x0

    .line 49
    invoke-static {p3, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(II)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 52
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "get config from local file."

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 55
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "get config from SDcard."

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 59
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x13010000

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",RCSP:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 62
    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "WorkflowRjil"

    const-string v3, "WorkflowChn"

    if-eqz v1, :cond_a

    .line 63
    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 65
    invoke-interface {v5, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string v5, "jibe"

    .line 67
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p4, :cond_3

    .line 68
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowJibe"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    :cond_3
    const-string p4, "sec"

    .line 70
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 71
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowSec"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    :cond_4
    if-eqz v0, :cond_5

    .line 74
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowVzw"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 77
    :cond_5
    sget-object p4, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 78
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowBell"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowBell;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBell;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 80
    :cond_6
    sget-object p4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 81
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 83
    :cond_7
    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 84
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    :cond_8
    const-string p4, "interop"

    .line 86
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 87
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowInterop"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowInterop;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 90
    :cond_9
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowUp"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 96
    :cond_a
    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 97
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 101
    :cond_b
    sget-object p4, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 102
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {p4, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowRjil;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 106
    :cond_c
    sget-object p4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 107
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p4

    if-eqz p4, :cond_d

    .line 108
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Use local config for SoftPhone"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 111
    :cond_d
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowAtt"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 112
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 116
    :cond_e
    sget-object p4, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_f

    .line 117
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowPrimaryDevice for Telstra"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceTelstra;

    invoke-direct {v5, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceTelstra;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;I)V

    return-object p4

    .line 122
    :cond_f
    sget-object p4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 123
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowTmo"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    return-object p4

    .line 127
    :cond_10
    sget-object p4, Lcom/sec/internal/ims/config/CustomizationManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "WorkflowPrimaryDevice"

    invoke-static {p4, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    new-instance p4, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;

    invoke-direct {v5, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;I)V

    return-object p4
.end method
