.class public Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;
.super Ljava/lang/Object;
.source "IshSessionEstablishedEvent.java"


# instance fields
.field public mSessionId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;->mSessionId:I

    return-void
.end method
