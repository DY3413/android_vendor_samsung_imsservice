.class public final synthetic Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda11;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda11;->f$1:I

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->$r8$lambda$IyfPukEYupEwbb596QfJg9fEbDU(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    return-void
.end method
