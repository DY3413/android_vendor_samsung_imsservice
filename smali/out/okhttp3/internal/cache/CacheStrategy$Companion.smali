.class public final Lokhttp3/internal/cache/CacheStrategy$Companion;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z
    .registers 6
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "response"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "request"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p0

    const/16 v0, 0xc8

    const/4 v1, 0x0

    if-eq p0, v0, :cond_67

    const/16 v0, 0x19a

    if-eq p0, v0, :cond_67

    const/16 v0, 0x19e

    if-eq p0, v0, :cond_67

    const/16 v0, 0x1f5

    if-eq p0, v0, :cond_67

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_67

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_67

    const/16 v0, 0x133

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x134

    if-eq p0, v0, :cond_67

    const/16 v0, 0x194

    if-eq p0, v0, :cond_67

    const/16 v0, 0x195

    if-eq p0, v0, :cond_67

    packed-switch p0, :pswitch_data_7e

    return v1

    :cond_3d
    :pswitch_3d
    const-string p0, "Expires"

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 313
    invoke-static {p1, p0, v2, v0, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_67

    .line 314
    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_67

    .line 315
    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/CacheControl;->isPublic()Z

    move-result p0

    if-nez p0, :cond_67

    .line 316
    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/CacheControl;->isPrivate()Z

    move-result p0

    if-nez p0, :cond_67

    return v1

    .line 328
    :cond_67
    :pswitch_67
    invoke-virtual {p1}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_7c

    invoke-virtual {p2}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_7c

    const/4 v1, 0x1

    :cond_7c
    return v1

    nop

    :pswitch_data_7e
    .packed-switch 0x12c
        :pswitch_67
        :pswitch_67
        :pswitch_3d
    .end packed-switch
.end method
