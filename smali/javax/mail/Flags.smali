.class public Ljavax/mail/Flags;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Flags$Flag;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x56a5b06539097bc4L


# instance fields
.field private system_flags:I

.field private user_flags:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags$Flag;)V
    .locals 2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 206
    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Ljavax/mail/Flags;->system_flags:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 449
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 453
    :goto_0
    iget-object p0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    iput-object p0, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 354
    instance-of v0, p1, Ljavax/mail/Flags;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 357
    :cond_0
    check-cast p1, Ljavax/mail/Flags;

    .line 360
    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iget v2, p0, Ljavax/mail/Flags;->system_flags:I

    if-eq v0, v2, :cond_1

    return v1

    .line 364
    :cond_1
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v3, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v3, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_5

    .line 366
    iget-object v3, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v3, :cond_5

    .line 367
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v3, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-ne v0, v3, :cond_5

    .line 368
    iget-object p1, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    .line 370
    :cond_3
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    .line 371
    :cond_4
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_5
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 386
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 387
    iget-object p0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz p0, :cond_1

    .line 388
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p0

    .line 389
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 390
    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method
