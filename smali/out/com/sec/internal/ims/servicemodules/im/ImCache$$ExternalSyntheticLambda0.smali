.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->$r8$lambda$2Uxx8TFfc__ou_MvtVV8jllxmWY(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result p0

    return p0
.end method
