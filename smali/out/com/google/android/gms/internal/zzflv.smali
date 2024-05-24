.class public final Lcom/google/android/gms/internal/zzflv;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final zzpvy:[I

.field public static final zzpvz:[J

.field public static final zzpwa:[F

.field public static final zzpwb:[D

.field public static final zzpwc:[Z

.field public static final zzpwd:[[B

.field public static final zzpwe:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/zzflv;->zzpvy:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/zzflv;->zzpvz:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/zzflv;->zzpwa:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/zzflv;->zzpwb:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/zzflv;->zzpwc:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/zzflv;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/zzflv;->zzpwd:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/zzflv;->zzpwe:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/zzflj;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzflj;->zzlg(I)Z

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzflj;->zzcxx()I

    move-result v2

    if-ne v2, p1, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzflj;->zzlg(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzflj;->zzap(II)V

    return v1
.end method
