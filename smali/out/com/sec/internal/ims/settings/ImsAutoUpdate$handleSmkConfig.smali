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
    .registers 4

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 960
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mContext:Landroid/content/Context;

    .line 961
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "smkconfig.json"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    const/4 p1, 0x0

    .line 962
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z

    return-void
.end method


# virtual methods
.method public clearSmkConfig()V
    .registers 3

    const-string v0, "Clear Smk Config"

    const-string v1, "handleSmkConfig"

    .line 1000
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_29

    .line 1003
    :try_start_b
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1004
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1005
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->disableSmkConfig()V

    const-string v0, "Clear Smk Config Successfully"

    .line 1006
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    const-string v0, "has problem for delete Smk Config"

    .line 1009
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v0, 0x0

    .line 1011
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    :cond_29
    return-void
.end method

.method public disableSmkConfig()V
    .registers 2

    const/4 v0, 0x0

    .line 1016
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z

    return-void
.end method

.method public getSmkConfig()Lcom/google/gson/JsonObject;
    .registers 1

    .line 996
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method public hasNewSmkConfig()Z
    .registers 1

    .line 1020
    iget-boolean p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z

    return p0
.end method

.method public load()V
    .registers 4

    .line 967
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 968
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 969
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    .line 970
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 974
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public saveSmkConfig(Lcom/google/gson/JsonObject;)V
    .registers 6

    const-string v0, "Save downloaded Smk Config"

    const-string v1, "handleSmkConfig"

    .line 979
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :try_start_7
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 985
    :cond_14
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 986
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mDownloadedSmkConfig:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2, v3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    const-string v0, "Store downloaded Smk Config complete"

    .line 987
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mCachedSmkConfig:Lcom/google/gson/JsonObject;

    const/4 p1, 0x1

    .line 989
    iput-boolean p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$handleSmkConfig;->mHasNewSmkConfig:Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    .line 991
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3c
    return-void
.end method
