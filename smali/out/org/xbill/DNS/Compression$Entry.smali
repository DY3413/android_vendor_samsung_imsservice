.class Lorg/xbill/DNS/Compression$Entry;
.super Ljava/lang/Object;
.source "Compression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Compression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field name:Lorg/xbill/DNS/Name;

.field next:Lorg/xbill/DNS/Compression$Entry;

.field pos:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xbill/DNS/Compression$1;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/Compression$Entry;-><init>()V

    return-void
.end method
