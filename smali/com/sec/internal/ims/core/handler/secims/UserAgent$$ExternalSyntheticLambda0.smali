.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/UserAgent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/ims/util/ImsUri$UriType;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/ims/util/ImsUri$UriType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$$ExternalSyntheticLambda0;->f$0:Lcom/sec/ims/util/ImsUri$UriType;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$$ExternalSyntheticLambda0;->f$0:Lcom/sec/ims/util/ImsUri$UriType;

    check-cast p1, Lcom/sec/ims/util/NameAddr;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->$r8$lambda$SwqruuE7Sg8X--6tNa0YhkpFZ1c(Lcom/sec/ims/util/ImsUri$UriType;Lcom/sec/ims/util/NameAddr;)Z

    move-result p0

    return p0
.end method
