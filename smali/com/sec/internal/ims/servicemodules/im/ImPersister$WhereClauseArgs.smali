.class Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;
.super Ljava/lang/Object;
.source "ImPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/im/ImPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WhereClauseArgs"
.end annotation


# instance fields
.field private final mWhereArgs:[Ljava/lang/String;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1527
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1522
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereClause:Ljava/lang/String;

    .line 1523
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereArgs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getWhereArgs()[Ljava/lang/String;
    .locals 0

    .line 1535
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereArgs:[Ljava/lang/String;

    return-object p0
.end method

.method getWhereClause()Ljava/lang/String;
    .locals 0

    .line 1531
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImPersister$WhereClauseArgs;->mWhereClause:Ljava/lang/String;

    return-object p0
.end method
