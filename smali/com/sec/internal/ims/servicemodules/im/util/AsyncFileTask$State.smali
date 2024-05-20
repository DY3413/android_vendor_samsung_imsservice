.class public final enum Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;
.super Ljava/lang/Enum;
.source "AsyncFileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

.field public static final enum FINISHED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

.field public static final enum NOT_STARTED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

.field public static final enum STARTED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->NOT_STARTED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    .line 35
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->STARTED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    .line 36
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->FINISHED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 33
    sput-object v5, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;
    .locals 1

    .line 33
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->$VALUES:[Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    return-object v0
.end method
