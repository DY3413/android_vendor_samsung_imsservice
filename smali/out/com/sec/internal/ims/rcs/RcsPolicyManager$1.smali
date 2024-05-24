.class Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "RcsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/rcs/RcsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/rcs/RcsPolicyManager;Landroid/os/Handler;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 103
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    .line 104
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 105
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 108
    :cond_e
    invoke-static {}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->-$$Nest$sfgetsUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsPolicyMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    packed-switch p2, :pswitch_data_42

    goto :goto_41

    .line 120
    :pswitch_30
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->-$$Nest$mupdateRcsStrategy(Lcom/sec/internal/ims/rcs/RcsPolicyManager;I)V

    goto :goto_41

    .line 115
    :pswitch_36
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->-$$Nest$monRCSAllowedChangedbyMDM(Lcom/sec/internal/ims/rcs/RcsPolicyManager;)V

    goto :goto_41

    .line 112
    :pswitch_3c
    iget-object p0, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->-$$Nest$monRcsRoamingPrefChanged(Lcom/sec/internal/ims/rcs/RcsPolicyManager;I)V

    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x8
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method
