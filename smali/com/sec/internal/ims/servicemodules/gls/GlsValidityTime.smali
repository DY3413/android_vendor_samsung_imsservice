.class public Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
.super Ljava/lang/Object;
.source "GlsValidityTime.java"


# instance fields
.field private final mTimeZone:I

.field private final mValidityDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mValidityDate:Ljava/util/Date;

    .line 16
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mTimeZone:I

    return-void
.end method


# virtual methods
.method public getTimeZone()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mTimeZone:I

    return p0
.end method

.method public getValidityDate()Ljava/util/Date;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mValidityDate:Ljava/util/Date;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validity DateTime("

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "date="

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mValidityDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time zone="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->mTimeZone:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
