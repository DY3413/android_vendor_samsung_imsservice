.class public Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
.super Ljava/lang/Object;
.source "BuiltVcidEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/generalevent/BuiltVcidEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private final mBundle:Landroid/os/Bundle;

.field private final mEvent:Ljava/lang/String;

.field private mFileUrl:Ljava/lang/String;

.field private mServiceType:Ljava/lang/String;

.field private mSessionId:I

.field private mSubId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBundle(Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;)Landroid/os/Bundle;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEvent(Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mEvent:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSessionId:I

    .line 25
    iput v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSubId:I

    const-string v0, "VCID"

    .line 28
    iput-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mEvent:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/sve/generalevent/BuiltVcidEvent;
    .registers 5

    .line 33
    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "action"

    iget-object v2, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_11
    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mFileUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "fileURL"

    iget-object v2, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mServiceType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "serviceType"

    iget-object v2, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mServiceType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_34
    iget v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSessionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    iget-object v2, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "sessionId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    :cond_41
    iget v0, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSubId:I

    if-eq v0, v1, :cond_4d

    iget-object v1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "subId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    :cond_4d
    new-instance v0, Lcom/sec/sve/generalevent/BuiltVcidEvent;

    invoke-direct {v0, p0}, Lcom/sec/sve/generalevent/BuiltVcidEvent;-><init>(Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setFileUrl(Ljava/lang/String;)Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mFileUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceType(Ljava/lang/String;)Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mServiceType:Ljava/lang/String;

    return-object p0
.end method

.method public setSessionId(I)Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
    .registers 2

    .line 57
    iput p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSessionId:I

    return-object p0
.end method

.method public setSubId(I)Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;
    .registers 2

    .line 62
    iput p1, p0, Lcom/sec/sve/generalevent/BuiltVcidEvent$Builder;->mSubId:I

    return-object p0
.end method
