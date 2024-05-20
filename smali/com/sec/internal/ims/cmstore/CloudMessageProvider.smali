.class public Lcom/sec/internal/ims/cmstore/CloudMessageProvider;
.super Landroid/content/ContentProvider;
.source "CloudMessageProvider.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static PROVIDER_NAME:Ljava/lang/String; = null

.field private static final SIM_1:I = 0x0

.field private static final SIM_2:I = 0x1

.field protected static sUriMatcher:Landroid/content/UriMatcher; = null

.field private static final simSlot2:Ljava/lang/String; = "/slot2"


# instance fields
.field protected mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "com.samsung.rcs.cmstore"

    .line 48
    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 57
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "smsmessages/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "mmspdumessage/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "mmsaddrmessages/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "mmspartmessages/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "mmspartmessages_partid/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcschatmessage/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcsftmessage/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcsmessages/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "notification/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "summarytable/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "latestmessage/#"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "allsmsmessages"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "allmmspdumessage"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "useroptinflag"

    const/16 v3, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "smsmessages/slot2/#"

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "mmspdumessage/slot2/#"

    const/16 v3, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "mmsaddrmessages/slot2/#"

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "mmspartmessages/slot2/#"

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "mmspartmessages_partid/slot2/#"

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcschatmessage/slot2/#"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcsftmessage/slot2/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcsmessages/slot2/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcsparticipants/slot2/*"

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcssession/slot2/*"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "notification/slot2/#"

    const/16 v3, 0x35

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "summarytable/slot2/#"

    const/16 v3, 0x2f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcsmessageimdn/slot2/*"

    const/16 v3, 0x37

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingsmsmessages/slot2/*"

    const/16 v3, 0x38

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingmmspdumessage/slot2/*"

    const/16 v3, 0x39

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingrcschatmessage/slot2/*"

    const/16 v3, 0x3a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingrcsftmessage/slot2/*"

    const/16 v3, 0x3b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "latestmessage/slot2/#"

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "allsmsmessages/slot2"

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "allmmspdumessage/slot2"

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "useroptinflag/slot2"

    const/16 v3, 0x40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmmessages/slot2/*"

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmprofile/slot2/*"

    const/16 v3, 0x44

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmgreeting/slot2/*"

    const/16 v3, 0x42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmpin/slot2/*"

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmquota/slot2/*"

    const/16 v3, 0x45

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingvvmmessages/slot2/*"

    const/16 v3, 0x46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "multilinestatus/slot2/*"

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcsparticipants/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcssession/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "rcsmessageimdn/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmmessages/*"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmprofile/*"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmgreeting/*"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmpin/*"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "vvmquota/*"

    const/16 v3, 0x24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingsmsmessages/*"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 221
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingmmspdumessage/*"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingrcschatmessage/*"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingrcsftmessage/*"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "pendingvvmmessages/*"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "multilinestatus/*"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string/jumbo v2, "userdebugflag"

    const/16 v3, 0x63

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "migrate_success"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->PROVIDER_NAME:Ljava/lang/String;

    const-string v2, "ambs_feature_ver"

    const/16 v3, 0x62

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 47
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    return-void
.end method

.method private getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;
    .locals 2

    .line 435
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x29

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 436
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 v0, 0x47

    if-gt p1, v0, :cond_0

    .line 437
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p1, 0x1

    aget-object p0, p0, p1

    goto :goto_0

    .line 439
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method

.method private updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 324
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, "content_uri"

    .line 326
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const-string/jumbo v5, "thumbnail_uri"

    .line 328
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 331
    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 332
    new-instance v6, Landroid/database/MatrixCursor;

    invoke-direct {v6, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 333
    array-length v7, v3

    const/4 v8, 0x2

    if-ne v1, v4, :cond_2

    sub-int/2addr v7, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, -0x1

    .line 340
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_17

    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 345
    :goto_1
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v12

    move v13, v5

    :goto_2
    if-ge v13, v7, :cond_c

    .line 348
    aget-object v14, v3, v13

    .line 349
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 350
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    if-eqz v5, :cond_a

    if-eq v5, v4, :cond_9

    if-eq v5, v8, :cond_8

    const/4 v8, 0x3

    if-eq v5, v8, :cond_4

    const/4 v8, 0x4

    if-eq v5, v8, :cond_3

    .line 377
    invoke-virtual {v12, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 378
    sget-object v8, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Type default: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 371
    :cond_3
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_4

    .line 359
    :cond_4
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v5, "file_path"

    .line 360
    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 361
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v9, v5

    goto :goto_4

    :cond_5
    const-string/jumbo v5, "thumbnail_path"

    .line 362
    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 363
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto :goto_4

    :cond_6
    const-string v5, "_data"

    .line 364
    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 365
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    goto :goto_4

    :cond_7
    const-string v5, "filepath"

    .line 366
    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 367
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 356
    :cond_8
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_4

    .line 353
    :cond_9
    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_4

    .line 374
    :cond_a
    invoke-virtual {v12, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_b
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x2

    goto/16 :goto_2

    .line 382
    :cond_c
    sget-object v5, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateUritoCursor datapath: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " filepath: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " thumbnailpath: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x6

    if-ne v1, v5, :cond_e

    if-eqz v11, :cond_d

    const-string v5, "/MMS_files/"

    .line 386
    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v5, v11, v8}, Lcom/sec/internal/helper/FileUtils;->getUriForFileWithAppPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 389
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_e
    const/16 v5, 0x11

    const-string v8, "/RCS_files/"

    if-eq v1, v5, :cond_14

    const/16 v5, 0x12

    if-ne v1, v5, :cond_f

    goto :goto_7

    :cond_f
    if-eqz v9, :cond_10

    .line 402
    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 403
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v13, 0x0

    invoke-static {v5, v9, v13}, Lcom/sec/internal/helper/FileUtils;->getUriForFileWithAppPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 405
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move v5, v4

    goto :goto_5

    :cond_10
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_11

    .line 411
    invoke-virtual {v12, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_11
    if-eqz v10, :cond_12

    .line 415
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v13, 0x0

    invoke-static {v5, v10, v13}, Lcom/sec/internal/helper/FileUtils;->getUriForFileWithAppPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 418
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move v8, v4

    goto :goto_6

    :cond_12
    const/4 v13, 0x0

    :cond_13
    move v8, v13

    :goto_6
    if-nez v8, :cond_15

    .line 424
    invoke-virtual {v12, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_8

    :cond_14
    :goto_7
    const/4 v13, 0x0

    if-eqz v9, :cond_15

    .line 394
    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9, v4}, Lcom/sec/internal/helper/FileUtils;->getUriForFileWithAppPermission(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_15

    .line 397
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 427
    :cond_15
    :goto_8
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_9

    :cond_16
    move v5, v13

    const/4 v8, 0x2

    goto/16 :goto_1

    :cond_17
    :goto_9
    return-object v6
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 250
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    .line 254
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 257
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x6

    .line 282
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    .line 287
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 277
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    .line 272
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x2

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x1

    .line 262
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->deleteTable(ILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 304
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 3

    .line 310
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v1

    aput-object v1, v0, v2

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->load()V

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v1

    aput-object v1, v0, v2

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->mBufferDB:[Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->load()V

    return v2
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 865
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "URI invalid. Use an id-based URI only."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 872
    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 873
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, -0x1

    if-ne v0, v2, :cond_2

    const-string v0, "_data"

    .line 880
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    const-string v0, "file_path"

    .line 882
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :cond_3
    :goto_1
    if-ltz v3, :cond_4

    .line 884
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 886
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_9

    if-eqz v0, :cond_8

    .line 891
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    .line 893
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "w"

    .line 894
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 p0, 0x20000000

    .line 896
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 898
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 901
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_3
    const-string v0, "r"

    .line 905
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x10000000

    or-int/2addr p0, v0

    :cond_6
    const-string v0, "+"

    .line 906
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/high16 p2, 0x2000000

    or-int/2addr p0, p2

    .line 907
    :cond_7
    invoke-static {p1, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 889
    :cond_8
    :try_start_2
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "File path is null"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 887
    :cond_9
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple items at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 875
    :cond_a
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No entry for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_b

    .line 872
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 463
    sget-object p3, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "query "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object v0

    const/4 p4, 0x0

    .line 470
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_19

    const/16 v3, 0xf

    const/4 v6, 0x1

    if-eq v1, v3, :cond_17

    const/16 v3, 0x35

    if-eq v1, v3, :cond_19

    const/16 v2, 0x62

    const/4 v3, 0x0

    if-eq v1, v2, :cond_15

    const/16 v2, 0x63

    if-eq v1, v2, :cond_13

    const/4 v7, 0x6

    packed-switch v1, :pswitch_data_0

    const/16 v8, 0x11

    packed-switch v1, :pswitch_data_1

    const/4 v2, 0x3

    const/4 v4, 0x2

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    const-string v5, "opt_in_flag"

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    packed-switch v1, :pswitch_data_6

    packed-switch v1, :pswitch_data_7

    goto/16 :goto_7

    :pswitch_0
    :try_start_1
    const-string p0, "OPT_IN_STATUS2"

    .line 741
    invoke-static {p3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 744
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v3

    .line 746
    :goto_0
    new-instance p1, Landroid/database/MatrixCursor;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 747
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v6, v3

    .line 748
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_6

    :pswitch_1
    const-string p0, "OPT_IN_STATUS1"

    .line 717
    invoke-static {p3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 720
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v3

    .line 722
    :goto_2
    new-instance p1, Landroid/database/MatrixCursor;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 723
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v6, v3

    .line 724
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_6

    :pswitch_2
    const-string v4, "_bufferdbid= ?"

    const/16 v2, 0x24

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    .line 603
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_3
    const-string p0, "DATABASE MIGRATE FLAG"

    .line 729
    invoke-static {p3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 732
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMigrateSuccessFlag()Z

    move-result p0

    goto :goto_4

    :cond_4
    move p0, v3

    .line 734
    :goto_4
    new-instance p1, Landroid/database/MatrixCursor;

    const-string p2, "migrate_success"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 735
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    move v6, v3

    .line 736
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_6
    :goto_6
    move-object p0, p1

    goto/16 :goto_b

    .line 684
    :pswitch_4
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 685
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "LASTEST Message DB index = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "MAX(_bufferdbid)"

    .line 686
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    if-eq p1, v6, :cond_8

    if-eq p1, v2, :cond_8

    const/4 p2, 0x4

    if-eq p1, p2, :cond_8

    if-ne p1, v8, :cond_7

    goto :goto_8

    :cond_7
    :goto_7
    move-object p0, p4

    goto/16 :goto_b

    :cond_8
    :goto_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p1

    .line 691
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v6, :cond_9

    .line 693
    :try_start_2
    invoke-direct {p0, p2, v6}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p4

    goto :goto_9

    :catchall_0
    move-exception p0

    move-object p4, p2

    goto/16 :goto_c

    :cond_9
    if-ne p1, v8, :cond_a

    .line 695
    invoke-direct {p0, p2, v8}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    :goto_9
    move-object p0, p4

    move-object p4, p2

    goto/16 :goto_b

    :pswitch_5
    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 679
    :try_start_3
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_6
    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 674
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_7
    const-string/jumbo p1, "syncdirection=? OR syncdirection=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 662
    sget-object p3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 663
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v3

    sget-object p3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 664
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v6

    if-eqz p2, :cond_b

    .line 666
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_b
    move-object v2, p2

    const/16 v1, 0x11

    move-object v3, p1

    move-object v5, p5

    .line 668
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 670
    invoke-direct {p0, p4, v8}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_8
    const-string/jumbo p1, "syncdirection=? OR syncdirection=? OR is_filetransfer=?"

    new-array p3, v2, [Ljava/lang/String;

    .line 647
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 648
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v3

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 649
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v6

    .line 650
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    if-eqz p2, :cond_c

    .line 652
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_c
    move-object v2, p2

    const/4 v1, 0x1

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    .line 654
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 656
    invoke-direct {p0, p4, v6}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_9
    const-string/jumbo p1, "syncdirection=? OR syncdirection=? OR is_filetransfer=?"

    new-array p3, v2, [Ljava/lang/String;

    .line 631
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 632
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v3

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 633
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v6

    .line 634
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v4

    if-eqz p2, :cond_d

    .line 636
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_d
    move-object v2, p2

    const/4 v1, 0x1

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    .line 638
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 640
    invoke-direct {p0, p4, v6}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_a
    const-string/jumbo p0, "syncdirection=? OR syncdirection=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 620
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 621
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 622
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v6

    const/4 v1, 0x4

    move-object v2, p2

    move-object v3, p0

    move-object v5, p5

    .line 623
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_b
    const-string/jumbo p0, "syncdirection=? OR syncdirection=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 610
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->ToSendDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 611
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->UpdatingDevice:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    .line 612
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v6

    const/4 v1, 0x3

    move-object v2, p2

    move-object v3, p0

    move-object v5, p5

    .line 613
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_c
    const-string v4, "linenum= ?"

    const/16 v2, 0x17

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    .line 565
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_d
    const-string v4, "_bufferdbid= ?"

    const/16 v2, 0x14

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    .line 581
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_e
    const-string v4, "_bufferdbid= ?"

    const/16 v2, 0x13

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    .line 597
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_f
    const-string v4, "_bufferdbid= ?"

    if-eqz p2, :cond_e

    .line 588
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_e
    move-object v3, p2

    const/16 v2, 0x12

    move-object v1, p1

    move-object v5, p5

    .line 590
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    const/16 p1, 0x12

    .line 592
    invoke-direct {p0, p4, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_10
    const-string v4, "_bufferdbid= ?"

    if-eqz p2, :cond_f

    .line 572
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_f
    move-object v3, p2

    const/16 v2, 0x11

    move-object v1, p1

    move-object v5, p5

    .line 574
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 576
    invoke-direct {p0, p4, v8}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_11
    const-string v4, "chat_id= ?"

    const/16 v2, 0xa

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    .line 549
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    .line 533
    :pswitch_12
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "RCS_MESSAGE_ID bufferDB = "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    .line 535
    invoke-virtual {v0, v6, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p4

    .line 537
    invoke-direct {p0, p4, v6}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_13
    const-string v4, "_bufferdbid= ?"

    if-eqz p2, :cond_10

    .line 525
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_10
    move-object v3, p2

    const/4 v2, 0x6

    move-object v1, p1

    move-object v5, p5

    .line 527
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 529
    invoke-direct {p0, p4, v7}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_14
    const-string v4, "_bufferdbid= ?"

    const/4 v2, 0x7

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    .line 474
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_15
    const-string v4, "mid= ?"

    if-eqz p2, :cond_11

    .line 509
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_11
    move-object v3, p2

    const/4 v2, 0x6

    move-object v1, p1

    move-object v5, p5

    .line 511
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 513
    invoke-direct {p0, p4, v7}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_16
    const-string v4, "msg_id= ?"

    const/4 v2, 0x5

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    .line 518
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_17
    const-string v4, "_bufferdbid= ?"

    const/4 v2, 0x4

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    .line 502
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_18
    const-string v4, "_bufferdbid= ?"

    const/4 v2, 0x3

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    .line 496
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_19
    const-string v4, "chat_id= ?"

    const/4 v2, 0x2

    move-object v1, p1

    move-object v3, p2

    move-object v5, p5

    .line 490
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_1a
    const-string v4, "_bufferdbid= ?"

    if-eqz p2, :cond_12

    .line 481
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_12
    move-object v3, p2

    const/4 v2, 0x1

    move-object v1, p1

    move-object v5, p5

    .line 483
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 485
    invoke-direct {p0, p4, v6}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_b

    :cond_13
    const-string p0, "USER_DEBUG_FLAG"

    .line 700
    invoke-static {p3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 702
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->initUserDebug()V

    .line 704
    :cond_14
    new-instance p0, Landroid/database/MatrixCursor;

    const-string v0, "AMBS_DEBUG"

    const-string v1, "app_id"

    const-string v2, "cps_host_name"

    const-string v3, "auth_host_name"

    const-string v4, "retry_time"

    const-string v5, "nc_host_name"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 707
    sget-boolean p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 708
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 709
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 710
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 711
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 712
    sget-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_b

    :cond_15
    const-string p0, "QUERY AMBS VERSION "

    .line 752
    invoke-static {p3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result p0

    .line 754
    new-instance p1, Landroid/database/MatrixCursor;

    const-string/jumbo p2, "version_num"

    const-string/jumbo p3, "version_desc"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 755
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p2

    if-eqz p0, :cond_16

    goto :goto_a

    :cond_16
    move v6, v3

    .line 756
    :goto_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    if-eqz p0, :cond_6

    const-string p0, "sbsms"

    .line 758
    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_6

    :cond_17
    :pswitch_1b
    const-string v4, "imdn_message_id= ?"

    if-eqz p2, :cond_18

    .line 556
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_18
    move-object v3, p2

    const/4 v2, 0x1

    move-object v1, p1

    move-object v5, p5

    .line 558
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(Landroid/net/Uri;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p4

    .line 560
    invoke-direct {p0, p4, v6}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->updateUritoCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_b

    .line 541
    :cond_19
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RCS_MESSAGES_IMDN bufferDB = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    .line 543
    invoke-virtual {v0, v2, p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTablewithBufferDbId(IJ)Landroid/database/Cursor;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_b
    if-eqz p4, :cond_1a

    .line 768
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    :cond_1a
    return-object p0

    :catchall_1
    move-exception p0

    :goto_c
    if-eqz p4, :cond_1b

    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 770
    :cond_1b
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1f
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x23
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x29
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x37
        :pswitch_1b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x40
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_2
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 776
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->getSimSlotBuff(Landroid/net/Uri;)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p0

    .line 779
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/16 v1, 0x63

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    const/4 p1, 0x7

    .line 782
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1
    const/4 p1, 0x6

    .line 809
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    const/4 p1, 0x5

    .line 815
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    const/4 p1, 0x4

    .line 803
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_4
    const/4 p1, 0x3

    .line 798
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_5
    const/4 p1, 0x2

    .line 792
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    .line 787
    :pswitch_6
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->updateTable(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    :cond_0
    const-string p0, "AMBS_DEBUG"

    .line 820
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_1

    move p0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 821
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Debug enabled?: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    const-string p0, "app_id"

    .line 823
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cps_host_name"

    .line 824
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "auth_host_name"

    .line 825
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "retry_time"

    .line 826
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "nc_host_name"

    .line 827
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 828
    invoke-static {p0, p3, p1, p2}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setDebugHttps(Z)V

    .line 831
    sput-boolean v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    if-eqz p4, :cond_3

    .line 833
    invoke-static {p4}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->setRetryTimeLine(Ljava/lang/String;)V

    goto :goto_1

    .line 836
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initDefault()V

    .line 837
    sput-boolean v3, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 838
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    .line 839
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setDebugHttps(Z)V

    .line 843
    :cond_3
    :goto_1
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 844
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserDebug()V

    .line 847
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 848
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 849
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetDataReceiver()V

    .line 851
    :cond_5
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 852
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetDataReceiver()V

    :cond_6
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 448
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 449
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 450
    aget-object v2, p1, v1

    const-string v3, "content_uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p1, v1

    const-string/jumbo v3, "thumbnail_uri"

    .line 451
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 452
    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Projection updated, old projection len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " new projection len:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 455
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v0, [Ljava/lang/String;

    .line 457
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
