.class public Lcom/sec/internal/ims/xq/att/data/XqEvent;
.super Ljava/lang/Object;
.source "XqEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;,
        Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;,
        Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
    }
.end annotation


# instance fields
.field private mContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;",
            ">;"
        }
    .end annotation
.end field

.field private mtrips:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mContent:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getMContent(I)Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mContent:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;

    return-object p0
.end method

.method public getMContentList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mContent:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getMtrip()Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mtrips:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-object p0
.end method

.method public setContent(IILjava/lang/String;)V
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mContent:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setXqMtrips(I)V
    .locals 0

    .line 96
    invoke-static {p1}, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;->castToType(I)Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent;->mtrips:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqMtrips;

    return-void
.end method
