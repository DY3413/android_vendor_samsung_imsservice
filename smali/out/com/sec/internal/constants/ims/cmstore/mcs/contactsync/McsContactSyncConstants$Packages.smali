.class public Lcom/sec/internal/constants/ims/cmstore/mcs/contactsync/McsContactSyncConstants$Packages;
.super Ljava/lang/Object;
.source "McsContactSyncConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/mcs/contactsync/McsContactSyncConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Packages"
.end annotation


# static fields
.field public static final CS_LAUNCH_URI:Ljava/lang/String; = "contactsync://launch"

.field public static final CS_PACKAGE_NAME:Ljava/lang/String; = "com.skt.contactsync"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
