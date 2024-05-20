.class public enum Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;
.super Ljava/lang/Enum;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "ImMsgTech"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

.field public static final enum CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

.field public static final enum SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech$1;

    const-string v1, "SIMPLE_IM"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech$1;-><init>(Ljava/lang/String;ILcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech$1-IA;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    .line 23
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    const-string v3, "CPM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 16
    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;
    .locals 1

    .line 16
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    return-object v0
.end method
