.class public Lcom/sec/internal/ims/xq/att/ImsXqReporter;
.super Landroid/os/Handler;
.source "ImsXqReporter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsXqReporterDummy"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isXqEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "ImsXqReporterDummy"

    const-string v0, "Default Case, Check SEC_PRODUCT_FEATURE_COMMON_SUPPORT_IQI"

    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    const-string p0, "ImsXqReporterDummy"

    const-string v0, "Not start"

    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 1

    const-string p0, "ImsXqReporterDummy"

    const-string/jumbo v0, "stop"

    .line 38
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
