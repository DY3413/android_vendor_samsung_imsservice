.class public final enum Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;
.super Ljava/lang/Enum;
.source "ImSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ChatFallbackMech"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

.field public static final enum MESSAGE_REVOCATION:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

.field public static final enum NETWORK_INTERWORKING:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 2662
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NONE:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2663
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    const-string v3, "MESSAGE_REVOCATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->MESSAGE_REVOCATION:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    .line 2664
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    const-string v5, "NETWORK_INTERWORKING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->NETWORK_INTERWORKING:Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2661
    sput-object v5, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2661
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;
    .locals 1

    .line 2661
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;
    .locals 1

    .line 2661
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/ImSession$ChatFallbackMech;

    return-object v0
.end method
