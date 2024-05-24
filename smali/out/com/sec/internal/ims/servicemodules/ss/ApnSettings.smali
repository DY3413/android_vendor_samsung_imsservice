.class public Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;
.super Ljava/lang/Object;
.source "ApnSettings.java"


# static fields
.field private static final APN_PROJECTION:[Ljava/lang/String;

.field private static final COLUMN_PORT:I = 0x4

.field private static final COLUMN_PROXY:I = 0x3

.field private static final COLUMN_TYPE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ApnSettings"


# instance fields
.field private final mDebugText:Ljava/lang/String;

.field private final mProxyAddress:Ljava/lang/String;

.field private final mProxyPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string/jumbo v0, "proxy"

    const-string v1, "port"

    const-string/jumbo v2, "type"

    const-string v3, "name"

    const-string v4, "apn"

    .line 41
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->APN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mProxyAddress:Ljava/lang/String;

    .line 125
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mProxyPort:I

    .line 126
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mDebugText:Ljava/lang/String;

    return-void
.end method

.method private static getDebugText(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APN ["

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 104
    :goto_b
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 105
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-lez v1, :cond_20

    const/16 v4, 0x20

    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    :cond_20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_34
    const-string p0, "]"

    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, ","

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v0, :cond_2c

    aget-object v4, p0, v3

    .line 143
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2b
    :goto_2b
    return v1

    :cond_2c
    return v2
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;
    .registers 14

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading APN using name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnSettings"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->trimWithNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    .line 66
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "apn=?"

    move-object v8, p1

    move-object v7, v0

    goto :goto_2c

    :cond_2a
    move-object v7, v2

    move-object v8, v7

    .line 71
    :goto_2c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object p1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/subId/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 72
    invoke-static {p1, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, p0

    .line 69
    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_af

    .line 81
    :cond_51
    :try_start_51
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 p1, 0x0

    .line 83
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_51

    const/4 p1, 0x3

    .line 84
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->trimWithNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Lcom/android/net/module/util/Inet4AddressUtils;->trimAddressZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    .line 86
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->trimWithNullCheck(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_a5

    .line 88
    :try_start_78
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_7c} :catch_7d
    .catchall {:try_start_78 .. :try_end_7c} :catchall_a5

    goto :goto_98

    .line 90
    :catch_7d
    :try_start_7d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid port "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", use 80"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x50

    .line 92
    :goto_98
    new-instance p3, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->getDebugText(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_7d .. :try_end_a1} :catchall_a5

    .line 96
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p3

    :catchall_a5
    move-exception p1

    .line 69
    :try_start_a6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    goto :goto_ae

    :catchall_aa
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ae
    throw p1

    :cond_af
    if-eqz p0, :cond_b4

    .line 96
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_b4
    return-object v2
.end method

.method private static trimWithNullCheck(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method


# virtual methods
.method public getProxyAddress()Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyPort()I
    .registers 1

    .line 134
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mProxyPort:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->mDebugText:Ljava/lang/String;

    return-object p0
.end method
