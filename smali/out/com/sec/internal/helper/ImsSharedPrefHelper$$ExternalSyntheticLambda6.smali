.class public final synthetic Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda6;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda6;->f$1:J

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, v2, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->$r8$lambda$gPI9iECRyPbvPRPwDxHHQiajhWk(Ljava/lang/String;JLandroid/content/SharedPreferences;)V

    return-void
.end method
