.class public Lcom/sec/internal/ims/servicemodules/csh/CshProvider;
.super Landroid/content/ContentProvider;
.source "CshProvider.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.cs"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

.field private final session_columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/CshProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshProvider;->LOG_TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.samsung.rcs.cs"

    const-string v2, "active_sessions"

    const/4 v3, 0x5

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "id"

    const-string/jumbo v1, "state"

    const-string v2, "dir"

    const-string/jumbo v3, "type"

    const-string/jumbo v4, "size"

    const-string v5, "path"

    const-string v6, "progress"

    const-string v7, "res_height"

    const-string v8, "res_width"

    const-string v9, "contact"

    .line 40
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshProvider;->session_columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 55
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 65
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .locals 1

    .line 70
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 77
    sget-object p2, Lcom/sec/internal/ims/servicemodules/csh/CshProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    .line 79
    new-instance p1, Landroid/database/MatrixCursor;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/CshProvider;->session_columns:[Ljava/lang/String;

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 p3, 0x0

    move p4, p3

    .line 80
    :goto_0
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/csh/CshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 81
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/csh/CshProvider;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {p5, p4}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object p5

    .line 82
    invoke-interface {p5}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p5

    .line 83
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshProvider;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 84
    iget-wide v1, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 85
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p3

    iget v1, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 86
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget v2, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 87
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 88
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 89
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 90
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    const/4 v1, 0x6

    iget-wide v2, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataProgress:J

    .line 91
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoWidth:I

    .line 92
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoHeight:I

    .line 93
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object p5, p5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 94
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, v0, v1

    .line 84
    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 107
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
