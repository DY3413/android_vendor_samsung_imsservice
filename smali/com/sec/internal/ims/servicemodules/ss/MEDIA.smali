.class final enum Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
.super Ljava/lang/Enum;
.source "UtConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/ss/MEDIA;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

.field public static final enum ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

.field public static final enum AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

.field public static final enum VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 70
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 71
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 72
    new-instance v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 69
    sput-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->$VALUES:[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 1

    .line 69
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 1

    .line 69
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->$VALUES:[Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object v0
.end method
