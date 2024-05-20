.class public final synthetic Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->$r8$lambda$RKX2i7zxo4gjb2jPrbI8kOpxSqQ(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
