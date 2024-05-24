.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;
.super Ljava/lang/Object;
.source "PackageInfoValidator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PackageInfoValidator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPackageSigner:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkPackageDetails(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;)Z
    .registers 5

    .line 41
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 42
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 43
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched package name:mPackageName - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 47
    :cond_2c
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageSigner()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    .line 48
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched package signer:mPackageSigner - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 51
    :cond_51
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    const-string p1, "package details are successfully validated"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private updatePackageSigner()V
    .registers 4

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 33
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->getFingerPrint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePackageSigner: updated package signer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p0

    .line 36
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_37
    return-void
.end method


# virtual methods
.method public processIARIauthorization(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .line 56
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    const-string v1, "processIARIauthorization"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;-><init>()V

    .line 59
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->parseAuthDoc(Ljava/io/InputStream;)V

    .line 60
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->getStatus()I

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_34

    .line 61
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->getAuthDocument()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    move-result-object p1

    .line 63
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->checkPackageDetails(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;)Z

    move-result p0

    if-nez p0, :cond_26

    const-string p0, "error validating package details"

    .line 64
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 68
    :cond_26
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->process()V

    .line 69
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->getStatus()I

    move-result p0

    if-nez p0, :cond_34

    .line 70
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIari()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_34
    return-object v2
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->updatePackageSigner()V

    return-void
.end method
