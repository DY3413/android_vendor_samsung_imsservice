.class public Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;
.super Ljava/lang/Object;
.source "ImsAutoUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/settings/ImsAutoUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "handleSmkConfig"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "handleSmkConfig"


# instance fields
.field private mCachedSmkConfig:Lcom/google/gson/JsonObject;

.field private mContext:Landroid/content/Context;

.field private final mDownloadedSmkConfig:Ljava/io/File;

.field private mHasNewSmkConfig:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mContext:Landroid/content/Context;

    .line 973
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "smkconfig.json"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    const/4 p1, 0x0

    .line 974
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z

    return-void
.end method


# virtual methods
.method public clearSmkConfig()V
    .locals 2

    const-string v0, "handleSmkConfig"

    const-string v1, "Clear Smk Config"

    .line 1012
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_1

    .line 1015
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1017
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->disableSmkConfig()V

    const-string v1, "Clear Smk Config Successfully"

    .line 1018
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "has problem for delete Smk Config"

    .line 1021
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 1023
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    :cond_1
    return-void
.end method

.method public disableSmkConfig()V
    .locals 1

    const/4 v0, 0x0

    .line 1028
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z

    return-void
.end method

.method public getSmkConfig()Lcom/google/gson/JsonObject;
    .locals 0

    .line 1008
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public hasNewSmkConfig()Z
    .locals 0

    .line 1032
    iget-boolean p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z

    return p0
.end method

.method public load()V
    .locals 3

    .line 979
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 981
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 982
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 986
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public saveSmkConfig(Lcom/google/gson/JsonObject;)V
    .locals 4

    const-string v0, "handleSmkConfig"

    const-string v1, "Save downloaded Smk Config"

    .line 991
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 994
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 998
    iget-object v1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2, v3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    const-string v1, "Store downloaded Smk Config complete"

    .line 999
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    const/4 p1, 0x1

    .line 1001
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1003
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
