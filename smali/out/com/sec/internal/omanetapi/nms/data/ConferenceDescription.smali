.class public Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;
.super Ljava/lang/Object;
.source "ConferenceDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;,
        Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$SubjectExt;
    }
.end annotation


# instance fields
.field public mIcon:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field

.field public mMaxCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maximum-user-count"
    .end annotation
.end field

.field public mPolicy:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "policy"
    .end annotation
.end field

.field public mSubject:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subject"
    .end annotation
.end field

.field public mSubjectExt:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$SubjectExt;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subject-ext"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
