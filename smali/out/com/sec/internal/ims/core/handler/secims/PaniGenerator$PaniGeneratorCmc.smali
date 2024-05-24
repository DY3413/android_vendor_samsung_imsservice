.class public Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;
.super Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;
.source "PaniGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PaniGeneratorCmc"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V
    .registers 2

    .line 630
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    return-void
.end method


# virtual methods
.method protected getWifiPaniFormatFromSetting(I)Ljava/lang/String;
    .registers 2

    .line 0
    const-string p0, "<PREFIX><NODE_ID>"

    return-object p0
.end method
