.class public Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra$Key;
.super Ljava/lang/Object;
.source "IdcExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final CHANGE_TYPE:Ljava/lang/String; = "change_type"

.field public static final DC_APP_ID:Ljava/lang/String; = "dc_app_id"

.field public static final SDP:Ljava/lang/String; = "sdp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
