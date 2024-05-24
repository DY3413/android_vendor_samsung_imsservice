.class public Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;
.super Landroid/content/ContentProvider;
.source "RcsUriProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.ims.android.rcsuriprovider"

.field private static final ENABLED_PROJECTION:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "RcsUriProvider"

.field static final N_RCSENABLE_URIS:I = 0x1

.field static mMatcher:Landroid/content/UriMatcher;


# instance fields
.field mContext:Landroid/content/Context;

.field mService:Lcom/sec/ims/options/ICapabilityService;


# direct methods
.method public static synthetic $r8$lambda$M27m3GzgRwCdZoToR5ia0J19oGQ(Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->lambda$onCreate$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 38
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "rcsenableduri"

    const/4 v2, 0x1

    const-string v3, "com.sec.ims.android.rcsuriprovider"

    .line 41
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v0, "sip_uri"

    const-string v1, "is_enabled"

    const-string v2, "_id"

    .line 47
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->ENABLED_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mContext:Landroid/content/Context;

    .line 53
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 1

    .line 61
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->initCapabilityService()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 147
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported for uri:"

    .line 148
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 135
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported for uri:"

    .line 136
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method initCapabilityService()V
    .registers 5

    const-string v0, "RcsUriProvider"

    const-string v1, "Connecting to CapabilityDiscoveryService."

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.CapabilityService"

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;)V

    const/4 p0, 0x1

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, p0, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 153
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported for uri:"

    .line 154
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .registers 3

    const-string v0, "RcsUriProvider"

    const-string v1, "onCreate()"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {v0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ImsFrameworkState;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/os/ImsFrameworkState;->registerForFrameworkState(Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    .line 92
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p2

    .line 93
    sget-object p3, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const-string p4, "RcsUriProvider"

    const/4 p5, 0x1

    if-ne p3, p5, :cond_6d

    const-string p3, "N_RCSENABLE_URIS | Operation for uri: "

    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object p3, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->ENABLED_PROJECTION:[Ljava/lang/String;

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    if-nez p0, :cond_2d

    const-string p0, "Binder is not initialized! Returning empty response"

    .line 100
    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 105
    :cond_2d
    :try_start_2d
    invoke-interface {p0, p2}, Lcom/sec/ims/options/ICapabilityService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-nez p0, :cond_34

    return-object p1

    .line 109
    :cond_34
    array-length p2, p0

    if-nez p2, :cond_3d

    const-string p0, "N_RCSENABLE_URIS: not found."

    .line 110
    invoke-static {p4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 115
    :cond_3d
    array-length p2, p0

    const/4 p3, 0x0

    move p4, p3

    move v0, p5

    :goto_41
    if-ge p4, p2, :cond_6c

    aget-object v1, p0, p4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p3

    invoke-virtual {v1}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    .line 116
    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_64} :catch_68

    add-int/lit8 p4, p4, 0x1

    move v0, v3

    goto :goto_41

    :catch_68
    move-exception p0

    .line 121
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6c
    return-object p1

    .line 127
    :cond_6d
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UNDEFINED CATEGORY! | Operation for uri: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported for uri: "

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 141
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported for uri:"

    .line 142
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
