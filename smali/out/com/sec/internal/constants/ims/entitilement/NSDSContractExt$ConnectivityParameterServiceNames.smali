.class public final Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$ConnectivityParameterServiceNames;
.super Ljava/lang/Object;
.source "NSDSContractExt.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$CommonColumns;
.implements Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$ConnectivityServicesColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectivityParameterServiceNames"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1044
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "connectivity_service_names"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$ConnectivityParameterServiceNames;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildServiceNamesUri(J)Landroid/net/Uri;
    .registers 3

    .line 1053
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$ConnectivityParameterServiceNames;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
