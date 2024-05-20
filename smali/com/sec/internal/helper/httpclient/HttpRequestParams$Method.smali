.class public final enum Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
.super Ljava/lang/Enum;
.source "HttpRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum HEAD:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum OPTIONS:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field public static final enum TRACE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 21
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v5, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v7, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v9, "TRACE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->TRACE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v9, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v11, "HEAD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->HEAD:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    new-instance v11, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const-string v13, "OPTIONS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->OPTIONS:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 20
    sput-object v13, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->$VALUES:[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->$VALUES:[Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-object v0
.end method
