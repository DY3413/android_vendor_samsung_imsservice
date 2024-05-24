.class public Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;
.super Ljava/lang/Object;
.source "PngLazyCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PngLazyCompressionDescriptor"

.field private static final STUB_IMAGE_QUALITY:I = 0x64


# instance fields
.field private mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mInitial:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mPanic:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mScale:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPanic(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mPanic:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mScale:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDelegate(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(IIIILcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V
    .registers 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor$1;-><init>(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;)V

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mInitial:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 40
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->getStartWidthScale(II)I

    move-result p1

    .line 41
    invoke-direct {p0, p2, p4}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->getStartHeightScale(II)I

    move-result p2

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mScale:I

    .line 44
    iput-object p5, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mPanic:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-void
.end method

.method private getStartHeightScale(II)I
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->getStartScale(II)I

    move-result p0

    return p0
.end method

.method private getStartScale(II)I
    .registers 4

    .line 55
    div-int p0, p1, p2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-ge p2, p1, :cond_f

    mul-int/2addr p2, p0

    .line 57
    rem-int/2addr p1, p2

    if-nez p1, :cond_e

    const/4 v0, 0x0

    :cond_e
    add-int/2addr p0, v0

    :cond_f
    return p0
.end method

.method private getStartWidthScale(II)I
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->getStartScale(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;->next(J)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
