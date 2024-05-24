.class public final enum Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;
.super Ljava/lang/Enum;
.source "CallConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IDC_ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_RECEIVE_END_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_RECEIVE_END_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_RECEIVE_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_RECEIVE_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_RECEIVE_MODIFY_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_RECEIVE_MODIFY_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_SEND_END_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_SEND_END_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_SEND_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_SEND_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_SEND_MODIFY_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum ADC_SEND_MODIFY_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum BDC_RECEIVE_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum BDC_RECEIVE_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum BDC_SEND_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

.field public static final enum BDC_SEND_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;


# instance fields
.field private mType:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;
    .registers 16

    .line 33
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->BDC_SEND_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->BDC_RECEIVE_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->BDC_SEND_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->BDC_RECEIVE_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_END_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_END_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_END_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_END_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_MODIFY_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_MODIFY_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_MODIFY_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_MODIFY_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    filled-new-array/range {v0 .. v15}, [Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "BDC_SEND_INITIAL_OFFER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->BDC_SEND_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 35
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "BDC_RECEIVE_INITIAL_OFFER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->BDC_RECEIVE_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 36
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "BDC_SEND_INITIAL_ANSWER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->BDC_SEND_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 37
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "BDC_RECEIVE_INITIAL_ANSWER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->BDC_RECEIVE_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 38
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_SEND_INITIAL_OFFER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 39
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_RECEIVE_INITIAL_OFFER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_INITIAL_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 40
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_SEND_INITIAL_ANSWER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 41
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_RECEIVE_INITIAL_ANSWER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_INITIAL_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 42
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_SEND_END_OFFER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_END_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 43
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_RECEIVE_END_OFFER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_END_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 44
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_SEND_END_ANSWER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_END_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 45
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_RECEIVE_END_ANSWER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_END_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 46
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_SEND_MODIFY_OFFER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_MODIFY_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 47
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_RECEIVE_MODIFY_OFFER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_MODIFY_OFFER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 48
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_SEND_MODIFY_ANSWER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_SEND_MODIFY_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 49
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    const-string v1, "ADC_RECEIVE_MODIFY_ANSWER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->ADC_RECEIVE_MODIFY_ANSWER:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    .line 33
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->$values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->mType:I

    return-void
.end method

.method public static from(I)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;
    .registers 6

    .line 58
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 59
    iget v4, v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->mType:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 63
    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;
    .registers 2

    .line 33
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;
    .registers 1

    .line 33
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$IDC_ACTION;

    return-object v0
.end method
