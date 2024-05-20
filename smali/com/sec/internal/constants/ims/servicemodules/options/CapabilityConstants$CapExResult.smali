.class public final enum Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
.super Ljava/lang/Enum;
.source "CapabilityConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CapExResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum POLLING_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

.field public static final enum USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 6
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 7
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v3, "POLLING_SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->POLLING_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 8
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v5, "FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 9
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v7, "USER_NOT_FOUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 10
    new-instance v7, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v9, "DOES_NOT_EXIST_ANYWHERE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 11
    new-instance v9, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v11, "USER_UNAVAILABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 12
    new-instance v11, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v13, "FORBIDDEN_403"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 13
    new-instance v13, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v15, "REQUEST_TIMED_OUT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 14
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v14, "INVALID_DATA"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 15
    new-instance v14, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v12, "NETWORK_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 16
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v10, "USER_AVAILABLE_OFFLINE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 17
    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v8, "UNCLASSIFIED_ERROR"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 18
    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const-string v6, "USER_NOT_REGISTERED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 5
    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .locals 1

    .line 5
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .locals 1

    .line 5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object v0
.end method


# virtual methods
.method public varargs isOneOf([Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)Z
    .locals 4

    .line 21
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
