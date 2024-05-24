.class public Lcom/sec/internal/ims/cmstore/CloudMessageIntent$Extras;
.super Ljava/lang/Object;
.source "CloudMessageIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/CloudMessageIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extras"
.end annotation


# static fields
.field public static final FETCH_URI_RESPONSE:Ljava/lang/String; = "fetch_uri_response"

.field public static final FULLSYNC:Ljava/lang/String; = "fullsync"

.field public static final LINENUM:Ljava/lang/String; = "linenum"

.field public static final MSGTYPE:Ljava/lang/String; = "msgtype"

.field public static final NETWORK_OP_IN_PROGRESS:Ljava/lang/String; = "network_op_in_progress"

.field public static final ROWIDS:Ljava/lang/String; = "rowids"

.field public static final SIMSLOT:Ljava/lang/String; = "sim_slot"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
