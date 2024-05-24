.class public Lcom/sec/sve/generalevent/ParsedVcidEvent;
.super Lcom/sec/sve/generalevent/VcidEvent;
.source "ParsedVcidEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;
    }
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mFileUrl:Ljava/lang/String;

.field private final mServiceType:Ljava/lang/String;

.field private final mSessionId:I

.field private final mSubId:I


# direct methods
.method public constructor <init>(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Lcom/sec/sve/generalevent/VcidEvent;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmEvent(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/VcidEvent;->mEvent:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmAction(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mAction:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmFileUrl(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mFileUrl:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmServiceType(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mServiceType:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmSessionId(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)I

    move-result v0

    iput v0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mSessionId:I

    .line 18
    invoke-static {p1}, Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;->-$$Nest$fgetmSubId(Lcom/sec/sve/generalevent/ParsedVcidEvent$Parser;)I

    move-result p1

    iput p1, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mSubId:I

    return-void
.end method


# virtual methods
.method public getFileUrl()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mFileUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceType()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mServiceType:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionId()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mSessionId:I

    return p0
.end method

.method public getSubId()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mSubId:I

    return p0
.end method

.method public isSetVCIDEngineEvent()Z
    .registers 2

    const-string v0, "SetVCIDEngine"

    .line 30
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isStartEvent()Z
    .registers 2

    const-string/jumbo v0, "start"

    .line 22
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isStopEvent()Z
    .registers 2

    const-string/jumbo v0, "stop"

    .line 26
    iget-object p0, p0, Lcom/sec/sve/generalevent/ParsedVcidEvent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
