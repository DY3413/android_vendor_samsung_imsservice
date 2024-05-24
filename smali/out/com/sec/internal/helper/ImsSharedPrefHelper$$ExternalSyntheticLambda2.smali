.class public final synthetic Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->$r8$lambda$dfmSwILj-NRXZJjVQJm-WpRZTWs(Landroid/content/SharedPreferences;)V

    return-void
.end method
