.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$McsActions;
.super Ljava/lang/Object;
.source "McsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/McsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "McsActions"
.end annotation


# static fields
.field public static final INTENT_ACCESS_TOKEN_VALIDITY_TIMEOUT:Ljava/lang/String; = "com.sec.imsservice.cmstore.mcs.action.ACCESS_TOKEN_VALIDITY_TIMEOUT"

.field public static final INTENT_OTP_RESPONSE_TIMEOUT:Ljava/lang/String; = "com.sec.imsservice.cmstore.mcs.action.OTP_RESPONSE_TIMEOUT"

.field public static final INTENT_REFRESH_TOKEN_VALIDITY_TIMEOUT:Ljava/lang/String; = "com.sec.imsservice.cmstore.mcs.action.REFRESH_TOKEN_VALIDITY_TIMEOUT"

.field public static final INTENT_REGISTRATION_CODE_VALIDITY_TIMEOUT:Ljava/lang/String; = "com.sec.imsservice.cmstore.mcs.action.REGISTRATION_CODE_VALIDITY_TIMEOUT"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
