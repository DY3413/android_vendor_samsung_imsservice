.class public Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract$ApplicationTypes;
.super Ljava/lang/Object;
.source "CloudMessageProviderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/cmstore/CloudMessageProviderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationTypes"
.end annotation


# static fields
.field public static final MSGDATA:Ljava/lang/String; = "MessageApp"

.field public static final RCSDATA:Ljava/lang/String; = "RCSDATA"

.field public static final VVMDATA:Ljava/lang/String; = "VVMDATA"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
