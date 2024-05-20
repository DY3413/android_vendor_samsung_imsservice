.class public Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;
.super Landroid/os/Handler;
.source "TmoEcholocateIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;,
        Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;,
        Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;
    }
.end annotation


# static fields
.field private static final EVENT_CALL_STATUS_CHANGE_EVENT:I = 0x4

.field private static final EVENT_ECHOLOCATE_EMERGENCY_TIMER_STATE_RECEIVED:I = 0x7

.field private static final EVENT_ECHOLOCATE_RECEIVED:I = 0x1

.field private static final EVENT_ECHOLOCATE_REMOVE_CALLID_CACHE:I = 0x3

.field private static final EVENT_ECHOLOCATE_SIP_RECEIVED:I = 0x2

.field private static final EVENT_HANDOVER_SUCCESS:I = 0x5

.field private static final EVENT_PDN_DISCONNECT:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "EcholocateBroadcaster"

.field private static final LTE_RAT:Ljava/lang/String; = "3GPP-E-UTRAN-FDD"

.field private static final NR_EPSFB_FAILED:I = 0x3

.field private static final NR_EPSFB_INIT:I = 0x0

.field private static final NR_EPSFB_STARTED:I = 0x1

.field private static final NR_EPSFB_SUCCESS:I = 0x2

.field private static final NR_FDD_RAT:Ljava/lang/String; = "3GPP-NR-FDD"

.field private static final NR_RAT:Ljava/lang/String; = "3GPP-NR"

.field private static final NR_STATUS_CONNECTED:I = 0x3

.field private static final NR_TAU_REJECT:I = 0x4

.field private static final NR_TDD_RAT:Ljava/lang/String; = "3GPP-NR-TDD"

.field private static final RAT_5G:I = 0x6

.field private static final RAT_LTE:I = 0x3

.field private static final SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

.field private static final SIGNATURES_MY_TMOBILE:Landroid/content/pm/Signature;

.field private static final SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

.field private static final WIFI_RAT:Ljava/lang/String; = "IEEE-802.11"


# instance fields
.field private mCallIDList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallOffhook:Z

.field private mCallState:I

.field private final mContext:Landroid/content/Context;

.field private mDiffTime:J

.field private mEPSFBsuccess:[Z

.field private mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

.field private mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPendingQue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneCount:I

.field private mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

.field private mRetryINVITE:[Z

.field private mSalesCode:Ljava/lang/String;

.field private mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallOffhook(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallOffhook:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEPSFBsuccess(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)[Z
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingQue(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPendingQue:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryINVITE(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)[Z
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mRetryINVITE:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSignalStrength(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)[Lcom/sec/internal/helper/os/SignalStrengthWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallOffhook(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallOffhook:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallState(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;I)V
    .locals 0

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDiffTime(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mDiffTime:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 267
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->SIGNATURES_MY_TMOBILE:Landroid/content/pm/Signature;

    .line 297
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    .line 327
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IPdnController;I)V
    .locals 2

    .line 357
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 97
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    .line 100
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    .line 102
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->pm:Landroid/content/pm/PackageManager;

    const-string v0, ""

    .line 105
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSalesCode:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPendingQue:Ljava/util/Queue;

    const/4 v0, 0x1

    .line 108
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneCount:I

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mDiffTime:J

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallOffhook:Z

    .line 358
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 359
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->pm:Landroid/content/pm/PackageManager;

    .line 361
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getMiscHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    const-string p2, "phone"

    .line 362
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 363
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneCount:I

    .line 364
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 365
    new-array p2, p4, [Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    .line 366
    new-array p2, p4, [Z

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    .line 367
    new-array p2, p4, [Z

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mRetryINVITE:[Z

    .line 370
    new-instance p2, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    const/16 p3, 0x120

    invoke-direct {p2, p1, p3}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    return-void
.end method

.method private checkEchoAppSignatureKey()Z
    .locals 2

    .line 981
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    const-string v1, "com.tmobile.echolocate"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method private checkMyTmobileSignatureKey()Z
    .locals 2

    .line 977
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->SIGNATURES_MY_TMOBILE:Landroid/content/pm/Signature;

    const-string v1, "com.tmobile.pr.mytmobile"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method private checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z
    .locals 4

    const/4 v0, 0x0

    .line 961
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->pm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_1

    .line 963
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 964
    invoke-virtual {v3, p2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 970
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EcholocateBroadcaster"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private checkPackageSprintHubSignatureKey()Z
    .locals 2

    .line 985
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

    const-string v1, "com.sprint.ms.smf.services"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method private checkSecurity()Z
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSalesCode:Ljava/lang/String;

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 950
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkMyTmobileSignatureKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkEchoAppSignatureKey()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 951
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSalesCode:Ljava/lang/String;

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 952
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkPackageSprintHubSignatureKey()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method private getCellId(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 1337
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCellId Type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "EcholocateBroadcaster"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getAllCellInfo(IZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1340
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1341
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellInfo;

    .line 1342
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1344
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 1345
    instance-of p2, p1, Landroid/telephony/CellIdentityLte;

    if-eqz p2, :cond_2

    .line 1346
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1348
    :cond_2
    instance-of p2, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p2, :cond_0

    .line 1349
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, "-1"

    .line 1354
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCellId : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getConfigVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "//configInfo/version"

    const/4 v1, 0x0

    .line 1254
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 1255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-1"

    if-nez v0, :cond_1

    const-string v0, "-2"

    .line 1256
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, v1

    :cond_0
    return-object p0

    :cond_1
    return-object v1
.end method

.method private getEPSFBState(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "EPSFB_STARTED"

    return-object p0

    :cond_0
    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    const-string p0, "EPSFB_SUCCESSFUL"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "EPSFB_FAILED"

    return-object p0
.end method

.method private getLteBand(IZLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "]:"

    const-string v1, "EcholocateBroadcaster"

    const-string v2, "ril.lteband"

    const-string v3, "0"

    .line 989
    invoke-static {p1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 990
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v4

    .line 991
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "255"

    if-nez v5, :cond_0

    if-nez p2, :cond_0

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string v2, "NA"

    .line 994
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    aget-boolean p2, p2, p1

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const-string p2, "SA5G"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 996
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "n"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 999
    :cond_2
    :try_start_0
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1000
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1001
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "ril.ltescellbands"

    .line 1002
    invoke-static {p1, p2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1003
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsingCarrierAggregation() scndBand["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " nwType== "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "ServiceState is Null"

    .line 1010
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_4
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "strband["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", mEPSFB["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    aget-boolean p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private getNetworkType(IZ)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    const-string p0, "WFC2"

    return-object p0

    .line 632
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    aget-boolean p2, p2, p1

    const-string v0, "LTE"

    const-string v1, "EcholocateBroadcaster"

    if-eqz p2, :cond_1

    .line 633
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkType mEPSFBsuccess["

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    aget-boolean p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 636
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    .line 638
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 639
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p2

    const/16 v2, 0x14

    if-ne p2, v2, :cond_2

    const-string p0, "SA5G"

    return-object p0

    .line 642
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 644
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    const-string p0, "ENDC"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_3
    return-object v0

    :catch_0
    const-string p0, "ServiceState is Null"

    .line 654
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string p0, "NA"

    return-object p0
.end method

.method private getNetworkTypeForEPSFB(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "LTE"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "SA5G"

    return-object p0
.end method

.method private getNetworkTypeForPSHO(IIII)Ljava/lang/String;
    .locals 4

    const-string v0, "SA5G"

    const/4 v1, 0x6

    const-string v2, "LTE"

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    if-ne p3, v1, :cond_0

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    const/4 p2, 0x0

    .line 569
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNetworkType(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x2

    if-ne p2, p0, :cond_3

    if-ne p4, v1, :cond_3

    return-object v0

    :cond_3
    return-object v2
.end method

.method private getNwStateSignal(IZ)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1017
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 1018
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1022
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1023
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    .line 1025
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object v4, v4, v1

    const-string v5, "NA"

    if-eqz v4, :cond_1

    .line 1026
    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getDbm(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v5

    .line 1029
    :goto_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    const/4 v6, 0x3

    const-string v7, ""

    const/4 v8, 0x1

    const-string v9, ";"

    if-eqz p2, :cond_4

    if-eqz v4, :cond_3

    .line 1033
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1034
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v7

    goto :goto_2

    :cond_3
    move-object v4, v5

    .line 1037
    :goto_2
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {v10, v8}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;I)I

    move-result v10

    if-ne v10, v6, :cond_5

    .line 1039
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";NA;NA;NA;NA;NA;NA;"

    .line 1040
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1041
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v4, v5

    .line 1045
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v10, "EcholocateBroadcaster"

    const-string v11, "]"

    const-string v12, ";NA;"

    if-eqz v2, :cond_6

    .line 1046
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1047
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 1048
    :cond_6
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object v2, v2, v1

    if-eqz v2, :cond_8

    .line 1049
    invoke-virtual {v2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrLevel()I

    move-result v2

    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object v13, v13, v1

    invoke-virtual {v13}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getInvalidSignalStrength()I

    move-result v13

    const-string v14, " "

    if-eq v2, v13, :cond_7

    .line 1050
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsRsrp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1051
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object v13, v13, v1

    invoke-virtual {v13}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsRsrq()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 1052
    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object v15, v15, v1

    invoke-virtual {v15}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsSinr()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 1053
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Nr [ rsrp: rsrq: sinr: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1055
    :cond_7
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1056
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrq()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 1057
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default LTE [ rsrp: rsrq:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v5

    .line 1059
    :goto_3
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1060
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_8
    :goto_4
    move-object v2, v5

    move-object v13, v2

    move-object v15, v13

    :goto_5
    const-string v4, "ril.signal.param"

    const-string v6, "0"

    .line 1064
    invoke-static {v1, v4, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 1067
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1068
    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :cond_9
    if-eqz v6, :cond_11

    .line 1070
    array-length v8, v6

    const/4 v14, 0x3

    if-lt v8, v14, :cond_11

    const/4 v8, 0x0

    .line 1071
    aget-object v14, v6, v8

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 p2, v10

    const-string v10, "255"

    if-nez v14, :cond_b

    aget-object v14, v6, v8

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_6

    .line 1072
    :cond_a
    aget-object v8, v6, v8

    goto :goto_7

    :cond_b
    :goto_6
    move-object v8, v5

    .line 1071
    :goto_7
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1079
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object v2, v2, v1

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrLevel()I

    move-result v2

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getInvalidSignalStrength()I

    move-result v0

    if-eq v2, v0, :cond_c

    .line 1080
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_c
    const/4 v0, 0x2

    .line 1082
    aget-object v2, v6, v0

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    aget-object v2, v6, v0

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    aget-object v5, v6, v0

    :cond_e
    :goto_8
    aput-object v5, v6, v0

    const/4 v2, 0x1

    .line 1083
    aget-object v5, v6, v2

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    aget-object v5, v6, v2

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_9

    .line 1084
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v6, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_10
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v6, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    :goto_a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    :cond_11
    move-object/from16 p2, v10

    .line 1087
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1088
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1089
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";NA;NA;"

    .line 1090
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1095
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "signal["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPSHOState(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "PSHO_STARTED"

    return-object p0

    :cond_0
    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    const-string p0, "PSHO_SUCCESSFUL"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "PSHO_FAILED"

    return-object p0
.end method

.method private getPhoneIdFromSessionId(I)I
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return p0

    .line 1115
    :cond_0
    div-int/lit8 p1, p1, 0xa

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, p1

    :goto_0
    return p0
.end method

.method private getRatType(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRatType Type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EcholocateBroadcaster"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "SA5G"

    .line 1360
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "ril.nrnetworktype"

    const-string p2, ""

    .line 1361
    invoke-static {p1, p0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TDD"

    .line 1362
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "3GPP-NR-TDD"

    return-object p0

    :cond_0
    const-string p1, "FDD"

    .line 1364
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "3GPP-NR-FDD"

    return-object p0

    :cond_1
    const-string p0, "3GPP-NR"

    return-object p0

    :cond_2
    const-string p0, "WFC2"

    .line 1368
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "IEEE-802.11"

    return-object p0

    :cond_3
    const-string p0, "3GPP-E-UTRAN-FDD"

    return-object p0
.end method

.method private getSDPContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 857
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "\r\n"

    .line 858
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    .line 859
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 860
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    const-string v4, "c="

    .line 861
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "a=rtpmap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "a=recvonly"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "a=sendonly"

    .line 862
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "a=sendrecv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "\""

    .line 863
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 866
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSa5gBandConfig(I)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1234
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1237
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->isSupportedNrca(I)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "//StandaloneBands5G_NRCA"

    .line 1238
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "//StandaloneBands5G"

    .line 1240
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1243
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "NONE"

    const-string p1, "-1"

    .line 1244
    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v1, "-2"

    .line 1245
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "ERROR"

    .line 1246
    invoke-virtual {v0, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1248
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->parseBands5GXml(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private getSalesCode()V
    .locals 3

    const-string v0, "EcholocateBroadcaster"

    :try_start_0
    const-string v1, "ro.csc.sales_code"

    .line 938
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSalesCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Problem getting sales code!"

    .line 940
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSalesCode:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 943
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSalesCode:Ljava/lang/String;

    .line 945
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sales_code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .locals 1

    .line 401
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 402
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method private getTimeStamp(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 1101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1103
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const-string v0, "EcholocateBroadcaster"

    if-eqz p2, :cond_0

    const-string/jumbo v1, "tag"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "xpath"

    :goto_0
    const-string v2, "content://com.samsung.ims.entitlementconfig.provider"

    .line 1267
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "config"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1268
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "tag_name"

    .line 1269
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1270
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1272
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 1273
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 1275
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 1277
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const-string p1, "getValueDeviceConfig : cursor is null"

    .line 1280
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :goto_1
    if-eqz p0, :cond_4

    .line 1282
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    if-eqz p0, :cond_3

    .line 1272
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 1284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getValueDeviceConfig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "-2"

    :cond_4
    :goto_4
    return-object p1
.end method

.method private getVoWiFiConfig()Ljava/lang/String;
    .locals 2

    const-string v0, "//VoNR/VoWiFiDisable5GSA"

    const/4 v1, 0x0

    .line 1221
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-2"

    .line 1223
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo v0, "true"

    .line 1225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ENABLED_5GSA"

    return-object p0

    :cond_1
    const-string v0, "false"

    .line 1227
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "DISABLED_5GSA"

    return-object p0

    :cond_2
    const-string p0, "DEFAULT_DISABLED_5GSA"

    return-object p0
.end method

.method private getVoiceConfig()Ljava/lang/String;
    .locals 2

    const-string v0, "//VoNR/VoNRDefault"

    const/4 v1, 0x0

    .line 1208
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-2"

    .line 1210
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo v0, "true"

    .line 1212
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ON_VONR"

    return-object p0

    :cond_1
    const-string v0, "false"

    .line 1214
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "OFF_VONR"

    return-object p0

    :cond_2
    const-string p0, "DEFAULT_ON_VONR"

    return-object p0
.end method

.method private isEndCall(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "CANCEL"

    .line 852
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "BYE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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

.method private isSupportedNrca(I)Z
    .locals 1

    .line 1321
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "EcholocateBroadcaster"

    const-string p1, "Unable to find ISemTelephony interface."

    .line 1323
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1329
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ISemTelephony;->getSupportedNrca(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1331
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private onEcholocateEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 8

    .line 662
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkSecurity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;

    .line 664
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getType()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    if-ne v0, v1, :cond_0

    .line 666
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getSignalData()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    move-result-object v3

    .line 667
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getSessionid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 668
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->isEpdgCall()Z

    move-result v0

    .line 669
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getPhoneIdFromSessionId(I)I

    move-result p1

    .line 670
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNetworkType(IZ)Ljava/lang/String;

    move-result-object v6

    .line 671
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;

    .line 672
    invoke-direct {p0, p1, v0, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v5

    const/4 p1, 0x0

    .line 673
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 674
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getType()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->rtpMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    if-ne v0, v1, :cond_2

    .line 676
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getRtpData()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

    move-result-object p1

    .line 677
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendTmoEcholocateRTP(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;)V

    goto :goto_0

    :cond_1
    const-string p0, "EcholocateBroadcaster"

    const-string p1, "Do not broadcast. ICDV or Signature key is wrong"

    .line 680
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private parseBands5GXml(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1291
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1293
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 1294
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1295
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1296
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1300
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StandaloneBands5G"

    .line 1301
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "StandaloneBands5G_NRCA"

    .line 1302
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1304
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x4

    const-string v3, ""

    if-ne v1, v2, :cond_0

    .line 1305
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, v3

    .line 1307
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "true"

    .line 1308
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v1

    .line 1307
    :cond_2
    :goto_2
    invoke-virtual {p0, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    :cond_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_0

    :cond_4
    const-string p1, "EcholocateBroadcaster"

    const-string v0, "End document"

    .line 1313
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1315
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p0
.end method

.method private sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;)V
    .locals 3

    .line 610
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkSecurity()Z

    move-result p1

    const-string v0, "EcholocateBroadcaster"

    if-nez p1, :cond_0

    const-string p0, "sendDetailCallEvent - Do not broadcast."

    .line 611
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 615
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "diagandroid.phone.detailedCallState"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->getCallNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallNumber"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->getCallState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallState"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceAccessNetworkStateType"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->getNetworkBand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceAccessNetworkStateBand"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->getNetworkSignal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VoiceAccessNetworkStateSignal"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->getCallId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallID"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->getTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oemIntentTimestamp"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->getCellId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "cellid"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EpdgHoFailureCause"

    const-string v1, "NA"

    .line 624
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string p2, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "sendEPSFB state for now"

    .line 626
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendEmergencyCallTimerStateMSG(ILandroid/os/Bundle;)V
    .locals 8

    const-string v0, "callNumber"

    .line 1138
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timer"

    .line 1139
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "state"

    .line 1140
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "callId"

    .line 1141
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isEpdgCall"

    .line 1142
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNetworkType(IZ)Ljava/lang/String;

    move-result-object v4

    .line 1144
    invoke-direct {p0, p1, v4, p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 1146
    new-instance v6, Landroid/content/Intent;

    const-string v7, "diagandroid.phone.emergencyCallTimerState"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "CallNumber"

    .line 1147
    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "TimerName"

    .line 1148
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "TimerState"

    .line 1149
    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "VoiceAccessNetworkStateType"

    .line 1150
    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v0

    const-string v7, "VoiceAccessNetworkStateSignal"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    invoke-direct {p0, p1, p2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "VoiceAccessNetworkStateBand"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "CallID"

    .line 1153
    invoke-virtual {v6, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 1154
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTimeStamp(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "oemIntentTimestamp"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "cellid"

    .line 1155
    invoke-virtual {v6, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendEmergencyCallTimerStateMSG["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], callId = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", timer="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "EcholocateBroadcaster"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    const-string p2, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {p0, v6, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendPendingSignallingMSG(J)V
    .locals 3

    .line 685
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPendingQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPendingQue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 688
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cellid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "RAT"

    const-string v2, "3GPP-E-UTRAN-FDD"

    .line 689
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPendingSignallingMSG :: Origin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IMSSignallingMessageOrigin"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " oemIntentTimestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "oemIntentTimestamp"

    .line 692
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EcholocateBroadcaster"

    .line 691
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string v2, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendTmoEcholocateCarrierConfig(IILjava/lang/String;)V
    .locals 8

    .line 1163
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkSecurity()Z

    move-result v0

    const-string v1, "EcholocateBroadcaster"

    if-nez v0, :cond_0

    const-string p0, "Do not broadcast. ICDV or Signature key is wrong"

    .line 1164
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const-string p0, "sendTmoEcholocateCarrierConfig ignore callstate "

    .line 1169
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1173
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getPreCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "phoneId is not valid - STOP"

    .line 1175
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1179
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v0

    .line 1182
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p3, "phoneNumber is not valid - use call profile number"

    .line 1183
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p3

    .line 1187
    :cond_3
    new-instance p2, Landroid/content/Intent;

    const-string v2, "diagandroid.phone.carrierConfig"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1189
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getVoiceConfig()Ljava/lang/String;

    move-result-object v2

    .line 1190
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getVoWiFiConfig()Ljava/lang/String;

    move-result-object v3

    .line 1191
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getSa5gBandConfig(I)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 1192
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getConfigVersion()Ljava/lang/String;

    move-result-object v5

    .line 1193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendTmoEcholocateCarrierConfig voiceconfig : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", vowificonfig : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Sa5gbandconfig : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", configversion : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", phoneId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callNumber : "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1193
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "carrierVoiceConfig"

    .line 1197
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "carrierVoWiFiConfig"

    .line 1198
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "carrierSa5gBandConfig"

    .line 1199
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "carrierConfigVersion"

    .line 1200
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "CallID"

    .line 1201
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "CallNumber"

    .line 1202
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 1203
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTimeStamp(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "oemIntentTimestamp"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string p1, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private sendTmoEcholocateRTP(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;)V
    .locals 9

    .line 876
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "EcholocateBroadcaster"

    if-eqz v0, :cond_0

    const-string p0, "sendTmoEcholocateRTP :: Session Id is NULL"

    .line 877
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 881
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDir()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DL"

    .line 883
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 884
    new-instance v2, Landroid/content/Intent;

    const-string v3, "diagandroid.phone.RTPDLStat"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getLossrate()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RTPDownlinkStatusLossRate"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 886
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDelay()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RTPDownlinkStatusDelay"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getJitter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RTPDownlinkStatusJitter"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getMeasuredperiod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RTPDownlinkStatusMeasuredPeriod"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 890
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "diagandroid.phone.RTPULStat"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getLossrate()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RTPUplinkStatusLossRate"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDelay()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RTPUplinkStatusDelay"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getJitter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RTPUplinkStatusJitter"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getMeasuredperiod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RTPUplinkStatusMeasuredPeriod"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 897
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getPhoneIdFromSessionId(I)I

    move-result v4

    .line 900
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p0, "Can\'t get call num from sessionID"

    .line 902
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 905
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v5

    .line 906
    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNetworkType(IZ)Ljava/lang/String;

    move-result-object v6

    const-string v7, "VoiceAccessNetworkStateType"

    .line 907
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v7

    const-string v8, "VoiceAccessNetworkStateSignal"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "VoiceAccessNetworkStateBand"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    .line 912
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v7, "null"

    .line 916
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v3

    .line 917
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string p0, "Can\'t find echo CallId from session"

    .line 918
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 922
    :cond_4
    invoke-direct {p0, v4, v6, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CallNumber"

    .line 924
    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "CallID"

    .line 925
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    .line 926
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "oemIntentTimestamp"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "cellid"

    .line 927
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string v3, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 931
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTmoEcholocateRTP :: dir ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] LossRate ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getLossrate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Jitter ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getJitter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Measuredperiod ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getMeasuredperiod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Delay ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->getDelay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 931
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendTmoEcholocateSignallingMSG(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;)V
    .locals 17

    move-object/from16 v0, p0

    .line 699
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->getSignalMsg()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    move-result-object v1

    .line 700
    new-instance v2, Landroid/content/Intent;

    const-string v3, "diagandroid.phone.imsSignallingMessage"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getSessionid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 704
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getPhoneIdFromSessionId(I)I

    move-result v4

    .line 705
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SENT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v7, 0x64

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, "EcholocateBroadcaster"

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v5

    const-string v12, "INVITE"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 706
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Check mRetryINVITE["

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mRetryINVITE:[Z

    aget-boolean v12, v12, v4

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mRetryINVITE:[Z

    aget-boolean v12, v5, v4

    if-eqz v12, :cond_0

    .line 709
    aput-boolean v9, v5, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    move-object/from16 v5, p1

    .line 712
    invoke-virtual {v0, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 713
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mRetryINVITE:[Z

    aput-boolean v10, v0, v4

    return-void

    :cond_1
    :goto_0
    move-object/from16 v5, p1

    .line 719
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCallId()Ljava/lang/String;

    move-result-object v12

    .line 720
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CSeq: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCseq()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 722
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getContents()Ljava/lang/String;

    move-result-object v14

    .line 724
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    const-string v16, "NA"

    if-eqz v15, :cond_2

    move-object/from16 v14, v16

    goto :goto_1

    .line 727
    :cond_2
    invoke-direct {v0, v14}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getSDPContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 730
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->getNetworkBand()Ljava/lang/String;

    move-result-object v15

    const-string v7, "VoiceAccessNetworkStateBand"

    invoke-virtual {v2, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->getNetworkSignal()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VoiceAccessNetworkStateSignal"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "IMSSignallingMessageCallID"

    .line 732
    invoke-virtual {v2, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "IMSSignallingCSeq"

    .line 733
    invoke-virtual {v2, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v7

    const-string v8, "IMSSignallingMessageLine1"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v7

    const-string v8, "IMSSignallingMessageOrigin"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    invoke-direct {v0, v13}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->isEndCall(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "Reason:"

    if-eqz v7, :cond_7

    .line 739
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CANCEL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BYE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 740
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "DeviceReason:Normal"

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeviceReason:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object/from16 v16, v6

    goto :goto_3

    .line 742
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 744
    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_8
    :goto_3
    move-object/from16 v6, v16

    const-string v7, "IMSSignallingMessageReason"

    .line 748
    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "IMSSignallingMessageSDP"

    .line 749
    invoke-virtual {v2, v6, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->getTime()Ljava/lang/String;

    move-result-object v6

    const-string v7, "oemIntentTimestamp"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->getNetworkType()Ljava/lang/String;

    move-result-object v5

    .line 753
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_a

    .line 756
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 757
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v6

    .line 758
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v7

    .line 759
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v8

    .line 760
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 761
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 762
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->updateCallId()Ljava/lang/String;

    move-result-object v7

    .line 764
    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v15, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create the echo callID "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_9
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setEchoCallId(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object v7, v6

    move v8, v9

    .line 771
    :cond_b
    :goto_4
    invoke-direct {v0, v4, v5, v8}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    const-string v10, "VoiceAccessNetworkStateType"

    .line 773
    invoke-virtual {v2, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "cellid"

    .line 774
    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    invoke-direct {v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getRatType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "RAT"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v3, :cond_11

    .line 778
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 779
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 780
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->updateCallId()Ljava/lang/String;

    move-result-object v5

    .line 781
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v6, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getPeerNumber()Ljava/lang/String;

    move-result-object v6

    .line 783
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get CallNumber from h_from header "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object v7, v5

    .line 786
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v0, "Can\'t find callNumber :: STOP"

    .line 787
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const/16 v5, 0x3a

    .line 790
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_10

    .line 792
    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "sip"

    .line 793
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string/jumbo v10, "tel"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_e
    const/4 v8, 0x1

    add-int/2addr v5, v8

    .line 794
    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    .line 795
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_f

    .line 797
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_f
    move-object v6, v5

    .line 801
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extracted callNumber : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_11
    invoke-direct {v0, v13}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->isEndCall(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x3

    .line 806
    invoke-virtual {v0, v5, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    const-string v5, "CallID"

    .line 809
    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "CallNumber"

    .line 810
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    iget v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 813
    iget-wide v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mDiffTime:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-nez v1, :cond_13

    .line 814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x64

    sub-long/2addr v7, v9

    iput-wide v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mDiffTime:J

    .line 815
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    aput-boolean v6, v1, v4

    if-eqz v3, :cond_13

    .line 816
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 817
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setEPSFBsuccess(Z)V

    .line 818
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setEchoCellId(Ljava/lang/String;)V

    .line 822
    :cond_13
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPendingQue:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const-string v0, "sendTmoEcholocateSignallingMSG :: pending case with EPSFB before SUCCESS"

    .line 823
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 827
    :cond_14
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string v3, "diagandroid.phone.receiveDetailedCallState"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTmoEcholocateSignallingMSG :: Origin ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Line1 [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getLine1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Cseq ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCseq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Reason ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] callId_App ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] callId_IMS ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sdpContents ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateCallId()Ljava/lang/String;
    .locals 2

    .line 839
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    const v0, 0x55d4a7f

    .line 841
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    const v0, 0x989680

    add-int/2addr p0, v0

    .line 842
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "make echo call id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EcholocateBroadcaster"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method public getEchoCallId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 848
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPreCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v1

    .line 458
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v2

    .line 459
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    .line 461
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_0

    .line 462
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    .line 463
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 464
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    .line 465
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 466
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    .line 467
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 468
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EcholocateBroadcaster"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p0, "This message is not supported"

    .line 450
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendEmergencyCallTimerStateMSG(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 444
    :pswitch_1
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    if-ne v0, v2, :cond_1

    .line 445
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendTmoEcholocateEPSFB(IIJ)V

    goto :goto_0

    .line 436
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;)V

    goto :goto_0

    .line 440
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendTmoEcholocateCarrierConfig(IILjava/lang/String;)V

    goto :goto_0

    .line 418
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Remove Call id on cache"

    .line 420
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 422
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 424
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallIDList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 414
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendTmoEcholocateSignallingMSG(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;)V

    goto :goto_0

    .line 410
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->onEcholocateEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendEmergencyCallTimerState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1123
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->checkSecurity()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EcholocateBroadcaster"

    const-string v1, "sendEmergencyCallTimerState"

    .line 1124
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "callNumber"

    .line 1126
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "timer"

    .line 1127
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "state"

    .line 1128
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "callId"

    .line 1129
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "isEpdgCall"

    .line 1130
    invoke-virtual {v0, p2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p2, 0x7

    const/4 p3, 0x0

    .line 1132
    invoke-virtual {p0, p2, p1, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public sendTmoEcholocateEPSFB(IIJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTmoEcholocateEPSFB state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " EPSFBsuccess["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EcholocateBroadcaster"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNetworkTypeForEPSFB(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    .line 517
    invoke-direct {v0, v1, v3, v8}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 518
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getEPSFBState(I)Ljava/lang/String;

    move-result-object v7

    .line 519
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getPreCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v14

    if-nez v14, :cond_0

    const-string v0, "imsCallSession is not valid - STOP"

    .line 522
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 526
    :cond_0
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v6

    .line 527
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v11

    .line 528
    invoke-direct {v0, v1, v8, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x2

    if-eq v2, v15, :cond_1

    const-string v9, "0"

    .line 529
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "-1"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 530
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    :cond_2
    move-object v12, v5

    .line 533
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;

    .line 534
    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v16

    move-object v5, v13

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    move-object v15, v13

    move-object/from16 v13, v17

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 537
    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;)V

    .line 538
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    .line 539
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    aput-boolean v3, v0, v1

    goto :goto_1

    :cond_3
    const/4 v6, 0x4

    const-wide/16 v7, 0x0

    const/4 v9, 0x5

    if-eq v2, v6, :cond_6

    const/4 v6, 0x3

    if-ne v2, v6, :cond_4

    goto :goto_0

    .line 548
    :cond_4
    iget v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    if-ne v6, v5, :cond_8

    const/4 v6, 0x2

    if-ne v2, v6, :cond_8

    .line 549
    iget-wide v10, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mDiffTime:J

    cmp-long v2, v10, v7

    if-eqz v2, :cond_5

    .line 550
    invoke-virtual {v15, v10, v11}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;->setTime(J)V

    .line 551
    iput-wide v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mDiffTime:J

    .line 553
    :cond_5
    invoke-virtual {v0, v9, v1, v3, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 554
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    .line 555
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    aput-boolean v5, v2, v1

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set EPSFB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setEPSFBsuccess(Z)V

    .line 558
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    move-object/from16 v5, v17

    invoke-virtual {v1, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setEchoCellId(Ljava/lang/String;)V

    move-wide/from16 v1, p3

    .line 560
    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendPendingSignallingMSG(J)V

    goto :goto_1

    .line 541
    :cond_6
    :goto_0
    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 542
    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 544
    :cond_7
    invoke-direct {v0, v1, v15}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;)V

    .line 545
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    .line 546
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mEPSFBsuccess:[Z

    aput-boolean v3, v2, v1

    .line 547
    invoke-direct {v0, v7, v8}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendPendingSignallingMSG(J)V

    :cond_8
    :goto_1
    return-void
.end method

.method public sendTmoEcholocatePSHO(IIIIJ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTmoEcholocatePSHO state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EcholocateBroadcaster"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-direct/range {p0 .. p4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNetworkTypeForPSHO(IIII)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    .line 477
    invoke-direct {p0, v1, v3, v8}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 478
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getPSHOState(I)Ljava/lang/String;

    move-result-object v7

    .line 479
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v0, "imsCallSession is not valid - STOP"

    .line 482
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 486
    :cond_0
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v6

    .line 487
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v11

    .line 488
    invoke-direct {p0, v1, v8, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x2

    if-eq v2, v14, :cond_1

    const-string v5, "0"

    .line 490
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "-1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 491
    :cond_1
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object v13, v4

    .line 494
    new-instance v4, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;

    .line 495
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 498
    invoke-direct {p0, v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;)V

    .line 499
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    goto :goto_1

    :cond_3
    const/4 v6, 0x4

    const/4 v7, 0x5

    if-eq v2, v6, :cond_5

    const/4 v6, 0x3

    if-ne v2, v6, :cond_4

    goto :goto_0

    .line 506
    :cond_4
    iget v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    if-ne v6, v5, :cond_7

    if-ne v2, v14, :cond_7

    .line 507
    invoke-virtual {p0, v7, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 508
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    goto :goto_1

    .line 501
    :cond_5
    :goto_0
    invoke-virtual {p0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 502
    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    :cond_6
    invoke-direct {p0, v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EcholocateHandoverMessage;)V

    .line 505
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mCallState:I

    :cond_7
    :goto_1
    return-void
.end method

.method public start()V
    .locals 5

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;->registerForEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 375
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneCount:I

    const-string v2, "EcholocateBroadcaster"

    if-ge v0, v1, :cond_1

    .line 376
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->hasListener(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterListener(I)V

    .line 380
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener pCnt["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], subId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;

    invoke-direct {v2, p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;II)V

    .line 383
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v3, v2, v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->getSalesCode()V

    const-string/jumbo p0, "start"

    .line 386
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;->unregisterForEcholocateEvent(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 392
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->hasListener(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterListener(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "EcholocateBroadcaster"

    const-string/jumbo v0, "stop"

    .line 397
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
