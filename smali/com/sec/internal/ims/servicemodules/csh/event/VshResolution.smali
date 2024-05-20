.class public final enum Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;
.super Ljava/lang/Enum;
.source "VshResolution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum CIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum CIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum QCIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum QCIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum QVGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum QVGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum VGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

.field public static final enum VGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->NONE:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 22
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v3, "QCIF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 23
    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v5, "QVGA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 24
    new-instance v5, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v7, "VGA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 25
    new-instance v7, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v9, "CIF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 26
    new-instance v9, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v11, "QCIF_PORTRAIT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 27
    new-instance v11, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v13, "QVGA_PORTRAIT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 28
    new-instance v13, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v15, "VGA_PORTRAIT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    .line 29
    new-instance v15, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const-string v14, "CIF_PORTRAIT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 20
    sput-object v14, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object v0
.end method
