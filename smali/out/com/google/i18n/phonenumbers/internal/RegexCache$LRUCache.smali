.class Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/internal/RegexCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->size:I

    .line 58
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;

    mul-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x3

    const/4 v1, 0x1

    add-int/2addr p1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;-><init>(Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;IFZ)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;)I
    .registers 1

    .line 49
    iget p0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->size:I

    return p0
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 72
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
