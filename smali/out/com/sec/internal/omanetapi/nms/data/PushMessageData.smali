.class Lcom/sec/internal/omanetapi/nms/data/PushMessageData;
.super Ljava/lang/Object;
.source "PushMessageData.java"


# instance fields
.field public nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

.field public pnsSubtype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pns-subtype"
    .end annotation
.end field

.field public pnsTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pns-time"
    .end annotation
.end field

.field public pnsType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pns-type"
    .end annotation
.end field

.field public recipients:[Lcom/sec/internal/omanetapi/nms/data/Attribute;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipients"
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
