.class public Lcom/sec/internal/ims/servicemodules/csh/ResolutionTranslator;
.super Ljava/lang/Object;
.source "ResolutionTranslator.java"


# static fields
.field private static final CIF_HEIGHT:I = 0x120

.field private static final CIF_WIDTH:I = 0x160

.field private static final QCIF_HEIGHT:I = 0x90

.field private static final QCIF_WIDTH:I = 0xb0

.field private static final QVGA_HEIGHT:I = 0xf0

.field private static final QVGA_WIDTH:I = 0x140

.field private static final VGA_HEIGHT:I = 0x1e0

.field private static final VGA_WIDTH:I = 0x280

.field private static final translate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/ResolutionTranslator;->translate:Ljava/util/HashMap;

    .line 31
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v4, 0x160

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v4, v3, v5

    const/16 v7, 0x120

    .line 32
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v3, v8

    .line 31
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    new-array v3, v2, [Ljava/lang/Integer;

    aput-object v7, v3, v5

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v4, 0xb0

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v7, 0x90

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v8

    .line 37
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    new-array v3, v2, [Ljava/lang/Integer;

    aput-object v7, v3, v5

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v4, 0x280

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v7, 0x1e0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v8

    .line 43
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    new-array v3, v2, [Ljava/lang/Integer;

    aput-object v7, v3, v5

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v4, 0x140

    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v7, 0xf0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v8

    .line 49
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    new-array v3, v2, [Ljava/lang/Integer;

    aput-object v7, v3, v5

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->NONE:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v6, v2, v5

    aput-object v6, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeight(Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;)I
    .locals 1

    .line 65
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ResolutionTranslator;->translate:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getWidth(Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;)I
    .locals 1

    .line 61
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ResolutionTranslator;->translate:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Integer;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
