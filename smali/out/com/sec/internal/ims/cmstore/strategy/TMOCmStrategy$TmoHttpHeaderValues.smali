.class public Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy$TmoHttpHeaderValues;
.super Ljava/lang/Object;
.source "TMOCmStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TmoHttpHeaderValues"
.end annotation


# static fields
.field public static DEVICE_ID_VALUE:Ljava/lang/String; = ""

.field public static final GBA:Ljava/lang/String; = "3gpp-gba"

.field public static final USER_AGENT_ID:Ljava/lang/String; = "T-Mobile P20"

.field public static USER_AGENT_ID_VALUE:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
