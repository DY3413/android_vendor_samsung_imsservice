.class public final synthetic Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/content/SharedPreferences$Editor;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->$r8$lambda$aQf3TZUyc3w9xsdMih_vxUVwAvw(Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
