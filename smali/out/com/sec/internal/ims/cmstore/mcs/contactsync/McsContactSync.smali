.class public Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;
.super Landroid/os/Handler;
.source "McsContactSync.java"


# static fields
.field private static final CS_SIGNATURES:Landroid/content/pm/Signature;

.field public static final EVENT_DEFAULT_SMS_PACKAGE_CHANGED_TO_NON_SEC:I = 0x8

.field static final EVENT_MCS_ACCESS_TOKEN_SHARE:I = 0x4

.field private static final EVENT_MCS_CONTACT_SYNC_TRIGGER_BY_NETWORK:I = 0x7

.field private static final EVENT_MCS_DEREGISTRATION_COMPLETED:I = 0x6

.field private static final EVENT_MCS_REGISTRATION_COMPLETED:I = 0x5

.field public static final EVENT_MCS_START_CONTACT_SYNC_INIT:I = 0x1

.field public static final EVENT_MCS_START_CONTACT_SYNC_UPDATE:I = 0x2

.field private static final EVENT_MCS_STOP_CONTACT_SYNC:I = 0x3


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mCmsListener:Lcom/sec/ims/ICentralMsgStoreServiceListener;

.field private final mContext:Landroid/content/Context;

.field private mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

.field private final mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

.field private final mPhoneId:I

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082030b308201f3a003020102020427ba3599300d06092a864886f70d01010b050030363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d301e170d3133303432353034313334345a170d3433303431383034313334345a30363120301e060355040b131750726f64756374506c616e6e696e674469766973696f6e3112301006035504031309534b54656c65636f6d30820122300d06092a864886f70d01010105000382010f003082010a0282010100bc1ee71062800dc6ea0aad37ac18de0f5c827a90f64c8ec8c61718e58a675d80e81016872f1f1da06e0f05f8423e0037727adefbd043993244822539158d47b521b5d883a151523ee2f4a2fdd19ac364f29a93c1e05159a8b90902968237edf5931e20ca4d80a76bd5f699430d9dfd57387b49063860fe567780bd7e7b6206fef3e030cd1ec39c324cf8914b1c3b1cf1142f16a18bcf401c87ec1253fb1161cc5b97677973c730e574c54ade32ace9693d36be430fc1191ab42938a54d0b36b11e474a2b859682d21aa78ee1e3d023e738ac704edcdc710e16b267985e65f3647c4b040110fa2c03f91ad4055b2a740dcfc1cab708492b9575902a0f97b807f50203010001a321301f301d0603551d0e0416041402ff5ede4a1a2017d26f1d3e6079083f8ab63dc6300d06092a864886f70d01010b050003820101007f10b1b880d054df5bcaab1204071ee9cc554601b431a886e318a5a600a73c4a0300e4c27d09ddea81d2c9f858baf83dc517b68e760dda559fb2500fbd64c308fc367bc038e39d53794612023b08f759dcf13b7d74002e680a1f661bed3f0aa138325345318ee80566bbe4263d42317fd2ff0746ab78d160dc2af871297f2110fc6db4b270a6b0e45b85de411cb02b881721c655127f1e7678af0c96d7621a1822d9931afe5f1e6bfae05f88a800c0783e2c4bd98b81e9de14f54ff9561a9f1b13fb00c44ca10d62b8a22a601e536440b7090355212594f2cb48fbe8e136c46c9169784e9faf42a417bdd3603cb652f6c6e49d6c7b836d310cdbc14f111e254c"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->CS_SIGNATURES:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;Landroid/content/Context;I)V
    .registers 6

    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    const-class v0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->pm:Landroid/content/pm/PackageManager;

    .line 71
    new-instance v1, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$1;-><init>(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mCmsListener:Lcom/sec/ims/ICentralMsgStoreServiceListener;

    .line 109
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    .line 110
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    .line 111
    iput p3, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    .line 113
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->pm:Landroid/content/pm/PackageManager;

    .line 115
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->registerMcsContactSyncIntentReceiver()V

    .line 116
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->registerContactPushEventListPushListener()V

    const/4 p0, 0x0

    .line 117
    invoke-virtual {p1, v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->registerCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;Z)V

    const-string p0, "created"

    .line 118
    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private checkCSAppSignatures()Z
    .registers 7

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    const-string v1, "com.skt.contactsync"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/os/PackageUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_58

    .line 203
    :try_start_b
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->pm:Landroid/content/pm/PackageManager;

    const-wide/32 v3, 0x8000000

    .line 204
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v3

    .line 203
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v0, :cond_26

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string v3, "checkCSAppSignatures: signingInfo is null."

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 209
    :cond_26
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 211
    array-length v1, v0

    move v3, v2

    :goto_2e
    if-ge v3, v1, :cond_4f

    aget-object v4, v0, v3

    .line 212
    sget-object v5, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->CS_SIGNATURES:Landroid/content/pm/Signature;

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string v3, "checkCSAppSignatures: matched signingInfo."

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_43} :catch_48

    const/4 p0, 0x1

    return p0

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 219
    :catch_48
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    const-string v1, "com.skt.contactsync is not installed"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_4f
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string v1, "checkCSAppSignatures: mismatched signingInfo."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_58
    return v2
.end method

.method private getMcsAccessToken()Ljava/lang/String;
    .registers 5

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMcsAccessToken: accessToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private getMcsUserMdn()Ljava/lang/String;
    .registers 6

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMcsUserMdn: userMdn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", e164UserMdn = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v1, :cond_39

    goto :goto_3b

    :cond_39
    const-string v1, ""

    :goto_3b
    return-object v1
.end method

.method private getOasisServerRoot()Ljava/lang/String;
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerRoot()Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOasisServerRoot: serverRoot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private handleMcsContactSyncTriggerByNetwork(Ljava/lang/String;)V
    .registers 6

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMcsContactSyncTriggerByNetwork syncType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_58

    goto :goto_48

    :sswitch_26
    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_48

    :cond_30
    const/4 v3, 0x2

    goto :goto_48

    :sswitch_32
    const-string v0, "init"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_48

    :cond_3b
    move v3, v1

    goto :goto_48

    :sswitch_3d
    const-string/jumbo v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_48

    :cond_47
    move v3, v2

    :goto_48
    packed-switch v3, :pswitch_data_66

    goto :goto_57

    .line 393
    :pswitch_4c
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->stopMcsContactSync(ZZ)V

    goto :goto_57

    .line 387
    :pswitch_50
    invoke-direct {p0, v1, v1, v2}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->startMcsContactSync(ZZZ)V

    goto :goto_57

    .line 390
    :pswitch_54
    invoke-direct {p0, v2, v1, v2}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->startMcsContactSync(ZZZ)V

    :goto_57
    return-void

    :sswitch_data_58
    .sparse-switch
        -0x31ffc737 -> :sswitch_3d
        0x316510 -> :sswitch_32
        0x360802 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_54
        :pswitch_50
        :pswitch_4c
    .end packed-switch
.end method

.method private handleMcsDeRegistrationCompleted()V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string v2, "handleMcsDeRegistrationCompleted"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x3

    .line 379
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleMcsRegistrationCompleted(I)V
    .registers 6

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMcsRegistrationCompleted: details = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_26

    const/4 p1, 0x1

    .line 370
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_32

    :cond_26
    const/4 v1, 0x5

    if-ne p1, v1, :cond_32

    .line 372
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_32
    :goto_32
    return-void
.end method

.method private handleShareMcsAccessToken(Ljava/lang/String;Z)V
    .registers 7

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShareMcsAccessToken: userMdn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", forceRefresh = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->isMcsUser()Z

    move-result v0

    if-nez v0, :cond_34

    .line 308
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string p2, "handleShareMcsAccessToken: it\'s not MCS user"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 310
    :cond_34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->getMcsUserMdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 311
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string p2, "handleShareMcsAccessToken: userMdn is different"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 315
    :cond_4e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->requestMcsAccessToken(Z)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 316
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string p2, "handleShareMcsAccessToken: requested to refresh"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_70

    :cond_60
    if-eqz p2, :cond_6c

    .line 319
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string p2, "handleShareMcsAccessToken: requestMcsAccessToken failed"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_70

    :cond_6c
    const/4 p1, 0x0

    .line 321
    invoke-direct {p0, p1, p1, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->startMcsContactSync(ZZZ)V

    :goto_70
    return-void
.end method

.method private isMcsUser()Z
    .registers 2

    .line 327
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private registerContactPushEventListPushListener()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mMcsClient:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    new-instance v1, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync$2;-><init>(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->setMcsFcmPushNotificationListener(Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;)V

    return-void
.end method

.method private registerMcsContactSyncIntentReceiver()V
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    if-nez v0, :cond_2b

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string/jumbo v2, "registerMcsContactSyncIntentReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 352
    new-instance v0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;-><init>(Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    .line 353
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;->getPackageIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2b
    return-void
.end method

.method private startMcsContactSync(ZZZ)V
    .registers 9

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMcsContactSync: initialSync = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", triggerByNetwork = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", needStartActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->isMcsUser()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 231
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string/jumbo p2, "startMcsContactSync: it\'s not MCS user"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 233
    :cond_3a
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->checkCSAppSignatures()Z

    move-result v0

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_12d

    .line 237
    :cond_4a
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->getMcsUserMdn()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->getOasisServerRoot()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->getMcsAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_123

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_123

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6a

    goto/16 :goto_123

    .line 245
    :cond_6a
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_85

    const-string v4, "android.intent.action.VIEW"

    .line 247
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "contactsync://launch"

    .line 248
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 249
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_8a

    :cond_85
    const-string v4, "com.samsung.ims.mcs.START_CONTACT_SYNC"

    .line 251
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_8a
    const-string v4, "USER_MDN"

    .line 253
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SERVER_ROOT"

    .line 254
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ACCESS_TOKEN"

    .line 255
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "yes"

    if-eqz p1, :cond_a3

    const-string v1, "INITIAL_SYNC"

    .line 257
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a3
    if-eqz p2, :cond_aa

    const-string v1, "PUSH_EVENT"

    .line 260
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_aa
    const-string v0, "com.skt.contactsync"

    .line 262
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 263
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "]"

    if-eqz p3, :cond_f9

    .line 267
    :try_start_b8
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p3, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity [initial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_d9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b8 .. :try_end_d9} :catch_da

    goto :goto_122

    :catch_da
    move-exception p1

    .line 270
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "startMcsContactSync: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_122

    .line 273
    :cond_f9
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start [initial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", push: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    :goto_122
    return-void

    .line 241
    :cond_123
    :goto_123
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string/jumbo p2, "startMcsContactSync: mandatory param is invalid"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_12d
    :goto_12d
    return-void
.end method

.method private unregisterMcsContactSyncIntentReceiver()V
    .registers 4

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    if-eqz v0, :cond_18

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string/jumbo v2, "unregisterMcsContactSyncIntentReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mIntentReceiver:Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSyncIntentReceiver;

    :cond_18
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_8a

    .line 194
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string v0, "handleMessage: Undefined message."

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_89

    .line 190
    :pswitch_2a
    invoke-virtual {p0, v1, v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->stopMcsContactSync(ZZ)V

    goto :goto_89

    .line 186
    :pswitch_2e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->handleMcsContactSyncTriggerByNetwork(Ljava/lang/String;)V

    goto :goto_89

    .line 182
    :pswitch_36
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->handleMcsDeRegistrationCompleted()V

    goto :goto_89

    .line 178
    :pswitch_3a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->handleMcsRegistrationCompleted(I)V

    goto :goto_89

    .line 168
    :pswitch_46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_89

    const-string v0, "USER_MDN"

    const-string v1, ""

    .line 170
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FORCE_REFRESH"

    .line 172
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "yes"

    .line 171
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 173
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->handleShareMcsAccessToken(Ljava/lang/String;Z)V

    goto :goto_89

    .line 164
    :pswitch_65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->stopMcsContactSync(ZZ)V

    goto :goto_89

    .line 160
    :pswitch_71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, v1, v1, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->startMcsContactSync(ZZZ)V

    goto :goto_89

    .line 156
    :pswitch_7d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->startMcsContactSync(ZZZ)V

    :cond_89
    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_71
        :pswitch_65
        :pswitch_46
        :pswitch_3a
        :pswitch_36
        :pswitch_2e
        :pswitch_2a
    .end packed-switch
.end method

.method public stopMcsContactSync(ZZ)V
    .registers 8

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopMcsContactSync: serviceOff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", triggerByNetwork = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->getMcsUserMdn()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->checkCSAppSignatures()Z

    move-result v1

    if-nez v1, :cond_2c

    return-void

    .line 283
    :cond_2c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 284
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    const-string/jumbo p2, "stopMcsContactSync: userMdn is empty"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 288
    :cond_3d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.ims.mcs.STOP_CONTACT_SYNC"

    .line 289
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "USER_MDN"

    .line 290
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "yes"

    if-eqz p1, :cond_56

    const-string v2, "SERVICE_OFF"

    .line 292
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_56
    if-eqz p2, :cond_5d

    const-string v2, "PUSH_EVENT"

    .line 295
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5d
    const-string v0, "com.skt.contactsync"

    .line 297
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 298
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop  [serviceOff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", push: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/contactsync/McsContactSync;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
