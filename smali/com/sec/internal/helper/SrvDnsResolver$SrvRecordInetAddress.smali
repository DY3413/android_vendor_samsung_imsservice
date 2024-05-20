.class public Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;
.super Ljava/lang/Object;
.source "SrvDnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/SrvDnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SrvRecordInetAddress"
.end annotation


# instance fields
.field public final mInetAddress:Ljava/net/InetAddress;

.field public final mPort:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;->mInetAddress:Ljava/net/InetAddress;

    .line 71
    iput p2, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;->mPort:I

    return-void
.end method
