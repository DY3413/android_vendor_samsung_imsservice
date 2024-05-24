.class public final Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;
.super Ljava/lang/Object;
.source "OpenJSSEPlatform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/OpenJSSEPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildIfSupported()Lokhttp3/internal/platform/OpenJSSEPlatform;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 98
    invoke-virtual {p0}, Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;->isSupported()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    new-instance p0, Lokhttp3/internal/platform/OpenJSSEPlatform;

    invoke-direct {p0, v0}, Lokhttp3/internal/platform/OpenJSSEPlatform;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p0

    :cond_d
    return-object v0
.end method

.method public final isSupported()Z
    .registers 1

    .line 89
    invoke-static {}, Lokhttp3/internal/platform/OpenJSSEPlatform;->access$isSupported$cp()Z

    move-result p0

    return p0
.end method
