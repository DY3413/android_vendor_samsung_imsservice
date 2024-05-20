.class public Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;
.super Ljava/lang/Object;
.source "NaptrDnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/NaptrDnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NaptrTarget"
.end annotation


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;->mName:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;->mType:I

    return-void
.end method
