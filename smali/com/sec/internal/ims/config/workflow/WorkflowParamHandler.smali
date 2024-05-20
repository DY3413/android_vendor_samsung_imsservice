.class public Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;
.super Ljava/lang/Object;
.source "WorkflowParamHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;
    }
.end annotation


# static fields
.field protected static final CHARSET:Ljava/lang/String; = "utf-8"

.field protected static final CLIENT_VENDOR:I = 0x2

.field protected static final CLIENT_VERSION:I = 0x3

.field protected static final GC_ACS_URL:Ljava/lang/String; = "http://rcs-acs-mccXXX.jibe.google.com"

.field protected static final LOG_TAG:Ljava/lang/String; = "WorkflowParamHandler"

.field protected static final MAX_RETRY:I = 0xf

.field protected static final RCS_ENABLED_BY_USER:I = 0x4

.field protected static final RCS_PROFILE:I = 0x1

.field protected static final RCS_VERSION:I


# instance fields
.field protected mClientVendor:Ljava/lang/String;

.field protected mClientVersion:Ljava/lang/String;

.field protected mPhoneId:I

.field protected mRcsEnabledByUser:Ljava/lang/String;

.field protected mRcsProfile:Ljava/lang/String;

.field protected mRcsVersion:Ljava/lang/String;

.field protected mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

.field protected mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;ILcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 105
    iput p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    .line 106
    iput-object p3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    return-void
.end method

.method public static isIndexTag(Ljava/lang/String;)Z
    .locals 3

    .line 1110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "0"

    .line 1111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "1"

    .line 1112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "2"

    .line 1113
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "3"

    .line 1114
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "4"

    .line 1115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "5"

    .line 1116
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "6"

    .line 1117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "7"

    .line 1118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "8"

    .line 1119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "9"

    .line 1120
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1123
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isListTagName(Ljava/lang/String;)Z
    .locals 3

    .line 1090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "application"

    .line 1091
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "conref"

    .line 1092
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "icsi"

    .line 1093
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "icsi_resource_allocation_mode"

    .line 1094
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "address"

    .line 1095
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "addresstype"

    .line 1096
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "phonecontext"

    .line 1097
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "public_user_identity"

    .line 1098
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1101
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static previousString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 1131
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1134
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 1135
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, v0, -0x1

    .line 1136
    aget-object v1, p0, p1

    invoke-static {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isIndexTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    .line 1137
    aget-object p0, p0, v0

    goto :goto_1

    .line 1139
    :cond_0
    aget-object p0, p0, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private setCapabilitySettings(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 818
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "capdisc_mech"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "root/application/1/capdiscovery/defaultdisc"

    .line 821
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CapDiscMech set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 823
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 825
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private setChatSettings(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 699
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "chat_auth"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "root/application/1/services/ChatAuth"

    .line 702
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChatAuth set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 704
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 706
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "im_session_timer"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "root/application/1/im/TimerIdle"

    .line 713
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImSessionTimer set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_2

    .line 715
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 717
    :cond_2
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method private setClientControlSettings(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 794
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "reconnect_guard_timer"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "root/application/1/clientControl/reconnectGuardTimer"

    .line 797
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReconGuardTimer set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 799
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 801
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "max_1to_many_recipients"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 806
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "root/application/1/clientControl/max1toManyRecipients"

    .line 808
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max1ToManyRecipients set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_2

    .line 810
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 812
    :cond_2
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method private setFtSettings(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 758
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "ft_default_mech"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "root/application/1/im/ftDefaultMech"

    .line 761
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FtDefaultMech set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 763
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 765
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private setGroupChatSettings(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 723
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "group_chat_auth"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "root/application/1/services/GroupChatAuth"

    .line 726
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GroupChatAuth set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 728
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 730
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "max_adhoc_group_size"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "root/application/1/im/max_adhoc_group_size"

    .line 737
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MaxAdhocGroupSize set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_2

    .line 739
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 741
    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    :cond_3
    :goto_1
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "auto_accept_group_chat"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "root/application/1/im/autacceptgroupchat"

    .line 748
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoAcceptGroupChat set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_4

    .line 750
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 752
    :cond_4
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method private setUxSettings(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 771
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "messaging_ux"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 772
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "root/application/1/ux/messagingUX"

    .line 774
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessagingUx set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 776
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 778
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string/jumbo v1, "user_alias_auth"

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "root/application/1/ux/userAliasAuth"

    .line 784
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAliasAuth set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_2

    .line 786
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 788
    :cond_2
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected buildUrl(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/NoInitialDataException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMcc()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMnc()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 149
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsCustomServerUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isConfigProxy()Z

    move-result v2

    const-string v3, "MNC"

    const-string v4, "<MNC>"

    const-string v5, "MCC"

    const-string v6, "<MCC>"

    if-eqz v2, :cond_0

    .line 151
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "http://localhost:1080/cookie/mnc<MNC>/mcc<MCC>/"

    invoke-virtual {v0, v6, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "http://config.rcs.mnc<MNC>.mcc<MCC>.pub.3gppnetwork.org"

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->checkUrlConnection(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "http://rcs-acs-mccXXX.jibe.google.com"

    .line 157
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "XXX"

    .line 158
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1

    .line 146
    :cond_3
    new-instance p0, Lcom/sec/internal/ims/config/exception/NoInitialDataException;

    const-string p1, "MCC or MNC is not prepared"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected checkSetToGS(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 478
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v2, "checkSetToGS:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setChatSettings(Ljava/util/Map;)V

    .line 480
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setGroupChatSettings(Ljava/util/Map;)V

    .line 482
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string/jumbo v2, "standalone_msg_auth"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "root/application/1/services/standaloneMsgAuth"

    .line 485
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SlmAuth set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 487
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 489
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v2, "geopush_auth"

    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getSetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "root/application/1/services/geolocPushAuth"

    .line 496
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GeoPushAuth set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_2

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 500
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setFtSettings(Ljava/util/Map;)V

    .line 505
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setUxSettings(Ljava/util/Map;)V

    .line 506
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setClientControlSettings(Ljava/util/Map;)V

    .line 507
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setCapabilitySettings(Ljava/util/Map;)V

    return-void
.end method

.method protected checkUrlConnection(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/NoInitialDataException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 165
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string/jumbo v0, "skip to checkUrlConnection"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 168
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUrlConnection: url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "https?://"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_1

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 172
    :goto_0
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 175
    new-instance p0, Lcom/sec/internal/ims/config/exception/NoInitialDataException;

    const-string p1, "connection is not prepared"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v0, "utf-8"

    .line 254
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    .line 255
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%7E"

    const-string/jumbo v2, "~"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 257
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object p1
.end method

.method protected encodeRFC7254(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xe

    if-le p0, v0, :cond_0

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "0"

    .line 270
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn%3agsma%3aimei%3a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object p0, v2, p1

    const-string p0, "%s-%s-%s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected getClientVendor(Z)Ljava/lang/String;
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVendorFromStorage()Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->getRcsClientConfiguration(II)Ljava/lang/String;

    move-result-object v0

    .line 609
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "Goog"

    .line 613
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClientVendor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected getClientVendorFromStorage()Ljava/lang/String;
    .locals 1

    .line 595
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v0, "info/client_vendor"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getClientVersion(Z)Ljava/lang/String;
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVersionFromStorage()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->getRcsClientConfiguration(II)Ljava/lang/String;

    move-result-object v0

    .line 632
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "RCSAndr-8.5"

    .line 636
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClientVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected getClientVersionFromStorage()Ljava/lang/String;
    .locals 1

    .line 618
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v0, "info/client_version"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getMccMncInfo(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/NoInitialDataException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMcc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCC"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMnc()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MNC"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    .line 133
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v5, "mcc, mnc from imsi"

    invoke-static {v3, p0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    const/4 v3, 0x3

    .line 134
    invoke-virtual {v0, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 128
    :cond_1
    new-instance p0, Lcom/sec/internal/ims/config/exception/NoInitialDataException;

    const-string p1, "MCC or MNC is not prepared"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string p0, "-"

    .line 209
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 210
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    aget-object p1, p0, v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 211
    aget-object p0, p0, v0

    .line 212
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 218
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, p3, :cond_2

    if-eqz p4, :cond_1

    .line 221
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    sub-int p1, p0, p3

    .line 222
    invoke-virtual {p2, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    sub-int/2addr p3, v0

    .line 225
    invoke-virtual {p2, p0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method protected getModelInfoFromCarrierVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1

    .line 236
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p2, p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-interface {p2, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfigMark(I)Ljava/lang/String;

    move-result-object p2

    .line 239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isSupportCarrierVersion()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 241
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 243
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "om"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    :cond_1
    :goto_0
    sget-object p3, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "terminal version ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] : adds ["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] to terminal version"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method

.method protected getParsedXmlFromBody()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 282
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mXmlParser:Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    .line 284
    :try_start_1
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v1
.end method

.method public getProvisioningXml(Z)[B
    .locals 23

    move-object/from16 v1, p0

    .line 831
    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll()Ljava/util/Map;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    .line 833
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "readData is null!"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 838
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 840
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 842
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    const-string/jumbo v5, "wap-provisioningdoc"

    .line 845
    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 846
    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string/jumbo v6, "version"

    .line 847
    invoke-interface {v4, v6}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    const-string v7, "1.1"

    .line 848
    invoke-interface {v6, v7}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 849
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 850
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v9, "characteristic"

    const-string v10, "id"

    if-eqz v8, :cond_18

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 851
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "root"

    .line 852
    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 853
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Path: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x2f

    .line 857
    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v14, v13, 0x1

    .line 858
    invoke-virtual {v12, v7, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v14
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v3

    move-object v15, v6

    move/from16 v22, v14

    move v14, v13

    move/from16 v13, v22

    :goto_1
    const-string/jumbo v7, "type"

    if-lez v13, :cond_d

    add-int/lit8 v11, v13, 0x1

    .line 864
    :try_start_2
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isIndexTag(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    goto/16 :goto_8

    :cond_1
    add-int/lit8 v15, v14, 0x1

    .line 868
    invoke-virtual {v12, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 871
    invoke-static {v15}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isIndexTag(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c

    move-object/from16 v17, v2

    .line 875
    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .line 877
    :goto_2
    :try_start_3
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 878
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    move-object/from16 v19, v2

    .line 880
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    move-object/from16 v20, v8

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 881
    check-cast v1, Lorg/w3c/dom/Element;

    .line 884
    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 885
    invoke-static {v15}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isListTagName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v13, 0x2

    .line 887
    invoke-virtual {v12, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 889
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 890
    invoke-interface {v1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 896
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 897
    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    goto :goto_2

    :cond_4
    move-object/from16 v20, v8

    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_b

    .line 908
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 909
    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    .line 911
    :goto_5
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 912
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 913
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    move-object/from16 v19, v1

    const/4 v1, 0x1

    if-ne v8, v1, :cond_8

    .line 914
    check-cast v3, Lorg/w3c/dom/Element;

    .line 918
    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 919
    invoke-static {v12, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->previousString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 920
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 921
    invoke-interface {v8, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 922
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    .line 923
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 925
    :cond_5
    invoke-static {v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isListTagName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, v14, -0x1

    .line 926
    invoke-virtual {v12, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 928
    invoke-interface {v3, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_6

    .line 934
    :cond_6
    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 935
    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 937
    invoke-static {v15}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isListTagName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x2f

    .line 938
    invoke-virtual {v12, v3, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-lez v8, :cond_7

    .line 940
    invoke-virtual {v12, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 941
    invoke-interface {v4, v10}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    .line 942
    invoke-interface {v8, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 943
    invoke-interface {v1, v8}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 946
    :cond_7
    invoke-interface {v4, v7}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    .line 947
    invoke-interface {v3, v15}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 948
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v19

    goto/16 :goto_5

    .line 955
    :cond_9
    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 956
    invoke-interface {v5, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 957
    invoke-static {v15}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isListTagName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x2f

    .line 958
    invoke-virtual {v12, v2, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 959
    invoke-virtual {v12, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 960
    invoke-interface {v4, v10}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    .line 961
    invoke-interface {v3, v2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 962
    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 964
    :cond_a
    invoke-interface {v4, v7}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    .line 965
    invoke-interface {v2, v15}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 966
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :cond_b
    move-object v6, v15

    goto :goto_7

    :cond_c
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v8

    :goto_7
    const/16 v1, 0x2f

    .line 974
    invoke-virtual {v12, v1, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move-object/from16 v1, p0

    move-object v15, v6

    move v14, v13

    move-object/from16 v3, v18

    move-object/from16 v8, v20

    move v13, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    :cond_d
    :goto_8
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v8

    const/16 v1, 0x2f

    .line 979
    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 980
    invoke-static {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isIndexTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v14, v14, 0x1

    .line 983
    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 986
    :cond_e
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const-string/jumbo v3, "value"

    const-string v6, "name"

    const-string v8, "parm"

    if-eqz v2, :cond_f

    .line 987
    :try_start_4
    invoke-interface {v4, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 988
    invoke-interface {v5, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 989
    invoke-interface {v4, v6}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    .line 990
    invoke-interface {v6, v1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 991
    invoke-interface {v2, v6}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 992
    invoke-interface {v4, v3}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    .line 993
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 994
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    goto/16 :goto_c

    .line 996
    :cond_f
    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v9, 0x0

    .line 998
    :goto_9
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_16

    .line 999
    invoke-interface {v2, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 1001
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_15

    .line 1002
    check-cast v11, Lorg/w3c/dom/Element;

    .line 1003
    invoke-interface {v11, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1004
    invoke-interface {v11, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1005
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 1006
    invoke-interface {v14, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1007
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v16

    move-object/from16 v19, v2

    move-object/from16 v2, v16

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1009
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v16
    :try_end_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v21, v5

    const-string v5, "/"

    if-nez v16, :cond_10

    move-object/from16 v16, v7

    .line 1010
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_10
    move-object/from16 v16, v7

    move-object/from16 v7, v18

    .line 1012
    :goto_a
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_11

    .line 1013
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1015
    :cond_11
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1018
    :cond_12
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1019
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1022
    :cond_13
    invoke-virtual {v12, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1023
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1024
    invoke-interface {v4, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 1025
    invoke-interface {v11, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1026
    invoke-interface {v4, v6}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    .line 1027
    invoke-interface {v7, v1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 1028
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 1029
    invoke-interface {v4, v3}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    move-object/from16 v11, p0

    .line 1030
    iget-object v13, v11, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v13, v13, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    move/from16 v14, p1

    invoke-static {v1, v2, v13, v14}, Lcom/sec/internal/ims/util/ConfigUtil;->decryptConfigParams(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;

    move-result-object v2

    .line 1031
    invoke-interface {v7, v2}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 1032
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    goto :goto_b

    :cond_14
    move-object/from16 v11, p0

    move/from16 v14, p1

    goto :goto_b

    :cond_15
    move-object/from16 v11, p0

    move/from16 v14, p1

    move-object/from16 v19, v2

    move-object/from16 v21, v5

    move-object/from16 v16, v7

    :goto_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    move-object/from16 v2, v19

    move-object/from16 v5, v21

    goto/16 :goto_9

    :cond_16
    :goto_c
    move-object/from16 v11, p0

    move/from16 v14, p1

    move-object/from16 v21, v5

    const/4 v7, 0x1

    goto :goto_d

    :cond_17
    move/from16 v14, p1

    move-object v11, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v21, v5

    :goto_d
    move-object v1, v11

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v5, v21

    goto/16 :goto_0

    :cond_18
    move-object v11, v1

    move-object/from16 v18, v3

    if-eqz v7, :cond_1e

    .line 1041
    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v6, 0x0

    .line 1043
    :goto_e
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v6, v2, :cond_1a

    .line 1044
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1046
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_19

    .line 1047
    check-cast v2, Lorg/w3c/dom/Element;

    .line 1048
    invoke-interface {v2, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 1049
    invoke-interface {v2, v10}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    :cond_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 1053
    :cond_1a
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 1054
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    const-string v2, "indent"

    const-string/jumbo v3, "yes"

    .line 1055
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "{http://xml.apache.org/xslt}indent-amount"

    const-string v3, "4"

    .line 1056
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1058
    iget-object v3, v11, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 1059
    new-instance v4, Ljava/io/File;

    const-string v5, "composedXmlFile"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1060
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1061
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1064
    :try_start_6
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v4, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1066
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-eqz v7, :cond_1d

    :cond_1b
    const-wide/16 v7, 0x1

    sub-long/2addr v2, v7

    .line 1070
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1071
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_1c

    cmp-long v7, v2, v5

    if-gtz v7, :cond_1b

    .line 1073
    :cond_1c
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1075
    :cond_1d
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 1064
    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1076
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1078
    :goto_10
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1
    :try_end_b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    move-object/from16 v18, v3

    :goto_11
    move-object v1, v0

    .line 1083
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :catch_4
    move-exception v0

    move-object/from16 v18, v3

    :goto_12
    move-object v1, v0

    .line 1081
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 1085
    :cond_1e
    :goto_13
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method protected getRcsEnabledByUserFromStorage()Ljava/lang/String;
    .locals 1

    .line 641
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v0, "info/rcs_enabled_by_user"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getRcsProfile(Z)Ljava/lang/String;
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsProfileFromStorage()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->getRcsClientConfiguration(II)Ljava/lang/String;

    move-result-object v0

    .line 586
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "UP_1.0"

    .line 590
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRcsProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected getRcsProfileFromStorage()Ljava/lang/String;
    .locals 1

    .line 572
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v0, "info/rcs_profile"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getRcsVersion(Z)Ljava/lang/String;
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsVersionFromStorage()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->getRcsClientConfiguration(II)Ljava/lang/String;

    move-result-object v0

    .line 564
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "7.0"

    .line 567
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRcsVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected getRcsVersionFromStorage()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string v0, "info/rcs_version"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getUserAccept(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 454
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAcceptDetailed(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->ACCEPT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getUserAcceptDetailed(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->NON_DEFAULT_MSG_APP:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    return-object p0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v1

    .line 444
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserMessage(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 445
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-le v0, v2, :cond_2

    if-gtz v1, :cond_3

    .line 446
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAcceptWithDialog(Ljava/util/Map;)Z

    move-result v4

    .line 448
    :cond_3
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAccept: userAccept: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " oldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", newVersion: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v4, :cond_4

    .line 449
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->ACCEPT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;->REJECT:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler$UserAccept;

    :goto_1
    return-object p0
.end method

.method protected getUserAcceptWithDialog(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "root/msg/title"

    .line 458
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "root/msg/message"

    .line 459
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "root/msg/accept_btn"

    .line 460
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "root/msg/reject_btn"

    .line 461
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 462
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 463
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    .line 464
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAcceptWithDialog: userAccept: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    return p1
.end method

.method protected getUserMessage(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 428
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 429
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "root/msg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method protected initUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/NoInitialDataException;
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getMccMncInfo(Ljava/util/Map;)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->buildUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/config/exception/NoInitialDataException;
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isClientVendorChanged(Ljava/lang/String;)Z
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVendor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVendorFromStorage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVendor:Ljava/lang/String;

    .line 675
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVendor:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isClientVersionChanged(Ljava/lang/String;)Z
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVersionFromStorage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVersion:Ljava/lang/String;

    .line 680
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVersion:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected isConfigProxy()Z
    .locals 5

    .line 180
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(II)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 182
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v2, "config proxy is disabled."

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_0
    :goto_0
    const/16 v0, 0xf

    if-ge v1, v0, :cond_2

    .line 189
    :try_start_0
    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    const-string v3, "http://127.0.0.1:1080/test/"

    .line 190
    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    .line 191
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    .line 192
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {v3}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "89148ec7-de3f-42de-b2c5-b33298e1f4c6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return v2

    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config proxy is enabled and got exception (retry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method public isRcsClientConfigurationInfoChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 689
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isRcsVersionChanged(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isRcsProfileChanged(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isClientVendorChanged(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isClientVersionChanged(Ljava/lang/String;)Z

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

.method public isRcsClientConfigurationInfoNotSet()Z
    .locals 2

    const/4 v0, 0x0

    .line 694
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsVersion(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsProfile(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVendor(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getClientVersion(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected isRcsEnabledByUser(Z)Ljava/lang/String;
    .locals 3

    .line 645
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsEnabledByUserFromStorage()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGoogleImsAdaptor()Lcom/sec/internal/interfaces/google/IGoogleImsService;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/google/IGoogleImsService;->getRcsClientConfiguration(II)Ljava/lang/String;

    move-result-object v0

    .line 655
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "1"

    .line 659
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRcsEnabledByUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public isRcsEnabledByUserChanged(Ljava/lang/String;)Z
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsEnabledByUser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsEnabledByUser:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsEnabledByUserFromStorage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsEnabledByUser:Ljava/lang/String;

    .line 685
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsEnabledByUser:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isRcsProfileChanged(Ljava/lang/String;)Z
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsProfile:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsProfileFromStorage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsProfile:Ljava/lang/String;

    .line 670
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsProfile:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isRcsVersionChanged(Ljava/lang/String;)Z
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getRcsVersionFromStorage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsVersion:Ljava/lang/String;

    .line 665
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsVersion:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected isRequiredAuthentication(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "root/vers/version"

    .line 294
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "root/vers/validity"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 295
    :cond_1
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v1, "isRequiredAuthentication: parsedXml need to contain version or validity item"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->isCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 299
    :cond_2
    new-instance p0, Lcom/sec/internal/ims/config/exception/EmptyBodyAndCookieException;

    const-string p1, "no body and no cookie, something wrong"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/exception/EmptyBodyAndCookieException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_3
    new-instance p0, Lcom/sec/internal/ims/config/exception/InvalidXmlException;

    const-string p1, "no parsedXml data"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/exception/InvalidXmlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected isSupportCarrierVersion()Z
    .locals 0

    .line 232
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->isSupportCarrierVersion(I)Z

    move-result p0

    return p0
.end method

.method protected moveHttpParam(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    const-string p0, "root/application/1/im/ext/max_adhoc_open_group_size"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "root/application/1/im/ext/ftMSRPftWarnSize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "root/application/1/im/ftWarnSize"

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "root/application/1/im/ext/ftMSRPMaxSizeFileTr"

    .line 408
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "root/application/1/im/MaxSizeFileTr"

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "root/application/1/im/ext/ftMSRPMaxSizeFileTrIncoming"

    .line 409
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "root/application/1/im/MaxSizeFileTrIncoming"

    .line 410
    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "root/application/1/im/ext/max_adhoc_closed_group_size"

    .line 411
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "root/application/1/im/max_adhoc_group_size"

    .line 412
    invoke-virtual {v5, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "root/application/1/im/ext/fthttpftwarnsize"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "root/application/1/im/ext/fthttpmaxsizefiletr"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "root/application/1/im/ext/fthttpmaxsizefiletrincoming"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {v5, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected parseParam(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "root/application/0/appauth/userpwd"

    .line 306
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 307
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "root/application/0/3gpp_ims/ext/gsma/userpwd"

    .line 309
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->encryptParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encrypt data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    const-string v0, "root/application/1/im/maxsize"

    .line 316
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "root/application/1/im/maxsize1to1"

    .line 317
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 319
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxsize is empty, use it as maxsize1to1 value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v2, ""

    .line 322
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->checkSetToGS(Ljava/util/Map;)V

    return-void
.end method

.method protected parseParamForAtt(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    .line 331
    invoke-static {v0, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp2Profile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 330
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 332
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRcsUp2ProfileForGoogle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "root/application/1/im/"

    if-eqz v4, :cond_1

    const-string v4, "root/application/1/messaging/filetransfer/"

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 337
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ftHTTPCSURI"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 338
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 339
    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v6, "ftHTTPCSURI is null. Try to read with UP 1.0 path"

    invoke-static {v3, v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    move-object v4, v5

    :cond_2
    if-eqz v6, :cond_3

    .line 345
    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "http"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 346
    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v9, "handleFtHttpCsUriValue: FT_HTTP_CS_URI has invalid URL"

    invoke-static {v3, v6, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-interface {p1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "ftHTTPCSUser"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "ftHTTPCSPwd"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "root/application/1/serviceproviderext/nms_url"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "root/application/1/serviceproviderext/nc_url"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "root/token/token"

    aput-object v2, v3, v1

    invoke-static {p1, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->encryptParams(Ljava/util/Map;[Ljava/lang/String;)V

    :try_start_0
    const-string v1, "info/raw_config_xml_file"

    .line 355
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 357
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string v4, "Failed to put xml!"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 358
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 366
    :goto_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "root/application/1/im/ext/att/slmMaxRecipients"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 367
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slmMaxRecipients: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "root/application/1/messaging/chat/"

    goto :goto_3

    :cond_4
    move-object v6, v5

    .line 371
    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "max_adhoc_group_size"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 373
    invoke-virtual {v4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 374
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 375
    :cond_5
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "max_adhoc_group_size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "root/application/1/im/ext/max_adhoc_closed_group_size"

    .line 378
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method protected parseParamForLocalFile(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getXml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "info/raw_config_xml_file"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "root/application/1/im/ext/att/slmMaxRecipients"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 391
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "root/application/1/im/ext/max_adhoc_closed_group_size"

    if-nez v2, :cond_0

    .line 392
    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using slmMaxRecipients: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "root/application/1/im/max_adhoc_group_size"

    .line 395
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 396
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slmMaxRecipients is null. Using max_adhoc_group_size instead: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string/jumbo v0, "slmMaxRecipients and max_adhoc_group_size is null"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 471
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method protected setRcsClientConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 514
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isRcsClientConfigurationInfoChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string/jumbo p2, "setRcsClientConfiguration: rcsClientConfigurationInfo is not changed"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 518
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRcsClientConfiguration: rcsVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rcsProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clientVendor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clientVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": set this info in storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 520
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsVersion:Ljava/lang/String;

    .line 521
    iput-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsProfile:Ljava/lang/String;

    .line 522
    iput-object p3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVendor:Ljava/lang/String;

    .line 523
    iput-object p4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVersion:Ljava/lang/String;

    .line 525
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p2, p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p3, ""

    if-eqz p1, :cond_2

    move-object p1, p3

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsVersion:Ljava/lang/String;

    :goto_0
    const-string p4, "info/rcs_version"

    invoke-interface {p2, p4, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 526
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsProfile:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object p2, p3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsProfile:Ljava/lang/String;

    :goto_1
    const-string p4, "info/rcs_profile"

    invoke-interface {p1, p4, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 527
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVendor:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    move-object p2, p3

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVendor:Ljava/lang/String;

    :goto_2
    const-string p4, "info/client_vendor"

    invoke-interface {p1, p4, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 528
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVersion:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    iget-object p3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mClientVersion:Ljava/lang/String;

    :goto_3
    const-string p0, "info/client_version"

    invoke-interface {p1, p0, p3}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method protected setRcsSwitchValue(Ljava/lang/String;)Z
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 537
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isRcsEnabledByUserChanged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    const-string/jumbo v0, "setRcsSwitchValue: RcsSwitchValue is not changed"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 541
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRcsSwitchValue: rcsEnabledByUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 542
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsEnabledByUser:Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mWorkflowBase:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->mRcsEnabledByUser:Ljava/lang/String;

    :goto_0
    const-string p1, "info/rcs_enabled_by_user"

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method
