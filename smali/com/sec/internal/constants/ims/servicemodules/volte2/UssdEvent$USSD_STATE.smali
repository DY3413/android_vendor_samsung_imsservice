.class public final enum Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
.super Ljava/lang/Enum;
.source "UssdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "USSD_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field public static final enum NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field public static final enum USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field public static final enum USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field public static final enum USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 15
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    const-string v3, "USSD_INDICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_INDICATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 16
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    const-string v5, "USSD_RESPONSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 17
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    const-string v7, "USSD_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->USSD_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 13
    sput-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    .locals 1

    .line 13
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    .locals 1

    .line 13
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-object v0
.end method
