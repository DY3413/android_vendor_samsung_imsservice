.class public final synthetic Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->$r8$lambda$rjuUwrmJGd8-3-wSc2duP4jQR7c(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
