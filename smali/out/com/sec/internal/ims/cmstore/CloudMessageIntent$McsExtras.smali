.class public Lcom/sec/internal/ims/cmstore/CloudMessageIntent$McsExtras;
.super Ljava/lang/Object;
.source "CloudMessageIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/CloudMessageIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McsExtras"
.end annotation


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final STATUSCODE:Ljava/lang/String; = "code"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
