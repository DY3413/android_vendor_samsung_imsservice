.class public final Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneRequests;
.super Ljava/lang/Object;
.source "SoftphoneContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftphoneRequests"
.end annotation


# static fields
.field public static final ADD_E911_ADDRESS:I = 0x7

.field public static final GET_CALL_FORWARDING_INFO:I = 0x9

.field public static final GET_CALL_WAITING_INFO:I = 0x8

.field public static final OBTAIN_ACCESS_TOKEN:I = 0x0

.field public static final OBTAIN_IMS_IDENTIFIERS:I = 0x4

.field public static final OBTAIN_PD_COOKIES:I = 0x10

.field public static final OBTAIN_TERMS_CONDITIONS:I = 0x2

.field public static final PROVISION_ACCOUNT:I = 0x3

.field public static final REFRESH_TOKEN:I = 0xf

.field public static final RELEASE_IMS_IDENTIFIERS:I = 0x5

.field public static final REQUEST_AKA_CHALLENGE:I = 0x13

.field public static final RESERVE_IMS_IDENTIFIERS:I = 0x1

.field public static final REVOKE_ACCESS_TOKEN:I = 0xc

.field public static final REVOKE_REFRESH_TOKEN:I = 0xd

.field public static final REVOKE_TOKEN:I = 0x12

.field public static final SET_CALL_FORWARDING_INFO:I = 0xb

.field public static final SET_CALL_WAITING_INFO:I = 0xa

.field public static final TRY_DEREGISTER:I = 0x11

.field public static final TRY_REGISTER:I = 0xe

.field public static final VALIDATE_E911_ADDRESS:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
