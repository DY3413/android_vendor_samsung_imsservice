.class public interface abstract Lcom/sec/internal/ims/servicemodules/im/interfaces/IRcsBigDataProcessor;
.super Ljava/lang/Object;
.source "IRcsBigDataProcessor.java"


# virtual methods
.method public abstract onMessageCancelSent(II)V
.end method

.method public abstract onMessageReceived(ILcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
.end method

.method public abstract onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
.end method

.method public abstract onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
.end method

.method public abstract onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
.end method

.method public abstract onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
.end method
