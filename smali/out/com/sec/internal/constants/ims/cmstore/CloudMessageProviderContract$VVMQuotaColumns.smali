.class public final Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$VVMQuotaColumns;
.super Ljava/lang/Object;
.source "CloudMessageProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VVMQuotaColumns"
.end annotation


# static fields
.field public static final LAST_UPDATED:Ljava/lang/String; = "LastUpdated"

.field public static final OCCUPIED_STORAGE:Ljava/lang/String; = "OccupiedStorage"

.field public static final TOTAL_STORAGE:Ljava/lang/String; = "TotalStorage"

.field public static final VMMESSAGES_QUOTA:Ljava/lang/String; = "VMMessagesQuota"

.field public static final VMOCUPPIED_MESSAGES:Ljava/lang/String; = "VMOccupiedMessages"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
