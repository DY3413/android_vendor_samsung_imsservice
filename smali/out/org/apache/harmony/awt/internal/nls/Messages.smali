.class public Lorg/apache/harmony/awt/internal/nls/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# static fields
.field private static bundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 235
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "org.apache.harmony.awt.internal.nls.messages"

    invoke-static {v0, v1}, Lorg/apache/harmony/awt/internal/nls/Messages;->setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 11

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 163
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    array-length v1, p1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    .line 165
    :goto_12
    array-length v5, p1

    if-lt v4, v5, :cond_a3

    const/16 v5, 0x7b

    .line 172
    :goto_17
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-gez p1, :cond_33

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v3, p1, :cond_2e

    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    if-eqz p1, :cond_4f

    add-int/lit8 v4, p1, -0x1

    .line 174
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_4f

    const/4 v6, 0x1

    if-eq p1, v6, :cond_49

    .line 177
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_49
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_66

    .line 182
    :cond_4f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-le p1, v4, :cond_68

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :goto_66
    move v3, p1

    goto :goto_17

    :cond_68
    add-int/lit8 v4, p1, 0x1

    .line 187
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    int-to-byte v6, v6

    if-ltz v6, :cond_99

    add-int/lit8 v7, p1, 0x2

    .line 189
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7d

    if-eq v7, v8, :cond_82

    goto :goto_99

    .line 195
    :cond_82
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v6, v1, :cond_91

    const-string v3, "<missing argument>"

    .line 197
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_96

    .line 199
    :cond_91
    aget-object v3, v2, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_96
    add-int/lit8 p1, p1, 0x3

    goto :goto_66

    .line 191
    :cond_99
    :goto_99
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    goto/16 :goto_17

    .line 166
    :cond_a3
    aget-object v5, p1, v4

    if-nez v5, :cond_ac

    const-string v5, "<null>"

    .line 167
    aput-object v5, v2, v4

    goto :goto_b2

    .line 169
    :cond_ac
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    :goto_b2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 60
    sget-object v0, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_5

    return-object p0

    .line 63
    :cond_5
    :try_start_5
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    .line 65
    :catch_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 79
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 135
    sget-object v0, Lorg/apache/harmony/awt/internal/nls/Messages;->bundle:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_8

    .line 137
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_8} :catch_8

    .line 142
    :catch_8
    :cond_8
    invoke-static {p0, p1}, Lorg/apache/harmony/awt/internal/nls/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
    .registers 4

    const/4 v0, 0x0

    .line 221
    :try_start_1
    new-instance v1, Lorg/apache/harmony/awt/internal/nls/Messages$1;

    invoke-direct {v1, p1, p0, v0}, Lorg/apache/harmony/awt/internal/nls/Messages$1;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ResourceBundle;
    :try_end_c
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    return-object v0
.end method
