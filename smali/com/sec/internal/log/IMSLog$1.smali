.class Lcom/sec/internal/log/IMSLog$1;
.super Ljava/lang/Object;
.source "IMSLog.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/log/IMSLog;->getImsDumpPath()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method
