.class public Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;
.super Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;
.source "TelephonyAdapterPrimaryDeviceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;)V
    .registers 3

    .line 384
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;

    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterState;-><init>()V

    .line 385
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceBase;->mPhoneId:I

    const-string v0, "idle state"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
