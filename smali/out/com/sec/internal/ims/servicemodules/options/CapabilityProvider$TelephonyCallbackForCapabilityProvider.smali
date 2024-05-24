.class Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;
.super Landroid/telephony/TelephonyCallback;
.source "CapabilityProvider.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyCallbackForCapabilityProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .registers 2

    .line 983
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 5

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged(): state ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] networkType ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-static {p2}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CapabilityProvider"

    .line 987
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$fputmDataNetworkType(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;I)V

    return-void
.end method
