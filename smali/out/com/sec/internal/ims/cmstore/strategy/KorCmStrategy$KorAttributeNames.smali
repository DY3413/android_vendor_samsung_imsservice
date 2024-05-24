.class public Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy$KorAttributeNames;
.super Lcom/sec/internal/constants/ims/cmstore/data/AttributeNames;
.source "KorCmStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KorAttributeNames"
.end annotation


# static fields
.field public static conversation_id:Ljava/lang/String; = "Conversation-ID"

.field public static extended_rcs:Ljava/lang/String; = "ExtendedRCS"

.field public static p_asserted_service:Ljava/lang/String; = "P-Asserted-Service"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 540
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/cmstore/data/AttributeNames;-><init>()V

    return-void
.end method
