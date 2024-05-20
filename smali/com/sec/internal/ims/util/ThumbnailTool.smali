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
    .locals 7

    .line 62
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "JPG"

    const-string v2, "JPEG"

    const-string v3, "BMP"

    const-string v4, "PNG"

    const-string v5, "GIF"

    const-string v6, "WBMP"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/internal/ims/util/ThumbnailTool;->IMAGE_EXTENSIONS:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "3GP"

    const-string v2, "MP4"

    const-string v3, "AVI"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/internal/ims/util/ThumbnailTool;->VIDEO_EXTENSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    invoke-direct {v0}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    .line 90
    new-instance v0, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

    invoke-direct {v0}, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mImageDimensionsExtractor:Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

    .line 91
    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    .line 92
    new-instance p1, Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;

    invoke-direct {p1}, Lcom/sec/internal/helper/picturetool/PanicCompressionDescriptor;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mPanicDescriptor:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 93
    new-instance p1, Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    invoke-direct {p1}, Lcom/sec/internal/helper/picturetool/BitmapExtractor;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    .line 94
    new-instance p1, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

    invoke-direct {p1}, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContentTypeContextCreator:Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

    .line 95
    new-instance p1, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    invoke-direct {p1, v0}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;-><init>(Lcom/sec/internal/helper/picturetool/BitmapExtractor;)V

    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mVideoPreviewExtractor:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 505
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 507
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

    :cond_0
    :goto_0
    return-void
.end method

.method private createThumbFromImage(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v13, p3

    move/from16 v11, p5

    .line 257
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

    .line 267
    :try_start_0
    iget-object v3, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->extractFrom(Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :try_start_1
    iget-object v3, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mComplexImageExtractor:Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;

    invoke-virtual {v3}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v15

    :catch_1
    const-string v3, "could not extract complex image"

    .line 270
    invoke-static {v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v1, :cond_0

    const-string v0, "complexImage == null"

    .line 274
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    .line 277
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 278
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getImageDimensions(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v0, "imageDimensions == null"

    .line 280
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    .line 284
    :cond_1
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

    if-gtz v16, :cond_2

    .line 287
    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v11, :cond_2

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 288
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v8, p6

    if-gt v3, v8, :cond_3

    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/util/ThumbnailTool;->createCopyPaste(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move/from16 v8, p6

    .line 292
    :cond_3
    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 293
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

    .line 292
    invoke-static/range {v3 .. v10}, Lcom/sec/internal/helper/picturetool/ReadScaleCalculator;->calculate(JIIJII)I

    move-result v20

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/util/ThumbnailTool;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v0, "ext == null"

    .line 297
    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    .line 300
    :cond_4
    invoke-static {v3}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/png"

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-gtz v16, :cond_5

    .line 304
    new-instance v9, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;

    move-object/from16 v3, v17

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 305
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

    goto :goto_1

    :cond_5
    move-object/from16 v3, v17

    .line 308
    new-instance v15, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 309
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

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-wide/from16 v4, v18

    move-wide/from16 v6, p3

    .line 312
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromStillPicture(Ljava/io/File;Ljava/io/File;IJJLcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string/jumbo v10, "tmpFile.delete() error"

    .line 530
    iget-object v1, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v11, "ThumbnailTool"

    if-nez v1, :cond_1

    const-string v0, "file == null"

    .line 534
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 537
    :cond_1
    iget-object v2, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mVideoPreviewExtractor:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;->extract(Ljava/io/File;Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;

    move-result-object v1

    .line 539
    invoke-interface {v1}, Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;->getFile()Ljava/io/File;

    move-result-object v12

    .line 540
    iget-object v2, v0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    const/4 v3, 0x1

    .line 541
    invoke-virtual {v2, v12, v3}, Lcom/sec/internal/helper/picturetool/BitmapExtractor;->extractFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 542
    invoke-interface {v1}, Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;->getDimensions()Landroid/util/Pair;

    move-result-object v2

    .line 544
    invoke-interface {v1}, Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;->getSize()J

    move-result-wide v4

    .line 547
    new-instance v9, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 548
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

    .line 552
    :try_start_0
    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JJLandroid/graphics/Bitmap;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 556
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 558
    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 555
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 556
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 558
    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_3
    throw v1
.end method

.method private createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JJLandroid/graphics/Bitmap;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    move-object v0, p0

    move-wide v3, p3

    move-wide v5, p5

    .line 568
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/sec/internal/ims/util/ThumbnailTool;->getReadScale(JJ)I

    move-result v1

    .line 571
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p7

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v8, p8

    .line 570
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromPicture(Ljava/io/File;Ljava/io/File;JJLandroid/util/Pair;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createThumbFromPicture(Ljava/io/File;Ljava/io/File;JJLandroid/util/Pair;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;
    .locals 18
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

    .line 369
    iget-object v0, v6, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const-string v9, "ThumbnailTool"

    if-eqz v0, :cond_b

    if-nez v7, :cond_0

    goto/16 :goto_5

    .line 374
    :cond_0
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string v0, "originalImage.first == null"

    .line 375
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 379
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getContentTypeContext(Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IContentTypeContext;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v0, "mContentTypeContext == null"

    .line 382
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 385
    :cond_2
    invoke-interface {v10}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->validateExtension()V

    .line 387
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    .line 388
    invoke-interface {v10, v0, v11}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createThumbFromPicture: outputFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v0, p3

    move-object/from16 v14, p8

    .line 396
    :goto_0
    invoke-interface {v14, v0, v1}, Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;->next(J)Landroid/util/Pair;

    move-result-object v0

    .line 397
    iget-object v1, v6, Lcom/sec/internal/ims/util/ThumbnailTool;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "file == null"

    .line 399
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 402
    :cond_3
    invoke-static {v11, v1}, Lcom/sec/internal/helper/picturetool/UniqueFilePathResolver;->getUniqueFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    const/4 v1, 0x0

    .line 403
    invoke-interface {v13, v1, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    .line 406
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 408
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 409
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 410
    invoke-interface {v10}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    .line 408
    invoke-direct {v6, v1, v15, v0, v2}, Lcom/sec/internal/ims/util/ThumbnailTool;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;)V

    goto :goto_1

    .line 412
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getImageDimensions(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v0, "originalDimensions == null"

    .line 415
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 418
    :cond_5
    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 419
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 420
    invoke-interface {v10}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v16

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 421
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 422
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 421
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v15

    move v3, v4

    move-object/from16 v4, v16

    move v8, v5

    move-object/from16 v5, v17

    .line 418
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/util/ThumbnailTool;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;Landroid/util/Pair;)V

    goto :goto_2

    :cond_6
    :goto_1
    move v8, v5

    .line 425
    :goto_2
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 427
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

    if-gtz v2, :cond_a

    const-wide/16 v4, 0x1400

    cmp-long v0, v0, v4

    if-gtz v0, :cond_7

    .line 432
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_7

    .line 433
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createThumbFromPicture: use previous tmpFile= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {v0, v12}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_3

    .line 438
    :cond_7
    invoke-static {v15, v12}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 440
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 441
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "tmpFileToDelete.delete() error"

    .line 443
    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 454
    :cond_9
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v2, p1

    .line 455
    invoke-interface {v10, v2, v12}, Lcom/sec/internal/helper/picturetool/IContentTypeContext;->processSpecificData(Ljava/io/File;Ljava/io/File;)V

    .line 457
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    move-object/from16 v2, p1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_b
    :goto_5
    const-string v0, "mContext == null && originalImage == null"

    .line 370
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private createThumbFromStillPicture(Ljava/io/File;Ljava/io/File;IJJLcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v2, p3

    .line 328
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/util/ThumbnailTool;->extractBitmapFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 337
    :try_start_1
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

    .line 336
    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromPicture(Ljava/io/File;Ljava/io/File;JJLandroid/util/Pair;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v1

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 331
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private createThumbFromVideo(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;
    .locals 0

    .line 516
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/util/ThumbnailTool;->createThumbFromMotionPicture(Ljava/io/File;Ljava/io/File;JII)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 521
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 519
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private extractBitmapFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mBitmapExtractor:Lcom/sec/internal/helper/picturetool/BitmapExtractor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/picturetool/BitmapExtractor;->extractFromImage(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getContentTypeContext(Ljava/io/File;)Lcom/sec/internal/helper/picturetool/IContentTypeContext;
    .locals 3

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThumbnailTool"

    if-nez p1, :cond_0

    const-string p0, "ext == null"

    .line 355
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 358
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStillContentTypeContext: mime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mContentTypeContextCreator:Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->getContextByMime(Ljava/lang/String;)Lcom/sec/internal/helper/picturetool/IContentTypeContext;

    move-result-object p0

    return-object p0
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "."

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getImageDimensions(Ljava/io/File;)Landroid/util/Pair;
    .locals 0
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

    .line 349
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mImageDimensionsExtractor:Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/picturetool/ImageDimensionsExtractor;->extract(Ljava/io/File;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private getReadScale(JJ)I
    .locals 0

    .line 577
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/helper/picturetool/ReadScaleCalculator;->calculate(JJ)I

    move-result p0

    return p0
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 491
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 493
    :try_start_1
    invoke-virtual {p1, p4, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 494
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    .line 497
    throw p1
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;ILandroid/graphics/Bitmap$CompressFormat;Landroid/util/Pair;)V
    .locals 2
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

    .line 469
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 471
    :try_start_1
    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 472
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    const/4 v0, 0x0

    .line 471
    invoke-static {p1, p2, p5, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 473
    invoke-virtual {p2, p4, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 474
    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 475
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 478
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 480
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/ThumbnailTool;->closeStream(Ljava/io/Closeable;)V

    .line 481
    throw p1
.end method


# virtual methods
.method public createCopyPaste(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 2

    const-string p0, "ThumbnailTool"

    if-nez p2, :cond_0

    const-string p1, "destinationDirectory == null"

    .line 240
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 244
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0, p2}, Lcom/sec/internal/helper/picturetool/UniqueFilePathResolver;->getUniqueFile(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCopyPaste:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p1, p2}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 250
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createThumb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .locals 2

    .line 177
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V

    .line 178
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 179
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 180
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V

    .line 181
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V

    const/16 p1, 0x3e8

    .line 182
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createThumbFromImage(Ljava/lang/String;Ljava/lang/String;JIILandroid/os/Message;)V
    .locals 2

    .line 200
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V

    .line 201
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 202
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 203
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V

    .line 204
    invoke-static {v0, p7}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V

    .line 205
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputwidth(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)V

    .line 206
    invoke-static {v0, p6}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputheight(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)V

    const/16 p1, 0x3ea

    .line 207
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createThumbFromImage(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .locals 2

    .line 188
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V

    .line 189
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 190
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 191
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V

    .line 192
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V

    const/16 p1, 0x3e9

    .line 193
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createThumbFromVideo(Ljava/lang/String;Ljava/lang/String;JIILandroid/os/Message;)V
    .locals 2

    .line 226
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V

    .line 227
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 228
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 229
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V

    .line 230
    invoke-static {v0, p7}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V

    .line 231
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputwidth(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)V

    .line 232
    invoke-static {v0, p6}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputheight(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)V

    const/16 p1, 0x3ec

    .line 233
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createThumbFromVideo(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .locals 2

    .line 214
    new-instance v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V

    .line 215
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 216
    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V

    .line 217
    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V

    .line 218
    invoke-static {v0, p5}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V

    const/16 p1, 0x3eb

    .line 219
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getThumbSavedDirectory()Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 163
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 164
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".rcs_thumbnail"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    .line 169
    :cond_1
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

    .line 171
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool;->mSavedDir:Ljava/lang/String;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 101
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;

    .line 104
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

    .line 105
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p0, "Unsupport file format!!!"

    .line 142
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    :pswitch_0
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

    goto/16 :goto_1

    .line 132
    :pswitch_1
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

    goto/16 :goto_1

    .line 127
    :pswitch_2
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

    goto/16 :goto_1

    .line 122
    :pswitch_3
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

    goto/16 :goto_1

    .line 107
    :pswitch_4
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/ThumbnailTool;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
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

    .line 111
    sget-object v2, Lcom/sec/internal/ims/util/ThumbnailTool;->IMAGE_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
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

    goto :goto_1

    .line 115
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/util/ThumbnailTool;->VIDEO_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
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

    goto :goto_1

    :cond_1
    :goto_0
    move-object p0, v1

    .line 144
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 145
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1, p0, v1}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 146
    invoke-static {v0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->-$$Nest$fgetcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSupported(Ljava/lang/String;)Z
    .locals 1

    .line 152
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

    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "video"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
