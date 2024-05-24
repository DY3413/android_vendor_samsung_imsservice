.class public Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;
.super Ljava/lang/Object;
.source "XqEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/xq/att/data/XqEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XqContent"
.end annotation


# instance fields
.field intVal:I

.field strVal:Ljava/lang/String;

.field type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    .line 54
    sget-object p1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    goto :goto_27

    .line 51
    :cond_14
    sget-object p1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->STRING:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    goto :goto_27

    .line 48
    :cond_19
    sget-object p1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UINT32:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    goto :goto_27

    .line 45
    :cond_1e
    sget-object p1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->USHORT:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    goto :goto_27

    .line 42
    :cond_23
    sget-object p1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UCHAR:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    .line 57
    :goto_27
    iput p2, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->intVal:I

    .line 58
    iput-object p3, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->strVal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIntVal()I
    .registers 1

    .line 82
    iget p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->intVal:I

    return p0
.end method

.method public getStrVal()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->strVal:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    return-object p0
.end method

.method public hasIntVal()Z
    .registers 1

    .line 76
    iget p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->intVal:I

    if-ltz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasStrVal()Z
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->strVal:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
