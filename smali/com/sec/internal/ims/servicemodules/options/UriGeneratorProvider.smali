.class public Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;
.super Landroid/content/ContentProvider;
.source "UriGeneratorProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;,
        Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$simEventHandler;,
        Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;,
        Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.urigenerator.provider"

.field private static final DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "US"

.field private static final DEFAULT_MCC:Ljava/lang/String; = "310"

.field private static final HANDLE_EVENT_ADS_CHANGED:I = 0x1

.field private static final IMS_REGISTRATION_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final LOG_TAG:Ljava/lang/String;

.field static final N_IMS:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field static sMatcher:Landroid/content/UriMatcher;


# instance fields
.field mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImsIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

.field private mMcc:Ljava/lang/String;

.field mOwnAreaCode:Ljava/lang/String;

.field private mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

.field private mSimIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

.field mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSimEventListener(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 38
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->IMS_REGISTRATION_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 56
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.rcs.urigenerator.provider"

    const-string v2, "ims/*"

    const/4 v3, 0x1

    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "_id"

    const-string v1, "generated_uri"

    .line 65
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 72
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    const-string v1, "310"

    .line 74
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    const-string v1, "US"

    .line 75
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 155
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "delete not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method extractOwnAreaCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 249
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractOwnAreaCode phoneNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 251
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    .line 255
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const-string v3, "extractOwnAreaCode. mcc is not int"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 260
    :goto_0
    invoke-static {v2}, Lcom/sec/internal/helper/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 261
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extractOwnAreaCode tmpCountryCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " operator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 264
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractOwnAreaCode MCC "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Country "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result p1

    const-string v2, ""

    if-nez p1, :cond_2

    .line 271
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    .line 272
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const-string p1, "extractOwnAreaCode: KOR operator not use OwnAreaCode"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_5

    :try_start_1
    const-string p1, "+1"

    .line 276
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    const/4 v0, 0x5

    .line 277
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    goto :goto_1

    .line 278
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0xb

    if-ne p1, v3, :cond_4

    const/4 p1, 0x1

    const/4 v0, 0x4

    .line 279
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    goto :goto_1

    .line 280
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0xa

    if-ne p1, v3, :cond_5

    .line 281
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 284
    :catch_1
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    :cond_5
    :goto_1
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 160
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "getType not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 165
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "insert not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .locals 4

    .line 83
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mContext:Landroid/content/Context;

    .line 89
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

    .line 90
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mImsIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

    .line 91
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$simEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$simEventHandler;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$simEventHandler-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mHandler:Landroid/os/Handler;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mImsIntentReceiver:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$ImsIntentReceiver;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->IMS_REGISTRATION_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 101
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    .line 102
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p3

    .line 105
    sget-object p5, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, p4

    const-string v3, "query() - uri: %s, number: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    if-ne p1, p4, :cond_6

    .line 111
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSimSlotPriority()I

    move-result p1

    .line 110
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    const-string v1, "+"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "support_7digit_msg"

    invoke-interface {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mOwnAreaCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local number format, adding own area code "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query()  mCountryCode "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MCC "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CountryCode "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mCountryCode:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query(), telUri = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    .line 125
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "converting "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "to"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p1

    .line 131
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query(), after getNormalizedUri telUri = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-string p1, "*"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "#"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-string p0, "query() - KOR startswith *# return null"

    .line 134
    invoke-static {p5, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p3

    :cond_4
    if-eqz p0, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 140
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "query() - generated uri: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    aput-object p3, p1, p4

    .line 143
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0

    .line 149
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unsupported URI!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 170
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "update not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
