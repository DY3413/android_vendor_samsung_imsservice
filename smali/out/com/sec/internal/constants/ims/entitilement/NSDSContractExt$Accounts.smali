.class public final Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Accounts;
.super Ljava/lang/Object;
.source "NSDSContractExt.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$CommonColumns;
.implements Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$AccountColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 668
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "accounts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Accounts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildAccountUri(J)Landroid/net/Uri;
    .registers 3

    .line 676
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
