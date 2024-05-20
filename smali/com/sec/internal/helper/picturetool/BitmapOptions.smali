.class public Lcom/sec/internal/helper/picturetool/BitmapOptions;
.super Ljava/lang/Object;
.source "BitmapOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createData(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 19
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 20
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 21
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 p0, 0x1

    .line 22
    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 23
    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    return-object v0
.end method
