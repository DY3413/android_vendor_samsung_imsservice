.class public Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;
.super Ljava/lang/Object;
.source "TmoEcholocateInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Echolocate_Info"

.field protected static final LTE_RAT:Ljava/lang/String; = "3GPP-E-UTRAN-FDD"

.field private static final NETWORK_NA:Ljava/lang/String; = "NA"

.field private static final NETWORK_TYPE_ENDC:Ljava/lang/String; = "ENDC"

.field private static final NETWORK_TYPE_LTE:Ljava/lang/String; = "LTE"

.field private static final NETWORK_TYPE_SA5G:Ljava/lang/String; = "SA5G"

.field private static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "WFC2"

.field protected static final NR_EPSFB_FAILED:I = 0x3

.field protected static final NR_EPSFB_INIT:I = 0x0

.field protected static final NR_EPSFB_STARTED:I = 0x1

.field protected static final NR_EPSFB_SUCCESS:I = 0x2

.field private static final NR_FDD_RAT:Ljava/lang/String; = "3GPP-NR-FDD"

.field private static final NR_RAT:Ljava/lang/String; = "3GPP-NR"

.field private static final NR_STATUS_CONNECTED:I = 0x3

.field protected static final NR_TAU_REJECT:I = 0x4

.field private static final NR_TDD_RAT:Ljava/lang/String; = "3GPP-NR-TDD"

.field private static final RAT_5G:I = 0x6

.field private static final RAT_LTE:I = 0x3

.field private static final SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

.field private static final SIGNATURES_MY_TMOBILE:Landroid/content/pm/Signature;

.field private static final SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

.field private static final WIFI_RAT:Ljava/lang/String; = "IEEE-802.11"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

.field private mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 552
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SIGNATURES_MY_TMOBILE:Landroid/content/pm/Signature;

    .line 582
    new-instance v0, Landroid/content/pm/Signature;

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    .line 612
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "3082036c30820254a00302010202044d23332e300d06092a864886f70d01010505003078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b6579301e170d3131303130343134343831345a170d3338303532323134343831345a3078310b3009060355040613025553310b3009060355040813024b53311630140603550407130d4f7665726c616e64205061726b310f300d060355040a1306537072696e74310b3009060355040b13024345312630240603550403131d537072696e7420416e64726f69642050726f64756374696f6e204b657930820122300d06092a864886f70d01010105000382010f003082010a0282010100b3cca5f477ea6e744a61b7c19706d7976da388ea4b8598c4fbc5c31cc95abb3a7b949d5b10692d397f3d980eb7c5e305b2eac5329d485c76a2df1b530d3cffa5f4c436735449bd676eabc403e2981edfe883b296dbf89bdd655e2b8a065d68189db9763681aee66e1c0bed05defc4dbc9d749a04a4206b89cc9d6765ab726d3301fdffe21285fcffe8ba2c3069048e3435c8b73b0aeb79433e3dd5d19e35f3c618dc95103b89a562f4952543cf1221797fa3cbb224184e17fcb95c5c7474db377f106918cf84bbecb2da57c3bb2e01d4d4939dcf7e3c01288a9d3909606f99b040a62a920112a21b23602f1473966d3d3379018a2e0088e0209587ea06e084dd0203010001300d06092a864886f70d01010505000382010100766f3c7d3e9db4364856693f6acb07af7269d0524d5b6bb6072e78fd0873a102f427de9affa72d3b297c997d601d9678f6d670beaf0425653527ec327dc4817082b9afaa1ce10d3f979b5d950efe1ef5eeeecc06c0aebab6e941cc25983a6be2c724c7e2b2bbe52de9ffd10e0cb4b99f83c1680c5a5927e3752d9d5b7f30c53a93f83b17c708cb338550dc2d64b6f58f2594f6af3bef770dd4d2551818dbd8cbe6b853b9e8b611d2766dcadf57e2b2c42aa3bb7c914461686df500c0a9cc01ab3df1bc997a1c8608df7a3e335cf628682f8015ca274d10476b3b3eaa34c224301d6a92a85624a4c56473a54e56a7ae395edb012472c1b07bc84202da98433238"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V
    .registers 6

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->pm:Landroid/content/pm/PackageManager;

    .line 66
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 67
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 68
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->pm:Landroid/content/pm/PackageManager;

    .line 75
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 76
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const-string p2, "phone"

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private checkEchoAppSignatureKey()Z
    .registers 3

    const-string v0, "com.tmobile.echolocate"

    .line 544
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SIGNATURES_ECHO_APP:Landroid/content/pm/Signature;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method private checkMyTmobileSignatureKey()Z
    .registers 3

    const-string v0, "com.tmobile.pr.mytmobile"

    .line 540
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SIGNATURES_MY_TMOBILE:Landroid/content/pm/Signature;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method private checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z
    .registers 7

    const/4 v0, 0x0

    .line 521
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->pm:Landroid/content/pm/PackageManager;

    const-wide/32 v1, 0x8000000

    .line 522
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    .line 521
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez p0, :cond_13

    return v0

    .line 524
    :cond_13
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_40

    .line 526
    array-length v1, p0

    move v2, v0

    :goto_1b
    if-ge v2, v1, :cond_40

    aget-object v3, p0, v2

    .line 527
    invoke-virtual {v3, p2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_23} :catch_2a

    if-eqz v3, :cond_27

    const/4 p0, 0x1

    return p0

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 533
    :catch_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Echolocate_Info"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v0
.end method

.method private checkPackageSprintHubSignatureKey()Z
    .registers 3

    const-string v0, "com.sprint.ms.smf.services"

    .line 548
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->SPRINT_HUB_SIGNATURES:Landroid/content/pm/Signature;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkPackageSignature(Ljava/lang/String;Landroid/content/pm/Signature;)Z

    move-result p0

    return p0
.end method

.method private getTelephonyManager(I)Landroid/telephony/TelephonyManager;
    .registers 3

    .line 296
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 297
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method private getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    const-string v0, "Echolocate_Info"

    if-eqz p2, :cond_8

    const-string/jumbo v1, "tag"

    goto :goto_b

    :cond_8
    const-string/jumbo v1, "xpath"

    :goto_b
    const-string v2, "content://com.samsung.ims.entitlementconfig.provider"

    .line 226
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "config"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "tag_name"

    .line 228
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 229
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 231
    :try_start_29
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_37
    .catch Landroid/database/SQLException; {:try_start_29 .. :try_end_37} :catch_66

    if-eqz p0, :cond_4f

    .line 232
    :try_start_39
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4f

    if-eqz p2, :cond_47

    const/4 p1, 0x0

    .line 234
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_55

    :cond_47
    const/4 p1, 0x1

    .line 236
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_55

    :catchall_4d
    move-exception p1

    goto :goto_5b

    :cond_4f
    const-string p1, "getValueDeviceConfig : cursor is null"

    .line 239
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_39 .. :try_end_54} :catchall_4d

    const/4 p1, 0x0

    :goto_55
    if-eqz p0, :cond_7d

    .line 241
    :try_start_57
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catch Landroid/database/SQLException; {:try_start_57 .. :try_end_5a} :catch_66

    goto :goto_7d

    :goto_5b
    if-eqz p0, :cond_65

    .line 231
    :try_start_5d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception p0

    :try_start_62
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_65
    :goto_65
    throw p1
    :try_end_66
    .catch Landroid/database/SQLException; {:try_start_62 .. :try_end_66} :catch_66

    :catch_66
    move-exception p0

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getValueDeviceConfig: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "-2"

    :cond_7d
    :goto_7d
    return-object p1
.end method

.method private parseBands5GXml(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .registers 6
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

    .line 250
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 252
    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 255
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_19
    const/4 v1, 0x1

    if-eq p1, v1, :cond_63

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5e

    .line 259
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StandaloneBands5G"

    .line 260
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    const-string v1, "StandaloneBands5G_NRCA"

    .line 261
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 263
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_37} :catch_6b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_37} :catch_6b

    const/4 v2, 0x4

    const-string v3, ""

    if-ne v1, v2, :cond_41

    .line 264
    :try_start_3c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_41
    move-object v1, v3

    .line 266
    :goto_42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string/jumbo v2, "true"

    .line 267
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto :goto_5b

    :cond_5a
    move-object v3, v1

    .line 266
    :cond_5b
    :goto_5b
    invoke-virtual {p0, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_5e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    goto :goto_19

    :cond_63
    const-string p1, "Echolocate_Info"

    const-string v0, "End document"

    .line 272
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_6a} :catch_6b
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6f
    return-object p0
.end method


# virtual methods
.method protected checkSecurity(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "TMB"

    .line 507
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    const-string v0, "TMK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_20

    :cond_12
    const-string v0, "SPR"

    .line 511
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 512
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkPackageSprintHubSignatureKey()Z

    move-result p0

    return p0

    :cond_1f
    return v1

    .line 508
    :cond_20
    :goto_20
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkMyTmobileSignatureKey()Z

    move-result p1

    if-nez p1, :cond_2c

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkEchoAppSignatureKey()Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_2c
    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method protected getCellId(ILjava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 485
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCellId Type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Echolocate_Info"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getAllCellInfo(IZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5e

    .line 488
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5e

    .line 489
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_29
    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellInfo;

    .line 490
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p2

    if-nez p2, :cond_3c

    goto :goto_29

    .line 492
    :cond_3c
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    .line 493
    instance-of p2, p1, Landroid/telephony/CellIdentityLte;

    if-eqz p2, :cond_4f

    .line 494
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_60

    .line 496
    :cond_4f
    instance-of p2, p1, Landroid/telephony/CellIdentityNr;

    if-eqz p2, :cond_29

    .line 497
    check-cast p1, Landroid/telephony/CellIdentityNr;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityNr;->getNci()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_60

    :cond_5e
    const-string p0, "-1"

    .line 502
    :goto_60
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

.method protected getConfigVersion()Ljava/lang/String;
    .registers 3

    const-string v0, "//configInfo/version"

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "-1"

    if-nez v0, :cond_19

    const-string v0, "-2"

    .line 215
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object p0, v1

    :cond_18
    return-object p0

    :cond_19
    return-object v1
.end method

.method protected getEPSFBState(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_6

    const-string p0, "EPSFB_STARTED"

    return-object p0

    :cond_6
    const/4 p0, 0x3

    if-eq p1, p0, :cond_16

    const/4 p0, 0x4

    if-ne p1, p0, :cond_d

    goto :goto_16

    :cond_d
    const/4 p0, 0x2

    if-ne p1, p0, :cond_13

    const-string p0, "EPSFB_SUCCESSFUL"

    return-object p0

    :cond_13
    const-string p0, ""

    return-object p0

    :cond_16
    :goto_16
    const-string p0, "EPSFB_FAILED"

    return-object p0
.end method

.method protected getLteBand(IZLjava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, "]:"

    const-string v1, "Echolocate_Info"

    const-string/jumbo v2, "ril.lteband"

    const-string v3, "0"

    .line 333
    invoke-static {p1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v4

    .line 335
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c7

    if-nez p2, :cond_c7

    const-string p2, "255"

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto/16 :goto_c7

    .line 338
    :cond_23
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getEPSFBsuccess(I)Z

    move-result v5

    if-nez v5, :cond_46

    if-eqz p3, :cond_46

    const-string v5, "SA5G"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    :cond_46
    :try_start_46
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    if-eqz v5, :cond_ab

    .line 344
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_ab

    .line 345
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p0

    if-eqz p0, :cond_ab

    const-string/jumbo p0, "ril.ltescellbands"

    .line 346
    invoke-static {p1, p0, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 347
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_83

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_83

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    :cond_83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUsingCarrierAggregation() scndBand["

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " nwType== "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_a5} :catch_a6

    goto :goto_ab

    :catch_a6
    const-string p0, "ServiceState is Null"

    .line 354
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_ab
    :goto_ab
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "strband["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_c7
    :goto_c7
    const-string p0, "NA"

    return-object p0
.end method

.method protected getNetworkType(IZ)Ljava/lang/String;
    .registers 5

    if-eqz p2, :cond_5

    const-string p0, "WFC2"

    return-object p0

    .line 305
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getEPSFBsuccess(I)Z

    move-result p2

    const-string v0, "LTE"

    if-eqz p2, :cond_10

    return-object v0

    .line 310
    :cond_10
    :try_start_10
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    .line 311
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    if-eqz p2, :cond_45

    .line 312
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p2

    const/16 v1, 0x14

    if-ne p2, v1, :cond_29

    const-string p0, "SA5G"

    return-object p0

    .line 316
    :cond_29
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 318
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrState()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3d

    const-string p0, "ENDC"
    :try_end_3c
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_3c} :catch_3e

    return-object p0

    :cond_3d
    return-object v0

    :catch_3e
    const-string p0, "Echolocate_Info"

    const-string p1, "ServiceState is Null"

    .line 326
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    const-string p0, "NA"

    return-object p0
.end method

.method protected getNetworkTypeForEPSFB(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_a

    const/4 p0, 0x3

    if-ne p1, p0, :cond_7

    goto :goto_a

    :cond_7
    const-string p0, "LTE"

    return-object p0

    :cond_a
    :goto_a
    const-string p0, "SA5G"

    return-object p0
.end method

.method protected getNetworkTypeForPSHO(IIII)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x1

    const-string v1, "SA5G"

    const/4 v2, 0x6

    const-string v3, "LTE"

    if-ne p2, v0, :cond_c

    if-ne p3, v2, :cond_b

    return-object v1

    :cond_b
    return-object v3

    :cond_c
    const/4 p3, 0x3

    if-ne p2, p3, :cond_15

    const/4 p2, 0x0

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNetworkType(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x2

    if-ne p2, p0, :cond_1b

    if-ne p4, v2, :cond_1b

    return-object v1

    :cond_1b
    return-object v3
.end method

.method protected getNewAppCallId()Ljava/lang/String;
    .registers 3

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object p0

    const v0, 0x55d4a7f

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    const v0, 0x989680

    add-int/2addr p0, v0

    .line 103
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "make new echo AppCallId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Echolocate_Info"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected getNwStateSignal(IZ)Ljava/lang/String;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 361
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 362
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 366
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 367
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTelephonyManager(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    goto :goto_1e

    :cond_1c
    const/16 v2, 0xd

    .line 369
    :goto_1e
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mEchoController:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->getSignalStrength(I)Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    move-result-object v4

    const-string v5, "NA"

    if-eqz v4, :cond_31

    .line 371
    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getDbm(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_32

    :cond_31
    move-object v6, v5

    .line 374
    :goto_32
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    const/4 v8, 0x3

    const-string v9, ""

    const/4 v10, 0x1

    const-string v11, ";"

    if-eqz p2, :cond_75

    if-eqz v7, :cond_5c

    .line 378
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_5a

    .line 379
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5d

    :cond_5a
    move-object v7, v9

    goto :goto_5d

    :cond_5c
    move-object v7, v5

    .line 382
    :goto_5d
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v8, :cond_76

    .line 384
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";NA;NA;NA;NA;NA;NA;"

    .line 385
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_75
    move-object v7, v5

    .line 390
    :cond_76
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v6, 0x14

    const-string v12, "Echolocate_Info"

    const-string v13, "]"

    const-string v14, ";NA;"

    if-eqz v0, :cond_8f

    .line 391
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_117

    :cond_8f
    if-eqz v4, :cond_117

    const-string v0, " "

    if-ne v2, v6, :cond_dd

    .line 395
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrLevel()I

    move-result v15

    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getInvalidSignalStrength()I

    move-result v10

    if-eq v15, v10, :cond_dd

    .line 396
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsRsrp()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 397
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsRsrq()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 398
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrSsSinr()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 399
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    const-string v2, "Nr [ rsrp: rsrq: sinr: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    :cond_dd
    move/from16 v17, v2

    .line 401
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 402
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteRsrq()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default LTE [ rsrp: rsrq:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .line 405
    :goto_10d
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11c

    :cond_117
    :goto_117
    move/from16 v17, v2

    move-object v6, v5

    move-object v10, v6

    move-object v15, v10

    :goto_11c
    const-string/jumbo v0, "ril.signal.param"

    const-string v2, "0"

    .line 410
    invoke-static {v1, v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_130

    .line 414
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_131

    :cond_130
    const/4 v2, 0x0

    :goto_131
    if-eqz v2, :cond_1d7

    .line 416
    array-length v7, v2

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1d7

    const/4 v7, 0x0

    .line 417
    aget-object v8, v2, v7

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 p2, v12

    const-string v12, "255"

    if-nez v8, :cond_150

    aget-object v8, v2, v7

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14d

    goto :goto_150

    .line 418
    :cond_14d
    aget-object v7, v2, v7

    goto :goto_151

    :cond_150
    :goto_150
    move-object v7, v5

    .line 417
    :goto_151
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_182

    move/from16 v7, v17

    const/16 v8, 0x14

    if-ne v7, v8, :cond_182

    if-eqz v4, :cond_182

    .line 426
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getNrLevel()I

    move-result v7

    invoke-virtual {v4}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getInvalidSignalStrength()I

    move-result v4

    if-eq v7, v4, :cond_182

    .line 427
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1ed

    :cond_182
    const/4 v4, 0x2

    .line 429
    aget-object v6, v2, v4

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_196

    aget-object v6, v2, v4

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_194

    goto :goto_196

    :cond_194
    aget-object v5, v2, v4

    :cond_196
    :goto_196
    aput-object v5, v2, v4

    const/4 v5, 0x1

    .line 430
    aget-object v6, v2, v5

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1bf

    aget-object v6, v2, v5

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1aa

    goto :goto_1bf

    .line 431
    :cond_1aa
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1d3

    :cond_1bf
    :goto_1bf
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    :goto_1d3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1ed

    :cond_1d7
    move-object/from16 p2, v12

    .line 434
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ";NA;NA;"

    .line 437
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    :goto_1ed
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "signal["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " result["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPSHOState(I)Ljava/lang/String;
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_6

    const-string p0, "PSHO_STARTED"

    return-object p0

    :cond_6
    const/4 p0, 0x3

    if-eq p1, p0, :cond_16

    const/4 p0, 0x4

    if-ne p1, p0, :cond_d

    goto :goto_16

    :cond_d
    const/4 p0, 0x2

    if-ne p1, p0, :cond_13

    const-string p0, "PSHO_SUCCESSFUL"

    return-object p0

    :cond_13
    const-string p0, ""

    return-object p0

    :cond_16
    :goto_16
    const-string p0, "PSHO_FAILED"

    return-object p0
.end method

.method protected getPhoneIdFromSessionId(I)I
    .registers 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-ge p1, p0, :cond_5

    return v0

    .line 477
    :cond_5
    div-int/lit8 p1, p1, 0xa

    const/4 p0, 0x2

    if-lt p1, p0, :cond_b

    goto :goto_c

    :cond_b
    move v0, p1

    :goto_c
    return v0
.end method

.method protected getPreCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .registers 6

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v1

    .line 449
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object v2

    .line 450
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Ljava/util/List;

    move-result-object p0

    .line 452
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_2e

    .line 453
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    .line 454
    :cond_2e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3b

    .line 455
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    .line 456
    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_48

    .line 457
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    .line 458
    :cond_48
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_55

    .line 459
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0

    :cond_55
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRatType(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRatType Type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Echolocate_Info"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "SA5G"

    .line 281
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    const-string/jumbo p0, "ril.nrnetworktype"

    const-string p2, ""

    .line 282
    invoke-static {p1, p0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TDD"

    .line 283
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p0, "3GPP-NR-TDD"

    return-object p0

    :cond_32
    const-string p1, "FDD"

    .line 285
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string p0, "3GPP-NR-FDD"

    return-object p0

    :cond_3d
    const-string p0, "3GPP-NR"

    return-object p0

    :cond_40
    const-string p0, "WFC2"

    .line 289
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    const-string p0, "IEEE-802.11"

    return-object p0

    :cond_4b
    const-string p0, "3GPP-E-UTRAN-FDD"

    return-object p0
.end method

.method protected getSDPContents(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 86
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "\r\n"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    array-length v1, p1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_4f

    aget-object v3, p1, v2

    const-string v4, "c="

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "a=rtpmap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "a=recvonly"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "a=sendonly"

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "a=sendrecv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    :cond_3e
    const-string v4, "\""

    .line 92
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 95
    :cond_4f
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSa5gBandConfig(I)Ljava/util/LinkedHashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 196
    invoke-static {p1}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->isSupportedNrca(I)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_13

    const-string p1, "//StandaloneBands5G_NRCA"

    .line 197
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_13
    const-string p1, "//StandaloneBands5G"

    .line 199
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 202
    :goto_19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string p0, "NONE"

    const-string p1, "-1"

    .line 203
    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_27
    const-string v1, "-2"

    .line 204
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string p0, "ERROR"

    .line 205
    invoke-virtual {v0, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 207
    :cond_35
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->parseBands5GXml(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    :goto_39
    return-object v0
.end method

.method protected getTimeStamp(I)Ljava/lang/String;
    .registers 4

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVoWiFiConfig()Ljava/lang/String;
    .registers 3

    const-string v0, "//VoNR/VoWiFiDisable5GSA"

    const/4 v1, 0x0

    .line 180
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-2"

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p0

    :cond_10
    const-string/jumbo v0, "true"

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "ENABLED_5GSA"

    return-object p0

    :cond_1c
    const-string v0, "false"

    .line 186
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    const-string p0, "DISABLED_5GSA"

    return-object p0

    :cond_27
    const-string p0, "DEFAULT_DISABLED_5GSA"

    return-object p0
.end method

.method protected getVoiceConfig()Ljava/lang/String;
    .registers 3

    const-string v0, "//VoNR/VoNRDefault"

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getValueDeviceConfig(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-2"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p0

    :cond_10
    const-string/jumbo v0, "true"

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "ON_VONR"

    return-object p0

    :cond_1c
    const-string v0, "false"

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    const-string p0, "OFF_VONR"

    return-object p0

    :cond_27
    const-string p0, "DEFAULT_ON_VONR"

    return-object p0
.end method

.method protected isEndCall(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "CANCEL"

    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "BYE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method
