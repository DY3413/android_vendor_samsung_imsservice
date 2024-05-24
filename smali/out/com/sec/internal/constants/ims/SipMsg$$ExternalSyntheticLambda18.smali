.class public final synthetic Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/SipMsg;->$r8$lambda$WU9rsh_7OmcVJ1dE66qTaZfRE04(Lcom/sec/internal/constants/ims/SipMsg$StatusLine;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
