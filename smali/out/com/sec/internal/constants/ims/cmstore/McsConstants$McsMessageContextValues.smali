.class public Lcom/sec/internal/constants/ims/cmstore/McsConstants$McsMessageContextValues;
.super Lcom/sec/internal/constants/ims/cmstore/data/MessageContextValues;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McsMessageContextValues"
.end annotation


# static fields
.field public static final botMessage:Ljava/lang/String; = "bot-message"

.field public static final chatMessage:Ljava/lang/String; = "chat-message"

.field public static final conferenceMessage:Ljava/lang/String; = "conference-message"

.field public static final fileMessage:Ljava/lang/String; = "file-message"

.field public static final geolocationMessage:Ljava/lang/String; = "geolocation-message"

.field public static final imdnMessage:Ljava/lang/String; = "imdn-message"

.field public static final multiMediaMessage:Ljava/lang/String; = "multimedia-message"

.field public static final responseMessage:Ljava/lang/String; = "response-message"

.field public static final standaloneMessage:Ljava/lang/String; = "standalone-message"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 177
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/cmstore/data/MessageContextValues;-><init>()V

    return-void
.end method
