.class public Lcom/sec/internal/ims/fcm/FcmHandler;
.super Ljava/lang/Object;
.source "FcmHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;


# static fields
.field public static final API_KEY:Ljava/lang/String; = "AIzaSyC9rGRRr3J16mn510MIjZx0DbCEbwesCbM"

.field public static final FIREBASE_URL:Ljava/lang/String; = "https://fir-e287d.firebaseio.com"

.field private static final LOG_TAG:Ljava/lang/String; = "FcmHandler"

.field public static final MOBILESDK_APP_ID:Ljava/lang/String; = "1:907837128383:android:63ec13a18eb17af2"

.field public static final PROJECT_ID:Ljava/lang/String; = "fir-e287d"

.field public static final PROJECT_NUMBER:Ljava/lang/String; = "907837128383"

.field public static final STORAGE_BUCKET:Ljava/lang/String; = "fir-e287d.appspot.com"


# instance fields
.field private mFcmEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/fcm/FcmHandler;->mFcmEventListeners:Ljava/util/List;

    .line 30
    :try_start_a
    new-instance p0, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {p0}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    const-string v0, "1:907837128383:android:63ec13a18eb17af2"

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p0

    const-string v0, "AIzaSyC9rGRRr3J16mn510MIjZx0DbCEbwesCbM"

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p0

    const-string v0, "https://fir-e287d.firebaseio.com"

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p0

    const-string v0, "907837128383"

    .line 34
    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p0

    const-string v0, "fir-e287d"

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p0

    const-string v0, "fir-e287d.appspot.com"

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/firebase/FirebaseOptions$Builder;->setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object p0

    .line 37
    invoke-static {p1, p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;

    .line 38
    sget-object p0, Lcom/sec/internal/ims/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "FirebaseApp initialization successful"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_41} :catch_42

    goto :goto_5d

    :catch_42
    move-exception p0

    .line 40
    sget-object p1, Lcom/sec/internal/ims/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirebaseApp initialization unsuccessful: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5d
    return-void
.end method


# virtual methods
.method public onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8

    .line 59
    sget-object v0, Lcom/sec/internal/ims/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMessageReceived:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/fcm/FcmHandler;->mFcmEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;

    .line 61
    sget-object v1, Lcom/sec/internal/ims/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageReceived: listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;->onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_d

    :cond_33
    return-void
.end method

.method public onTokenRefresh(Landroid/content/Context;)V
    .registers 6

    .line 68
    sget-object v0, Lcom/sec/internal/ims/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onTokenRefresh:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/fcm/FcmHandler;->mFcmEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;

    .line 70
    sget-object v1, Lcom/sec/internal/ims/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTokenRefresh: listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;->onTokenRefresh(Landroid/content/Context;)V

    goto :goto_d

    :cond_33
    return-void
.end method

.method public registerFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V
    .registers 5

    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/fcm/FcmHandler;->unregisterFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V

    .line 47
    sget-object v0, Lcom/sec/internal/ims/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerFcmEventListener: fcmEventListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/fcm/FcmHandler;->mFcmEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V
    .registers 5

    .line 53
    sget-object v0, Lcom/sec/internal/ims/fcm/FcmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterFcmEventListener: fcmEventListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/fcm/FcmHandler;->mFcmEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
