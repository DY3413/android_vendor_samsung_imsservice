.class public Lorg/xbill/DNS/APLRecord$Element;
.super Ljava/lang/Object;
.source "APLRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/APLRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# instance fields
.field public final address:Ljava/lang/Object;

.field public final family:I

.field public final negative:Z

.field public final prefixLength:I


# direct methods
.method private constructor <init>(IZLjava/lang/Object;I)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    .line 33
    iput-boolean p2, p0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    .line 34
    iput-object p3, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    .line 35
    iput p4, p0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    .line 36
    invoke-static {p1, p4}, Lorg/xbill/DNS/APLRecord;->access$000(II)Z

    move-result p0

    if-eqz p0, :cond_12

    return-void

    .line 37
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid prefix length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(IZLjava/lang/Object;ILorg/xbill/DNS/APLRecord$1;)V
    .registers 6

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/APLRecord$Element;-><init>(IZLjava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(ZLjava/net/InetAddress;I)V
    .registers 5

    .line 51
    invoke-static {p2}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/xbill/DNS/APLRecord$Element;-><init>(IZLjava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 73
    instance-of v1, p1, Lorg/xbill/DNS/APLRecord$Element;

    if-nez v1, :cond_8

    goto :goto_27

    .line 75
    :cond_8
    check-cast p1, Lorg/xbill/DNS/APLRecord$Element;

    .line 76
    iget v1, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    iget v2, p1, Lorg/xbill/DNS/APLRecord$Element;->family:I

    if-ne v1, v2, :cond_27

    iget-boolean v1, p0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    iget-boolean v2, p1, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    if-ne v1, v2, :cond_27

    iget v1, p0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    iget v2, p1, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    if-ne v1, v2, :cond_27

    iget-object p0, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    iget-object p1, p1, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 v0, 0x1

    :cond_27
    :goto_27
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 84
    iget-object v0, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    add-int/2addr v0, v1

    iget-boolean p0, p0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    iget-boolean v1, p0, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    if-eqz v1, :cond_e

    const-string v1, "!"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_e
    iget v1, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ":"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    iget v1, p0, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    goto :goto_2d

    .line 65
    :cond_21
    iget-object v1, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 63
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_38
    const-string v1, "/"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget p0, p0, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
