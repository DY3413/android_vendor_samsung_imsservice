.class public final enum Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;
.super Ljava/lang/Enum;
.source "CloudMessageBufferDBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadStatusFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

.field public static final enum FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

.field public static final enum PENDING:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

.field public static final enum SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 122
    new-instance v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    const-string v1, "FAILURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->FAILURE:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    .line 123
    new-instance v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->SUCCESS:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    .line 124
    new-instance v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    const-string v5, "PENDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->PENDING:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 121
    sput-object v5, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput p3, p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;
    .locals 1

    .line 121
    const-class v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;
    .locals 1

    .line 121
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->$VALUES:[Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$UploadStatusFlag;->mId:I

    return p0
.end method
