.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.source "HttpAdapterJibeAndSec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "HttpAdapterJibeAndSec"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    .line 19
    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    return-void
.end method
