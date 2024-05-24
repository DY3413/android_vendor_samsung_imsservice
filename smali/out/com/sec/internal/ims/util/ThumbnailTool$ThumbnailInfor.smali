.class Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;
.super Ljava/lang/Object;
.source "ThumbnailTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/ThumbnailTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailInfor"
.end annotation


# instance fields
.field private callback:Landroid/os/Message;

.field private destFilePath:Ljava/lang/String;

.field private height:I

.field private maxSize:J

.field private originalFilePath:Ljava/lang/String;

.field private width:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Landroid/os/Message;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->callback:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->destFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetheight(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->height:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->maxSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->originalFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwidth(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->width:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcallback(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Landroid/os/Message;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->callback:Landroid/os/Message;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdestFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->destFilePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputheight(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->height:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmaxSize(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->maxSize:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoriginalFilePath(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->originalFilePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwidth(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;->width:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ThumbnailTool$ThumbnailInfor;-><init>()V

    return-void
.end method
