.class Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;
.super Landroid/database/ContentObserver;
.source "RcsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RcsDbSessionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;Landroid/os/Handler;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    .line 761
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 7

    const-string p1, "icon_timestamp"

    const-string v0, "icon_participant"

    const-string v1, "icon_path"

    .line 766
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 767
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RcsDbSessionObserver chatId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 770
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->querySessionUsingChatId(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 771
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 772
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 773
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 774
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 775
    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-virtual {v2, p1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$RcsDbSessionObserver;->this$0:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsSchedulerHelper;->mBufferDbQuery:Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;

    invoke-virtual {p0, p2, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/RcsQueryBuilder;->updateSessionBufferDb(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 770
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 780
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method
