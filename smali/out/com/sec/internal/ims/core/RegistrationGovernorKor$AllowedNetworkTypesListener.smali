.class public Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;
.super Landroid/telephony/TelephonyCallback;
.source "RegistrationGovernorKor.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationGovernorKor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllowedNetworkTypesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .registers 2

    .line 1563
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllowedNetworkTypesChanged(IJ)V
    .registers 7

    .line 1567
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    iget-object v0, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_4d

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_13

    goto :goto_4d

    .line 1569
    :cond_13
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllowedNetworkTypesChanged : prev= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$fgetmAllowedNetworkType(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " new= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$fgetmAllowedNetworkType(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-eqz p1, :cond_4d

    .line 1571
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$fputmAllowedNetworkType(Lcom/sec/internal/ims/core/RegistrationGovernorKor;J)V

    .line 1572
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$AllowedNetworkTypesListener;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleAllowedNetworkTypeChanged()V

    :cond_4d
    :goto_4d
    return-void
.end method
