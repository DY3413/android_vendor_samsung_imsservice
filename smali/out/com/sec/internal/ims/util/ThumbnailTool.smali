.class public Lcom/sec/internal/ims/util/ThumbnailTool;
.super Landroid/os/Handler;
.source "ThumbnailTool.java"

# interfaces
.implements Lcom/sec/internal/ims/util/IThumbnailTool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
    }
.end annotation


# static fields
.field private static final EVT_THUMBNAIL_CREATE:I = 0x3e8

.field private static final EVT_THUMBNAIL_CREATE_FROM_IMAGE:I = 0x3e9

.field private static final EVT_THUMBNAIL_CREATE_FROM_IMAGE_AS_SIZE:I = 0x3ea

.field private static final EVT_THUMBNAIL_CREATE_FROM_VIDEO:I = 0x3eb

.field private static final EVT_THUMBNAIL_CREATE_FROM_VIDEO_AS_SIZE:I = 0x3ec

.field private static final EXT_PNG:Ljava/lang/String; = "image/png"

.field private static final IMAGE_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ThumbnailTool"

.field private static final SUBDIR_NAME:Ljava/lang/String; = ".rcs_thumbnail"

.field private static final VIDEO_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

.field private mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

.field private mContentTypeContextCreator:Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

.field private mContext:Landroid/content/Context;

.field private mImageDimensionsExtractor:Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

.field private mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private mSavedDir:Ljava/lang/String;

.field private mVideoPreviewExtractor:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 63
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "JPG"

    const-string v2, "JPEG"

    const-string v3, "BMP"

    const-string v4, "PNG"

    const-string v5, "GIF"

    const-string v6, "WBMP"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/internal/ims/util/ThumbnailTool;->IMAGE_EXTENSIONS:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "MP4"

    const-string v2, "AVI"

    const-string v3, "3GP"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/internal/ims/util/ThumbnailTool;->VIDEO_EXTENSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3

    .line 90
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 61
    iput-object p2, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    .line 91
    new-instance p2, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    invoke-direct {p2}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    .line 92
    new-instance p2, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

    invoke-direct {p2}, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mImageDimensionsExtractor:Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

    .line 93
    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    .line 94
    new-instance p1, Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;

    invoke-direct {p1}, Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 95
    new-instance p1, Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    invoke-direct {p1}, Lcom/sec/internal/helper/picturetool/BitmapExtractor;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    .line 96
    new-instance p1, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

    invoke-direct {p1}, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContentTypeContextCreator:Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

    .line 97
    new-instance p1, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    iget-object p2, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    invoke-direct {p1, p2}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;-><init>(Lcom/sec/internal/helper/picturetool/BitmapExtractor;)V

    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mVideoPreviewExtractor:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1e

    .line 506
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_1e

    :catch_6
    move-exception p0

    .line 508
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t close stream: e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    :goto_1e
    return-void
.end method

.method private createThumbFromImage(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v13, p3

    move/from16 v11, p5

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createThumbFromImage: [originalFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", destinationDirectory="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "ThumbnailTool"

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    .line 268
    :try_start_29
    iget-object v3, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->extractFrom(Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_2f} :catch_35

    .line 269
    :try_start_2f
    iget-object v3, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    invoke-virtual {v3}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->release()V
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_34} :catch_36

    goto :goto_3b

    :catch_35
    move-object v1, v15

    :catch_36
    const-string v3, "could not extract complex image"

    .line 271
    invoke-static {v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    if-nez v1, :cond_43

    const-string v0, "complexImage == null"

    .line 275
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    .line 278
    :cond_43
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 279
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getImageDimensions(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v7

    if-nez v7, :cond_53

    const-string v0, "imageDimensions == null"

    .line 281
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    .line 285
    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createThumbFromImage: imageSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", maxSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", dimension="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", maxWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v16, v9, v13

    if-gtz v16, :cond_a0

    .line 288
    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v11, :cond_a0

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 289
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v8, p6

    if-gt v3, v8, :cond_a2

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/util/ThumbnailTool;->createCopyPaste(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a0
    move/from16 v8, p6

    .line 293
    :cond_a2
    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 294
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-wide v3, v9

    move-object/from16 v17, v7

    move-wide/from16 v7, p3

    move-wide/from16 v18, v9

    move/from16 v9, p5

    move/from16 v10, p6

    .line 293
    invoke-static/range {v3 .. v10}, Lcom/sec/internal/helper/picturetool/ReadScaleCalculator;->calculate(JIIJII)I

    move-result v20

    .line 296
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/util/ThumbnailTool;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d1

    const-string v0, "ext == null"

    .line 298
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    .line 301
    :cond_d1
    invoke-static {v3}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/png"

    .line 304
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ff

    if-gtz v16, :cond_ff

    .line 305
    new-instance v9, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;

    move-object/from16 v3, v17

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 306
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v8, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-object v3, v9

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;-><init>(IIIILcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V

    move-object v8, v9

    goto :goto_122

    :cond_ff
    move-object/from16 v3, v17

    .line 309
    new-instance v15, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 310
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v12, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-object v3, v15

    move-wide/from16 v4, v18

    move-wide/from16 v8, p3

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v3 .. v12}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;-><init>(JIIJIILcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V

    move-object v8, v15

    :goto_122
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-wide/from16 v4, v18

    move-wide/from16 v6, p3

    .line 313
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromStillPicture(Ljava/io/File;Ljava/io/File;IJJLcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string/jumbo v10, "tmpFile.delete() error"

    .line 531
    iget-object v1, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 532
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    goto :goto_10

    :cond_f
    move-object v1, v2

    :goto_10
    const-string v11, "ThumbnailTool"

    if-nez v1, :cond_1a

    const-string v0, "file == null"

    .line 535
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 538
    :cond_1a
    iget-object v2, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mVideoPreviewExtractor:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->extract(Ljava/io/File;Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;

    move-result-object v1

    .line 540
    invoke-interface {v1}, Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;->getFile()Ljava/io/File;

    move-result-object v12

    .line 541
    iget-object v2, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    const/4 v3, 0x1

    .line 542
    invoke-virtual {v2, v12, v3}, Lcom/sec/internal/helper/picturetool/BitmapExtractor;->extractFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 543
    invoke-interface {v1}, Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;->getDimensions()Landroid/util/Pair;

    move-result-object v2

    .line 545
    invoke-interface {v1}, Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;->getSize()J

    move-result-wide v4

    .line 548
    new-instance v9, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 549
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v1, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-object v14, v9

    move-wide v15, v4

    move-wide/from16 v19, p3

    move/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v23, v1

    invoke-direct/range {v14 .. v23}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;-><init>(JIIJIILcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-wide/from16 v6, p3

    move-object v8, v13

    .line 553
    :try_start_5e
    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JJLandroid/graphics/Bitmap;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_6f

    .line 556
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 557
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 559
    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return-object v0

    :catchall_6f
    move-exception v0

    move-object v1, v0

    .line 556
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 557
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 559
    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_7d
    throw v1
.end method

.method private createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JJLandroid/graphics/Bitmap;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    move-object v0, p0

    move-wide v3, p3

    move-wide v5, p5

    .line 569
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/sec/internal/ims/util/ThumbnailTool;->getReadScale(JJ)I

    move-result v1

    .line 572
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p7

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v8, p8

    .line 571
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromPicture(Ljava/io/File;Ljava/io/File;JJLandroid/util/Pair;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createThumbFromPicture(Ljava/io/File;Ljava/io/File;JJLandroid/util/Pair;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "JJ",
            "Landroid/util/Pair<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p7

    .line 370
    iget-object v0, v6, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const-string v9, "ThumbnailTool"

    if-eqz v0, :cond_161

    if-nez v7, :cond_f

    goto/16 :goto_161

    .line 375
    :cond_f
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_19

    const-string v0, "originalImage.first == null"

    .line 376
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 380
    :cond_19
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getContentTypeContext(Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IContentTypeContext;

    move-result-object v10

    if-nez v10, :cond_25

    const-string v0, "mContentTypeContext == null"

    .line 383
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 386
    :cond_25
    invoke-interface {v10}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->validateExtension()V

    .line 388
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    .line 389
    invoke-interface {v10, v0, v11}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createThumbFromPicture: outputFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v0, p3

    move-object/from16 v14, p8

    .line 397
    :goto_4f
    invoke-interface {v14, v0, v1}, Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;->next(J)Landroid/util/Pair;

    move-result-object v0

    .line 398
    iget-object v1, v6, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_61

    const-string v0, "file == null"

    .line 400
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 403
    :cond_61
    invoke-static {v11, v1}, Lcom/sec/internal/helper/picturetool/UniqueFilePathResolver;->getUniqueFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    const/4 v1, 0x0

    .line 404
    invoke-interface {v13, v1, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v5, 0x1

    if-eqz v0, :cond_d2

    .line 407
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_8a

    .line 409
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 410
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 411
    invoke-interface {v10}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    .line 409
    invoke-direct {v6, v1, v15, v0, v2}, Lcom/sec/internal/ims/util/ThumbnailTool;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;)V

    goto :goto_d2

    .line 413
    :cond_8a
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getImageDimensions(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_96

    const-string v0, "originalDimensions == null"

    .line 416
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 419
    :cond_96
    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 420
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 421
    invoke-interface {v10}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v16

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 422
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 423
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 422
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v15

    move v3, v4

    move-object/from16 v4, v16

    move v8, v5

    move-object/from16 v5, v17

    .line 419
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/util/ThumbnailTool;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;Landroid/util/Pair;)V

    goto :goto_d3

    :cond_d2
    :goto_d2
    move v8, v5

    .line 426
    :goto_d3
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createThumbFromPicture: tmpFile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, v0, p5

    if-gtz v2, :cond_15c

    const-wide/16 v4, 0x1400

    cmp-long v0, v0, v4

    if-gtz v0, :cond_12b

    .line 433
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_12b

    .line 434
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbFromPicture: use previous tmpFile= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {v0, v12}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_12e

    .line 439
    :cond_12b
    invoke-static {v15, v12}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 441
    :goto_12e
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_132
    :goto_132
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 442
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_132

    const-string/jumbo v1, "tmpFileToDelete.delete() error"

    .line 444
    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 455
    :cond_14b
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v2, p1

    .line 456
    invoke-interface {v10, v2, v12}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->processSpecificData(Ljava/io/File;Ljava/io/File;)V

    .line 458
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15c
    move-object/from16 v2, p1

    const/4 v8, 0x0

    goto/16 :goto_4f

    :cond_161
    :goto_161
    const-string v0, "mContext == null && originalImage == null"

    .line 371
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private createThumbFromStillPicture(Ljava/io/File;Ljava/io/File;IJJLcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;
    .registers 20

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v2, p3

    .line 329
    :try_start_4
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/util/ThumbnailTool;->extractBitmapFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_27

    .line 338
    :try_start_8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v10, p8

    .line 337
    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromPicture(Ljava/io/File;Ljava/io/File;JJLandroid/util/Pair;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1c} :catch_22
    .catch Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException; {:try_start_8 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    :catch_22
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_26
    return-object v1

    :catch_27
    move-exception v0

    move-object v2, v0

    .line 332
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private createThumbFromVideo(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;
    .registers 7

    .line 517
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_a
    .catch Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 522
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    :catch_a
    move-exception p0

    .line 520
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private extractBitmapFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/picturetool/BitmapExtractor;->extractFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getContentTypeContext(Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IContentTypeContext;
    .registers 5

    .line 354
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThumbnailTool"

    if-nez p1, :cond_13

    const-string p0, "ext == null"

    .line 356
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 359
    :cond_13
    invoke-static {p1}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStillContentTypeContext: mime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContentTypeContextCreator:Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->getContextByMime(Ljava/lang/String;)Lcom/sec/internal/helper/picturetool/IContentTypeContext;

    move-result-object p0

    return-object p0
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string p0, "."

    .line 79
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    add-int/lit8 p0, p0, 0x1

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getImageDimensions(Ljava/io/File;)Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mImageDimensionsExtractor:Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;->extract(Ljava/io/File;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private getReadScale(JJ)I
    .registers 5

    .line 578
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/helper/picturetool/ReadScaleCalculator;->calculate(JJ)I

    move-result p0

    return p0
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 492
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_13

    .line 494
    :try_start_6
    invoke-virtual {p1, p4, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 495
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    .line 497
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    return-void

    :catchall_10
    move-exception p1

    move-object v0, v1

    goto :goto_14

    :catchall_13
    move-exception p1

    :goto_14
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    .line 498
    throw p1
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;Landroid/util/Pair;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/io/File;",
            "I",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 470
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_31

    .line 472
    :try_start_6
    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 473
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/4 v0, 0x0

    .line 472
    invoke-static {p1, p2, p5, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 474
    invoke-virtual {p2, p4, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 475
    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 476
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 479
    :cond_27
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2e

    .line 481
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    return-void

    :catchall_2e
    move-exception p1

    move-object v0, v1

    goto :goto_32

    :catchall_31
    move-exception p1

    :goto_32
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    .line 482
    throw p1
.end method


# virtual methods
.method public createCopyPaste(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 5

    const-string p0, "ThumbnailTool"

    if-nez p2, :cond_b

    const-string p1, "destinationDirectory == null"

    .line 241
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 245
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0, p2}, Lcom/sec/internal/helper/picturetool/UniqueFilePathResolver;->getUniqueFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCopyPaste:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {p1, p2}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 251
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createThumb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .registers 8

    .line 178
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V

    .line 179
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 180
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 181
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V

    .line 182
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V

    const/16 p1, 0x3e8

    .line 183
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createThumbFromImage(Ljava/lang/String;Ljava/lang/String;JIILandroid/os/Message;)V
    .registers 10

    .line 201
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V

    .line 202
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 203
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 204
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V

    .line 205
    invoke-static {v0, p7}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V

    .line 206
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputwidth(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)V

    .line 207
    invoke-static {v0, p6}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputheight(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)V

    const/16 p1, 0x3ea

    .line 208
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createThumbFromImage(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .registers 8

    .line 189
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V

    .line 190
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 191
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 192
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V

    .line 193
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V

    const/16 p1, 0x3e9

    .line 194
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createThumbFromVideo(Ljava/lang/String;Ljava/lang/String;JIILandroid/os/Message;)V
    .registers 10

    .line 227
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V

    .line 228
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 229
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 230
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V

    .line 231
    invoke-static {v0, p7}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V

    .line 232
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputwidth(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)V

    .line 233
    invoke-static {v0, p6}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputheight(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)V

    const/16 p1, 0x3ec

    .line 234
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createThumbFromVideo(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .registers 8

    .line 215
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V

    .line 216
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 217
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 218
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V

    .line 219
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V

    const/16 p1, 0x3eb

    .line 220
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getThumbSavedDirectory()Ljava/lang/String;
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_43

    .line 165
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".rcs_thumbnail"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 168
    :cond_25
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    .line 170
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThumbSavedDirectory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailTool"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_43
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 103
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThumbnailTool"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_158

    const-string p0, "Unsupport file format!!!"

    .line 144
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_141

    .line 139
    :pswitch_29
    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetwidth(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I

    move-result v8

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetheight(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I

    move-result v9

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromVideo(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_142

    .line 134
    :pswitch_4e
    new-instance v3, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v5

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromVideo(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_142

    .line 129
    :pswitch_71
    new-instance v3, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetwidth(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I

    move-result v7

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetheight(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I

    move-result v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromImage(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_142

    .line 124
    :pswitch_96
    new-instance v3, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v5

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromImage(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_142

    .line 109
    :pswitch_b9
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: original="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fileExtension="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v2, Lcom/sec/internal/ims/util/ThumbnailTool;->IMAGE_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_117

    .line 114
    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v6

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromImage(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object p0

    goto :goto_142

    .line 117
    :cond_117
    sget-object v2, Lcom/sec/internal/ims/util/ThumbnailTool;->VIDEO_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_141

    .line 118
    new-instance v3, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J

    move-result-wide v5

    const v7, 0x7fffffff

    const v8, 0x7fffffff

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromVideo(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object p0

    goto :goto_142

    :cond_141
    :goto_141
    move-object p0, v1

    .line 146
    :goto_142
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_156

    .line 147
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1, p0, v1}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 148
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_156
    return-void

    nop

    :pswitch_data_158
    .packed-switch 0x3e8
        :pswitch_b9
        :pswitch_96
        :pswitch_71
        :pswitch_4e
        :pswitch_29
    .end packed-switch
.end method

.method public isSupported(Ljava/lang/String;)Z
    .registers 3

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The thumbnailFile type is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ThumbnailTool"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "image"

    .line 155
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2a

    const-string/jumbo p0, "video"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p0, 0x0

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x1

    return p0
.end method
