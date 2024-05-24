.class synthetic Lcom/sec/internal/helper/httpclient/HttpRequestParams$1;
.super Ljava/lang/Object;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 89
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->values()[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    :try_start_9
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->HEAD:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->OPTIONS:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$1;->$SwitchMap$com$sec$internal$helper$httpclient$HttpRequestParams$Method:[I

    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->TRACE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method
