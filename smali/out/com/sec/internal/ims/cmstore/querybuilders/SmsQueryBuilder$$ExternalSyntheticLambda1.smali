.class public final synthetic Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/querybuilders/SmsQueryBuilder;->$r8$lambda$Yn34Q9ZcfEP3kZSFpdfoEafmg6k(Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method
