.class public final synthetic Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->$r8$lambda$tLkX2IyeIssyarQH2RQA6WG1idw(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
