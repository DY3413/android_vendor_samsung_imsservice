.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->$r8$lambda$YJq1NCee33MCed_7lJSYxnxjNyI(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
