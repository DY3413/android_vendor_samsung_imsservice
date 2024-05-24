.class public Lcom/sec/internal/constants/ims/ImsConstants$CscParserConstants;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/ImsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CscParserConstants"
.end annotation


# static fields
.field public static final ENABLE_IMS:Ljava/lang/String; = "EnableIMS"

.field public static final ENABLE_RCS:Ljava/lang/String; = "EnableRCS"

.field public static final ENABLE_RCS_CHAT_SERVICE:Ljava/lang/String; = "EnableRCSchat"

.field public static final ENABLE_VOLTE:Ljava/lang/String; = "EnableVoLTE"

.field public static final SUPPORT_VOWIFI:Ljava/lang/String; = "EnableVoiceoverWIFI"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
