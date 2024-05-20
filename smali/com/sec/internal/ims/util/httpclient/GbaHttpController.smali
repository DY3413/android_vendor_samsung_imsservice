.class public Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
.super Ljava/lang/Object;
.source "GbaHttpController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GbaHttpController"

.field private static volatile sInstance:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;


# instance fields
.field private mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

.field mLastAuthInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgbaCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaCallbacksDeQ(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgbaFailCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILcom/sec/internal/ims/gba/GbaException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(ILcom/sec/internal/ims/gba/GbaException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetGbaCallback(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getGbaCallback(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWwwAuthenticateHeader(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getWwwAuthenticateHeader(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloggingHttpMessage(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBsfRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendBsfRequestWithAuthorization(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstoreLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->storeLastAuthInfo(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$museGba(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->useGba(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisNeedCSFB(II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->isNeedCSFB(II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-direct {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sInstance:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method private buildUrl(IZLjava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 604
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x1bb

    if-eq p4, v0, :cond_1

    if-eqz p2, :cond_0

    .line 605
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/sec/internal/constants/Mno;

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPARK:Lcom/sec/internal/constants/Mno;

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "http://"

    .line 608
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "https://"

    .line 606
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :goto_1
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private gbaCallbacksDeQ(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 7

    .line 617
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getGbaCallback(I)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 619
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->removeGbaCallback(I)V

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 620
    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onComplete(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    :cond_0
    return-void
.end method

.method private gbaFailCallbacksDeQ(ILcom/sec/internal/ims/gba/GbaException;)V
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getGbaCallback(I)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->removeGbaCallback(I)V

    .line 628
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onFail(ILcom/sec/internal/ims/gba/GbaException;)V

    :cond_0
    return-void
.end method

.method private static getAcceptEncoding(I)Ljava/lang/String;
    .locals 1

    .line 666
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 667
    sget-object v0, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELE2_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "*"

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private getBsfRequestCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .locals 11

    .line 537
    new-instance v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V

    return-object v10
.end method

.method private getGbaCallback(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;
    .locals 1

    .line 518
    new-instance v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$4;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .locals 1

    .line 75
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sInstance:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    return-object v0
.end method

.method private getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    .locals 1

    .line 675
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    return-object p0
.end method

.method private getWwwAuthenticateHeader(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .locals 2

    .line 591
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string p1, "WWW-Authenticate"

    .line 592
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 593
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 594
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    :cond_1
    if-eqz v0, :cond_3

    .line 596
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 600
    :cond_2
    new-instance p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {p0}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private hidePrivateInfoFromMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 753
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const-string/jumbo p0, "sip:+[0-9+-]+"

    const-string/jumbo v0, "sip:xxxxxxxxxxxxxxx"

    .line 760
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "tel:+[0-9+-]+"

    const-string/jumbo v0, "tel:xxxxxxxxxxxxxxx"

    .line 762
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "imei:+[0-9+-]+"

    const-string v0, "imei:xxxxxxxx"

    .line 764
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "username=\"+[^\"]+"

    const-string/jumbo v0, "username=xxxxxxxxxxxxxxx"

    .line 766
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\"+[0-9+-]+\""

    const-string v0, "\"xxxxxxxxxxxxxxx\""

    .line 769
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "target>+.+</.*target"

    const-string/jumbo v0, "target>xxxxxxxxxxxxxxx</target"

    .line 771
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isKeyAlive(Ljava/util/Date;)Z
    .locals 8

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 716
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 718
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "GMT"

    .line 719
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 721
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    int-to-long v4, p0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private static isNeedCSFB(II)Z
    .locals 1

    .line 657
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 658
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x191

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isValidAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;)Z
    .locals 3

    if-eqz p1, :cond_1

    .line 686
    iget-object v0, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 687
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    .line 688
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x0

    .line 691
    :try_start_0
    iget-object v2, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 694
    iput-object v1, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    .line 695
    iput-object v1, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    .line 696
    iput-object v1, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 697
    iput-object v1, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 698
    iput-object v1, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    .line 699
    iput-object v1, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    move-object v0, v1

    .line 701
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->isKeyAlive(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 704
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v0, "Btid LifeTime expired"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iput-object v1, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private loggingHttpMessage(Ljava/lang/String;I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 728
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "HttpRequestParams.*\r\n.*mMethod: "

    const-string v1, ""

    .line 731
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "HttpResponseParams.*\r\n.*mStatusCode="

    const-string v1, "HTTP/1.1 "

    .line 732
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r\n.*mUrl: "

    const-string v1, " "

    .line 733
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 734
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->hidePrivateInfoFromMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 736
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 737
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "MM/dd/yyyy HH:mm:ss.SSS"

    invoke-direct {p0, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 738
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 740
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 743
    sget-object p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string p1, "NULL Diag Mointor Pointer"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x1

    const/16 v3, 0x64

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move v4, p2

    .line 747
    invoke-interface/range {v0 .. v8}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ")",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;"
        }
    .end annotation

    .line 634
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V

    .line 636
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 637
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 640
    :cond_0
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 641
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 644
    :cond_1
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->isReuseConnection()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReuseConnection(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 645
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 646
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 647
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 648
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 649
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 650
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseProxy()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 651
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setToken(I)V

    return-object p0
.end method

.method private sendBsfRequestWithAuthorization(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 18

    move-object/from16 v9, p0

    move/from16 v7, p8

    .line 406
    sget-object v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBA: sendBsfRequestWithAuthorization(): username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, v9, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v1, v7, v3}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getPassword(Ljava/lang/String;ZI)Lcom/sec/internal/ims/gba/params/GbaData;

    move-result-object v6

    if-nez v6, :cond_0

    .line 409
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result v0

    new-instance v1, Lcom/sec/internal/ims/gba/GbaException;

    const/4 v2, 0x3

    const-string v3, "GBA FAIL akaKeys null"

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/gba/GbaException;-><init>(Ljava/lang/String;I)V

    invoke-direct {v9, v0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    .line 413
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Host"

    move-object/from16 v1, p4

    .line 414
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GBA-service; 0.1; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_1

    const-string v3, "3gpp-gba-uicc"

    goto :goto_0

    :cond_1
    const-string v3, "3gpp-gba-tmpi"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "User-Agent"

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseImei()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "X-TMUS-IMEI"

    move-object/from16 v3, p5

    .line 417
    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object/from16 v3, p5

    .line 422
    :goto_1
    invoke-virtual {v6}, Lcom/sec/internal/ims/gba/params/GbaData;->getPassword()Ljava/lang/String;

    move-result-object v0

    const-string v4, "dc"

    .line 423
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Authorization"

    if-eqz v4, :cond_5

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendBsfRequestWithAuthorization - AUTH_SQN_FAIL, akaPassword = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 427
    array-length v4, v0

    const/4 v6, 0x0

    const/4 v11, 0x1

    if-le v4, v11, :cond_4

    .line 428
    aget-byte v4, v0, v11

    if-lez v4, :cond_3

    .line 436
    new-instance v6, Ljava/lang/String;

    const/4 v11, 0x2

    add-int/2addr v4, v11

    invoke-static {v0, v11, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 442
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v13

    const-string v12, ""

    const-string v14, "GET"

    const-string v15, "/"

    move-object/from16 v11, p2

    move-object/from16 v16, v6

    move-object/from16 v17, p3

    invoke-static/range {v11 .. v17}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object v15, v8

    move-object/from16 v8, p1

    .line 444
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getBsfRequestCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    move-object v11, v0

    move-object v8, v15

    goto :goto_2

    :cond_3
    const-string v0, "Invalid autsLength."

    .line 438
    invoke-static {v10, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result v0

    invoke-direct {v9, v0, v6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    :cond_4
    const-string v0, "Invalid simResponse."

    .line 430
    invoke-static {v10, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result v0

    invoke-direct {v9, v0, v6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    :cond_5
    move-object v15, v8

    .line 446
    invoke-virtual {v6}, Lcom/sec/internal/ims/gba/params/GbaData;->getPassword()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v13

    const-string v14, "GET"

    const-string v0, "/"

    move-object/from16 v11, p2

    move-object v15, v0

    move-object/from16 v16, p3

    invoke-static/range {v11 .. v16}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v11, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;[B[BLcom/sec/internal/ims/gba/params/GbaData;Z)V

    .line 505
    :goto_2
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-object/from16 p2, p0

    move-object/from16 p3, v0

    move-object/from16 p4, p1

    move-object/from16 p5, v8

    move-object/from16 p6, v11

    move-object/from16 p7, p9

    invoke-direct/range {p2 .. p7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isBsfDisableTls(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const-string v1, "GBA: Bsf disable Tls"

    .line 508
    invoke-static {v10, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_6
    const v1, 0x31000001

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",>,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 514
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v7, p0

    .line 172
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v1, "GBA: sendRequestWithAuthorization()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 174
    invoke-direct {v7, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getWwwAuthenticateHeader(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "sendRequestWithAuthorization(): missing header: WWW-Authenticate"

    .line 176
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "WwwAuthenticateHeader null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void

    .line 181
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_a

    .line 185
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v6

    .line 189
    array-length v2, v0

    const/4 v8, 0x0

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    const-string/jumbo v5, "uicc"

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz p6, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez p6, :cond_3

    :goto_1
    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string v4, ""

    :goto_2
    move-object v12, v4

    .line 201
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-direct {v7, v0, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    .line 202
    iget-object v2, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 203
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 204
    iget-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 205
    invoke-virtual {v1, v4}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setNonce(Ljava/lang/String;)V

    .line 208
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v9, "?"

    const-string v10, "/"

    if-ne v4, v5, :cond_8

    .line 209
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 211
    :goto_3
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v15, v10

    goto :goto_4

    :cond_7
    move-object v15, v4

    .line 212
    :goto_4
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v16

    aget-object v17, v3, v8

    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    move-object v9, v2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v18, v3

    .line 210
    invoke-virtual/range {v9 .. v18}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 214
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 215
    sget-object v11, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    if-ne v4, v11, :cond_b

    .line 216
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 218
    :goto_5
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v15, v10

    goto :goto_6

    :cond_a
    move-object v15, v4

    .line 219
    :goto_6
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v16

    aget-object v17, v3, v8

    move-object v9, v2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 217
    invoke-virtual/range {v9 .. v17}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 222
    :cond_b
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v15, v10

    goto :goto_7

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    .line 223
    :goto_7
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v16

    aget-object v17, v3, v8

    move-object v9, v2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 221
    invoke-virtual/range {v9 .. v17}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_8
    invoke-static {v2, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Lcom/sec/internal/helper/httpclient/DigestAuth;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Host"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Authorization"

    .line 232
    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept"

    const-string v2, "*/*"

    .line 233
    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getAcceptEncoding(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-ne v1, v5, :cond_d

    .line 237
    iget-object v0, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->etag:Ljava/lang/String;

    const-string v1, "If-Match"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "X-TMUS-IMEI"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 242
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "X-3GPP-Intended-Identity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 245
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_f
    new-instance v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v11, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 356
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-ne v1, v11, :cond_10

    .line 357
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 360
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 361
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIpVersion()I

    move-result v1

    if-lez v1, :cond_11

    .line 362
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/DnsController;

    const/4 v2, 0x1

    .line 363
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->setNaf(Z)V

    move-object/from16 v2, p2

    .line 364
    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_9

    :cond_11
    move-object/from16 v2, p2

    .line 366
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_12
    const v1, 0x31000001

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",>,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 371
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void

    :cond_13
    :goto_a
    move-object/from16 v2, p2

    .line 182
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "realm or Qop is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void
.end method

.method private storeLastAuthInfo(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 2

    .line 679
    new-instance v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;-><init>()V

    .line 680
    new-instance v1, Lcom/sec/internal/helper/httpclient/DigestAuth;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/DigestAuth;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 681
    iput-object p1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 682
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private useGba(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z
    .locals 2

    .line 574
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 576
    sget-object p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "useGba(): no headers"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_0
    const-string v0, "User-Agent"

    .line 579
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    .line 581
    sget-object p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "useGba(): no headerUser-Agent"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 584
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "useGba(): User-Agent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "3gpp-gba"

    .line 585
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearLastAuthInfo()V
    .locals 2

    .line 79
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v1, "clearLastAuthInfo()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 14

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 85
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    .line 88
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->isValidAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    iget-object v5, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v11

    .line 100
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v9

    .line 101
    new-instance v12, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;

    invoke-direct {v12, p0, p1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)V

    .line 159
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v10

    move-object v8, p0

    move-object v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_1
    const p1, 0x31000001

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",>,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 167
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-void
.end method

.method public sendBsfRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 12

    move-object v9, p0

    move-object v1, p1

    .line 376
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v0

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v2

    move v3, p2

    invoke-direct {p0, v0, v2, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->buildUrl(IZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 378
    iget-object v0, v9, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    if-nez v0, :cond_0

    .line 379
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 381
    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Host"

    .line 382
    invoke-interface {v11, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GBA-service; 0.1; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_1

    const-string v2, "3gpp-gba-uicc"

    goto :goto_0

    :cond_1
    const-string v2, "3gpp-gba-tmpi"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "User-Agent"

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/"

    const-string v2, ""

    move-object v3, p3

    move-object/from16 v4, p5

    .line 384
    invoke-static {p3, v4, v0, v2, v2}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseImei()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "X-TMUS-IMEI"

    move-object/from16 v4, p4

    .line 386
    invoke-interface {v11, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object/from16 v4, p4

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object v8, v10

    .line 389
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getBsfRequestCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-object p1, p0

    move-object p2, v1

    move-object p3, v10

    move-object/from16 p4, v11

    move-object/from16 p5, v0

    move-object/from16 p6, p9

    invoke-direct/range {p1 .. p6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isBsfDisableTls(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 394
    sget-object v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v3, "sendBsfRequest() Bsf disable Tls"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_3
    const v1, 0x31000001

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",>,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 400
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void
.end method
