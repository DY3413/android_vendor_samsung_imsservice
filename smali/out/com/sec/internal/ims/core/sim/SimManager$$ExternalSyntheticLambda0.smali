.class public final synthetic Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentValues;

.field public final synthetic f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/ContentValues;

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/ContentValues;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->$r8$lambda$ZDuD_KUf88accvguY7VePUIrKg8(Landroid/content/ContentValues;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
