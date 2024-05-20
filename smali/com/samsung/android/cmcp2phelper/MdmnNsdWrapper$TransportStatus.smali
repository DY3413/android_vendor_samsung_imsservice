.class public final enum Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;
.super Ljava/lang/Enum;
.source "MdmnNsdWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransportStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

.field public static final enum IDLE:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

.field public static final enum STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

.field public static final enum STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->IDLE:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    new-instance v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    const-string v3, "STARTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    new-instance v3, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->$VALUES:[Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;
    .locals 1

    .line 27
    const-class v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->$VALUES:[Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    return-object v0
.end method
