.class public Lcom/sec/internal/omanetapi/nms/data/ExtendedRCS;
.super Ljava/lang/Object;
.source "ExtendedRCS.java"


# instance fields
.field public mReferenceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Reference-ID"
    .end annotation
.end field

.field public mReferenceType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Reference-Type"
    .end annotation
.end field

.field public mReferenceValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Reference-Value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
