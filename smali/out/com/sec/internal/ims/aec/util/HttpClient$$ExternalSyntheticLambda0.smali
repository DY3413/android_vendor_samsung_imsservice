.class public final synthetic Lcom/sec/internal/ims/aec/util/HttpClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/aec/util/HttpClient;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/aec/util/HttpClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/aec/util/HttpClient;

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/aec/util/HttpClient;->$r8$lambda$dFCoz81INO6caYVheGQukr20vQw(Lcom/sec/internal/ims/aec/util/HttpClient;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method
