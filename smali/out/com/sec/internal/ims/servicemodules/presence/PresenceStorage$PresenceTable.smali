.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage$PresenceTable;
.super Ljava/lang/Object;
.source "PresenceStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresenceTable"
.end annotation


# static fields
.field static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field static final PHONE_ID:Ljava/lang/String; = "phone_id"

.field static final TABLE_NAME:Ljava/lang/String; = "presence"

.field static final TEL_URI:Ljava/lang/String; = "tel_uri"

.field static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field static final URI:Ljava/lang/String; = "uri"

.field static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
