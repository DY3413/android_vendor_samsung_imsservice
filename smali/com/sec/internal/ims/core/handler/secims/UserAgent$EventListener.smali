.class public Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;
.super Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 2161
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactActivated(I)V
    .locals 3

    .line 2343
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactActivated: handle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2344
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onContactActivated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V

    :cond_0
    return-void
.end method

.method public onDeregistered(ILcom/sec/ims/util/SipError;IZ)V
    .locals 3

    .line 2265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " retryAfter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pcscfGoneDeregi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2268
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    .line 2273
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V

    .line 2274
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmRetryAfter(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V

    .line 2275
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1, p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmPcscfGoneDeregi(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Z)V

    .line 2276
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onISIMAuthRequested(ILjava/lang/String;I)V
    .locals 3

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onISIMAuthRequested: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nonce "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2169
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onISIMAuthRequested: handle mismatch. mHandle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " handle "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserAgent"

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 2174
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    .line 2176
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmSimManager(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2177
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmSimManager(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getImpi()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    invoke-interface {p3, p2, v0, p1, p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->requestSoftphoneAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    goto :goto_0

    .line 2179
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmSimManager(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public onRefreshRegNotification(I)V
    .locals 1

    .line 2336
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2337
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRefreshRegNotification(I)V

    :cond_0
    return-void
.end method

.method public onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2352
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegEventContactUri: handle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2353
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2354
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2355
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2357
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2358
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v3

    move v4, p1

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onRegImpuNotification(ILjava/lang/String;)V
    .locals 3

    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegImpuNotification: handle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 2322
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmSimManager(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p1

    .line 2323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.REGISTERED_IMPU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "phoneid"

    .line 2324
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "impu"

    .line 2325
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2326
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onRegInfoNotification(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V
    .locals 1

    .line 2294
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 2298
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 p1, 0x65

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onRegistered(ILjava/util/List;Ljava/util/List;Lcom/sec/ims/util/SipError;IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/util/SipError;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegistered: handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ecmpMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " serviceList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2189
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 2191
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    .line 2195
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 2196
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1, p4}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2198
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UserAgent["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRegistered: Empty IRS. deregister."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deregisterInternal(Z)V

    .line 2200
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2201
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->MISSING_P_ASSOCIATED_URI:Lcom/sec/ims/util/SipError;

    const/4 p3, 0x2

    invoke-interface {p1, p0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRegistrationError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;I)V

    :cond_2
    return-void

    .line 2207
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1, p7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmRegisterSipResponse(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;)V

    .line 2209
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImpuList(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 2210
    :try_start_0
    iget-object p7, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImpuList(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;

    move-result-object p7

    invoke-interface {p7}, Ljava/util/List;->clear()V

    .line 2211
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/String;

    .line 2212
    invoke-static {p7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p7

    if-eqz p7, :cond_4

    .line 2214
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImpuList(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/sec/ims/util/NameAddr;

    invoke-direct {v3, p7}, Lcom/sec/ims/util/NameAddr;-><init>(Lcom/sec/ims/util/ImsUri;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2217
    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2219
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1, p6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmEcmpMode(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V

    .line 2220
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1, p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V

    .line 2223
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p1

    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object p3, p3, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    const-string p4, "Debug_config"

    const-string p6, "fake_reg_response"

    const-string p7, ""

    invoke-static {p1, p3, p4, p6, p7}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    if-eqz v2, :cond_8

    .line 2230
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "UserAgent"

    .line 2231
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "!!!sip response is replaced to fake : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x193

    if-ne v2, p1, :cond_6

    .line 2233
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object p3, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V

    goto :goto_1

    .line 2235
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    new-instance p3, Lcom/sec/ims/util/SipError;

    const-string p4, ""

    invoke-direct {p3, v2, p4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fputmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V

    goto :goto_1

    .line 2238
    :cond_7
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string p3, "fake_reg_response"

    const-string p4, ""

    .line 2239
    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p3

    iget-object p4, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object p4, p4, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    const-string p6, "Debug_config"

    invoke-static {p3, p4, p6, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->put(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2244
    :cond_8
    :goto_1
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK_SMC:Lcom/sec/ims/util/SipError;

    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    .line 2252
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2253
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/util/SipError;

    move-result-object p3

    invoke-interface {p1, p2, p3, p5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRegistrationError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;I)V

    .line 2256
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2258
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 p1, 0x384

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_3

    .line 2245
    :cond_b
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmNotifyServiceList(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2247
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmImsProfile(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_c

    if-lez p5, :cond_c

    .line 2248
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    add-int/lit8 p5, p5, 0x3

    int-to-long p2, p5

    const-wide/16 p4, 0x3e8

    mul-long/2addr p2, p4

    invoke-virtual {p1, v1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    .line 2250
    :cond_c
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_d
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    .line 2217
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onSubscribed(ILcom/sec/ims/util/SipError;)V
    .locals 3

    .line 2281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribed: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 2287
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2288
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onSubscribeError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V

    :cond_1
    return-void
.end method

.method public onUpdatePani()V
    .locals 1

    .line 2330
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onUpdatePani(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    :cond_0
    return-void
.end method

.method public onUpdateRouteTableRequested(IILjava/lang/String;)V
    .locals 4

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onUpdateRouteTableRequested:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2307
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onUpdateRouteTableRequested: handle mismatch. mHandle "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->-$$Nest$fgetmHandle(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " handle "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2312
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 p1, 0x66

    const/4 v0, 0x0

    .line 2313
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2312
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
