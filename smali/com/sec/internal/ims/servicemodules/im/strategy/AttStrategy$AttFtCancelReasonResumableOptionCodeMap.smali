.class public Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy$AttFtCancelReasonResumableOptionCodeMap;
.super Ljava/lang/Object;
.source "AttStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttFtCancelReasonResumableOptionCodeMap"
.end annotation


# static fields
.field private static final mAttFtResumableOptionTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MappingTranslator<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;",
            "Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 666
    new-instance v0, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    invoke-direct {v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    .line 668
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 669
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    .line 671
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 672
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 673
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->TIME_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 674
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 676
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_AUTOMATICALLY_RESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    .line 678
    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 681
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 683
    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 685
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 686
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 688
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_NOTIFICATION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 690
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->buildTranslator()Lcom/sec/internal/helper/translate/MappingTranslator;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy$AttFtCancelReasonResumableOptionCodeMap;->mAttFtResumableOptionTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translateCancelReason(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 2

    .line 695
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy$AttFtCancelReasonResumableOptionCodeMap;->mAttFtResumableOptionTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/translate/MappingTranslator;->isTranslationDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/translate/MappingTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object p0

    .line 698
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_AUTOMATICALLY_RESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object p0
.end method
