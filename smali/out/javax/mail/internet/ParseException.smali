.class public Ljavax/mail/internet/ParseException;
.super Ljavax/mail/MessagingException;
.source "ParseException.java"


# static fields
.field private static final serialVersionUID:J = 0x6a2a3a783fd59869L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    return-void
.end method