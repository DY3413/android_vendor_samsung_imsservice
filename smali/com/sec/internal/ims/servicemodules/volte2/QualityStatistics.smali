.class public Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;
.super Ljava/lang/Object;
.source "QualityStatistics.java"


# static fields
.field public static final ACTIONQUALITYSTATISTICS:Ljava/lang/String; = "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

.field public static final EVENTNAME:Ljava/lang/String; = "H015"

.field public static final EVENTTYPE:Ljava/lang/String; = "event_type"

.field private static final LOG_TAG:Ljava/lang/String; = "QualityStatistics"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;->LOG_TAG:Ljava/lang/String;

    const-string v1, "QualityStatistics"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public sendQualityStatisticsEvent()V
    .locals 3

    .line 23
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;->LOG_TAG:Ljava/lang/String;

    const-string v1, "sendQualityStatisticsEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.statistics.VZW_QUALITY_STATISTICS"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "event_type"

    const-string v2, "H015"

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.vzw.qualitydatalog"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/QualityStatistics;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
