.class Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;
.super Ljava/lang/Object;
.source "NaptrDnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NaptrRecord"
.end annotation


# static fields
.field private static final MAXNAMESIZE:I = 0xff


# instance fields
.field public final flag:Ljava/lang/String;

.field public final order:I

.field public final preference:I

.field public final regex:Ljava/lang/String;

.field public final replacement:Ljava/lang/String;

.field public final service:Ljava/lang/String;


# direct methods
.method constructor <init>([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8a

    .line 149
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 151
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->order:I

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->preference:I

    .line 153
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->parseNextField(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->flag:Ljava/lang/String;

    .line 154
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->parseNextField(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->service:Ljava/lang/String;

    .line 155
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->parseNextField(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->regex:Ljava/lang/String;

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_79

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 159
    invoke-static {p1, v0, v1}, Lcom/sec/internal/helper/NaptrDnsResolver;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->replacement:Ljava/lang/String;

    if-eqz v0, :cond_71

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xff

    if-gt p0, v1, :cond_56

    .line 169
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p0

    if-nez p0, :cond_4e

    return-void

    .line 170
    :cond_4e
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "Parsing NAPTR record data failed: more bytes than expected!"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_56
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parse name fail, replacement name size is too long: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_71
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "NAPTR: replacement field not expected to be empty!"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_79
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "NAPTR: regex field expected to be empty!"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_81
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_81} :catch_81

    :catch_81
    move-exception p0

    .line 174
    new-instance p1, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v0, "Parsing NAPTR Record data failed with cause"

    invoke-direct {p1, v0, p0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 147
    :cond_8a
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "NAPTR: No record data"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseNextField(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    int-to-short p0, p0

    .line 126
    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1, v0, v1, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 128
    new-instance p0, Ljava/lang/String;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method


# virtual methods
.method public getTypeFromFlagString()I
    .registers 6

    .line 133
    iget-object v0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->flag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_5a

    goto :goto_3c

    :sswitch_10
    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_3c

    :cond_1a
    const/4 v4, 0x3

    goto :goto_3c

    :sswitch_1c
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_3c

    :cond_25
    const/4 v4, 0x2

    goto :goto_3c

    :sswitch_27
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_3c

    :cond_30
    move v4, v2

    goto :goto_3c

    :sswitch_32
    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v4, v3

    :goto_3c
    packed-switch v4, :pswitch_data_6c

    .line 141
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported flag type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrResponse$NaptrRecord;->flag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_58
    return v2

    :pswitch_59
    return v3

    :sswitch_data_5a
    .sparse-switch
        0x41 -> :sswitch_32
        0x53 -> :sswitch_27
        0x61 -> :sswitch_1c
        0x73 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_59
        :pswitch_58
        :pswitch_59
        :pswitch_58
    .end packed-switch
.end method
