.class public final Lcom/sec/internal/constants/ims/entitilement/EntitlementNamespaces$EntitlementActions;
.super Ljava/lang/Object;
.source "EntitlementNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/EntitlementNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntitlementActions"
.end annotation


# static fields
.field public static final ACTION_REFRESH_DEVICE_CONFIG:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

.field public static final ACTION_RETRY_DEVICE_CONFIG:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.RETRY_DEVICE_CONFIG"

.field public static final ACTION_TIMEOUT_ESIM_READY:Ljava/lang/String; = "com.sec.vsim.ericssonnsds.TIMEOUT_ESIM_READY "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
