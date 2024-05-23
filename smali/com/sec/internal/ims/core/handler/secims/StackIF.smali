.class public Lcom/sec/internal/ims/core/handler/secims/StackIF;
.super Ljava/lang/Object;
.source "StackIF.java"

# interfaces
.implements Lcom/sec/internal/ims/core/handler/secims/IStackIF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;,
        Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;
    }
.end annotation


# static fields
.field private static final FROM_PATTERN:Ljava/util/regex/Pattern;

.field private static final GROUPCHAT_ALIAS_PATTERN:Ljava/util/regex/Pattern;

.field private static final GROUPCHAT_SUBJECT_PATTERN:Ljava/util/regex/Pattern;

.field private static final IMEI_PATTERN:Ljava/util/regex/Pattern;

.field private static final IMPU_SIP_PATTERN:Ljava/util/regex/Pattern;

.field private static final IMPU_TEL_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG_TAG:Ljava/lang/String; = "StackIF"

.field private static final PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final PHONE_NUMBER_XML_PATTERN:Ljava/util/regex/Pattern;

.field private static final P_ACCESS_NETWORK_PATTERN:Ljava/util/regex/Pattern;

.field private static final SDP_O_LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SESSION_DESCRIPTION_PATTERN:Ljava/util/regex/Pattern;

.field private static final TEXTPLAIN_CONTENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TEXTPLAIN_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final TO_PATTERN:Ljava/util/regex/Pattern;

.field private static final USERNAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XCAP_USER_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;


# instance fields
.field private final mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mHandle:I

.field private final mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mLock:Ljava/lang/Object;

.field private mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

.field private final mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRawSipIncomingRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRawSipOutgoingRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/handler/secims/ImsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mSipHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mStackDumpData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/handler/secims/DumpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mUaListenerList:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/StackEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUaRegisterResponseRawSip:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mXdmRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}"

    .line 229
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)"

    .line 231
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "sip:[#*0-9+-]*[0-9+-]+"

    .line 233
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMPU_SIP_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "tel:[#*0-9+-]*[0-9+-]+"

    .line 234
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMPU_TEL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "imei:+[0-9+-]+"

    .line 235
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMEI_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "username=\"+[^\"]+"

    .line 236
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "P-Access-Network-Info:+[^\n]+"

    .line 237
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->P_ACCESS_NETWORK_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "o=+[0-9:+-]+"

    .line 239
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->SDP_O_LINE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\"+[0-9+-]+\""

    .line 240
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, ">[0-9+-]{4,}<"

    .line 241
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->PHONE_NUMBER_XML_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "target>+.+</.*target"

    .line 242
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->XCAP_USER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "From: +[#*0-9+-]*[0-9+-]+"

    .line 243
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->FROM_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "To: +[#*0-9+-]*[0-9+-]+"

    .line 244
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TO_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "session-description>.+</session-description"

    .line 245
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->SESSION_DESCRIPTION_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "From: \"+[^\"]+"

    .line 247
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->GROUPCHAT_ALIAS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "Subject:+[^\n]+"

    .line 248
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->GROUPCHAT_SUBJECT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "Content-type: +text/plain"

    .line 249
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TEXTPLAIN_HEADER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\n\n.[^\n]+"

    .line 251
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TEXTPLAIN_CONTENT_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 298
    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    .line 279
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 280
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    const/4 v0, -0x1

    .line 296
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mHandle:I

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mStackDumpData:Ljava/util/List;

    .line 308
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 313
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mLock:Ljava/lang/Object;

    .line 314
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 315
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 316
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 317
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 318
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 319
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 320
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 321
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 322
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 323
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 324
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 325
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 326
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 327
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 328
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXdmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 329
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 330
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 331
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 332
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 333
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 334
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 335
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipIncomingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 336
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipOutgoingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 337
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 338
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 339
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 340
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 341
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 342
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 343
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 344
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 345
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-void
.end method

.method private static ImsLogC(ILjava/lang/String;Z)V
    .locals 0

    .line 2469
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    return-void
.end method

.method public static checkLogEnable()Z
    .locals 1

    .line 3249
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isOtpAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private createDeviceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/DeviceTuple;)I
    .locals 8

    const-string v0, "StackIF"

    const-string v1, "createDevicetupleoffset enter"

    .line 1079
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 1087
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1089
    iget-object v3, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceCapabilities:Ljava/util/List;

    .line 1090
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getDeviceCapabilityElements(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1089
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v6, v4, 0x1

    .line 1091
    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v5

    aput v5, v0, v4

    move v4, v6

    goto :goto_0

    .line 1095
    :cond_0
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->createDeviceCapabilitiesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1100
    :goto_1
    iget-object v3, p2, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1102
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 1103
    iget-object v4, p2, Lcom/sec/ims/presence/DeviceTuple;->mDescriptions:Ljava/util/List;

    const-string v5, "description"

    .line 1104
    invoke-static {v5, v4}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1103
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v7, v5, 0x1

    .line 1106
    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v6

    aput v6, v3, v5

    move v5, v7

    goto :goto_2

    .line 1110
    :cond_2
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->createDescriptionsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v2

    .line 1113
    :goto_3
    iget-object v4, p2, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 1115
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 1116
    iget-object v5, p2, Lcom/sec/ims/presence/DeviceTuple;->mNotes:Ljava/util/List;

    const-string v6, "note"

    .line 1117
    invoke-static {v6, v5}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1116
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v7, v1, 0x1

    .line 1118
    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v6

    aput v6, v4, v1

    move v1, v7

    goto :goto_4

    .line 1122
    :cond_4
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->createNotesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p0

    goto :goto_5

    :cond_5
    move p0, v2

    .line 1127
    :goto_5
    iget-object v1, p2, Lcom/sec/ims/presence/DeviceTuple;->mDeviceId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1128
    invoke-virtual {p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    .line 1132
    :goto_6
    iget-object p2, p2, Lcom/sec/ims/presence/DeviceTuple;->mTimestamp:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 1133
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_7

    :cond_7
    move p2, v2

    .line 1137
    :goto_7
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->startDeviceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v1, v2, :cond_8

    .line 1141
    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addDeviceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_8
    if-eq v0, v2, :cond_9

    .line 1146
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addDeviceCapabilities(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v3, v2, :cond_a

    .line 1151
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addDescriptions(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq p0, v2, :cond_b

    .line 1156
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addNotes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq p2, v2, :cond_c

    .line 1161
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1166
    :cond_c
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/DeviceTuple;->endDeviceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private createPersonTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/PersonTuple;)I
    .locals 6

    const-string v0, "StackIF"

    const-string v1, "createPersonTupleOffset enter"

    .line 1303
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v0, p2, Lcom/sec/ims/presence/PersonTuple;->mNotes:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-lez v0, :cond_2

    .line 1310
    new-array v0, v0, [I

    .line 1311
    iget-object v3, p2, Lcom/sec/ims/presence/PersonTuple;->mNotes:Ljava/util/List;

    const-string v4, "note"

    .line 1312
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getTextElements(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1311
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v5, v1, 0x1

    .line 1313
    invoke-direct {p0, p1, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v4

    aput v4, v0, v1

    move v1, v5

    goto :goto_1

    .line 1315
    :cond_1
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createNotesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v2

    .line 1319
    :goto_2
    iget-object v0, p2, Lcom/sec/ims/presence/PersonTuple;->mTimestamp:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1320
    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v2

    .line 1324
    :goto_3
    iget-object p2, p2, Lcom/sec/ims/presence/PersonTuple;->mStatusIcon:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 1325
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_4

    :cond_4
    move p2, v2

    .line 1329
    :goto_4
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->startPersonTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v0, v2, :cond_5

    .line 1334
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    if-eq p2, v2, :cond_6

    .line 1340
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->addStatusIcon(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_6
    if-eq p0, v2, :cond_7

    .line 1346
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->addNotes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1352
    :cond_7
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PersonTuple;->endPersonTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private createServiceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/ServiceTuple;)I
    .locals 7

    const-string v0, "StackIF"

    const-string v1, "createServiceTupleOffset enter"

    .line 1173
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v1, p2, Lcom/sec/ims/presence/ServiceTuple;->mediaCapabilities:Ljava/util/List;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 1200
    iget-wide v3, p2, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    .line 1201
    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/XmlDataStructureWrapper;->getMediaCapabilityElements(J)Ljava/util/List;

    move-result-object v1

    .line 1202
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 1203
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v6, v4, 0x1

    .line 1204
    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v5

    aput v5, v3, v4

    move v4, v6

    goto :goto_0

    .line 1208
    :cond_0
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->createMediaCapabilitiesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v2

    .line 1213
    :goto_1
    iget-object v1, p2, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1214
    invoke-virtual {p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    .line 1218
    :goto_2
    iget-object v3, p2, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1219
    invoke-virtual {p1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v2

    .line 1223
    :goto_3
    iget-object v4, p2, Lcom/sec/ims/presence/ServiceTuple;->displayText:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1224
    invoke-virtual {p1, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_4

    :cond_4
    move v4, v2

    .line 1228
    :goto_4
    iget-object v5, p2, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1229
    invoke-virtual {p1, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_5

    :cond_5
    move v5, v2

    .line 1233
    :goto_5
    iget-object v6, p2, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1234
    invoke-virtual {p1, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_6

    :cond_6
    move v6, v2

    .line 1239
    :goto_6
    iget-object p2, p2, Lcom/sec/ims/presence/ServiceTuple;->basicStatus:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 1240
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1241
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple_/Status;->startStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1242
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple_/Status;->addBasic(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1243
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple_/Status;->endStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    goto :goto_7

    :cond_7
    move p2, v2

    .line 1247
    :goto_7
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->startServiceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v1, v2, :cond_8

    .line 1251
    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addServiceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_8
    if-eq v3, v2, :cond_9

    .line 1257
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addTupleId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_9
    if-eq v4, v2, :cond_a

    .line 1263
    invoke-static {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addDisplaytext(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    if-eq v5, v2, :cond_b

    .line 1269
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_b
    if-eq v6, v2, :cond_c

    .line 1275
    invoke-static {p1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addDescription(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq p2, v2, :cond_e

    .line 1280
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p0, v2, :cond_d

    .line 1290
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->addMediaCapabilities(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1296
    :cond_d
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ServiceTuple;->endServiceTuple(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0

    :cond_e
    const-string p0, "requestPublish: service tuple status (either basic or other status) is required"

    .line 1283
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private findAndRemoveRequest(I)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    .locals 3

    .line 2429
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    monitor-enter v0

    .line 2430
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2432
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2433
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    .line 2435
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mTid:I

    if-ne v2, p1, :cond_0

    .line 2436
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 2437
    monitor-exit v0

    return-object v1

    .line 2440
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I
    .locals 10

    .line 1661
    iget-object v0, p2, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-lez v0, :cond_1

    .line 1663
    new-array v0, v0, [I

    .line 1665
    iget-object v3, p2, Lcom/sec/internal/constants/ims/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/XmlElement;

    add-int/lit8 v6, v4, 0x1

    .line 1666
    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getElementBuilderDfs(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/constants/ims/XmlElement;)I

    move-result v5

    aput v5, v0, v4

    move v4, v6

    goto :goto_0

    .line 1668
    :cond_0
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->createElementsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v2

    .line 1671
    :goto_1
    iget-object v0, p2, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1677
    iget-object v0, p2, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1679
    iget-object v3, p2, Lcom/sec/internal/constants/ims/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;

    .line 1681
    iget-object v5, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1682
    invoke-virtual {p1, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_3

    :cond_2
    move v5, v2

    .line 1686
    :goto_3
    iget-object v6, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 1687
    invoke-virtual {p1, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_4

    :cond_3
    move v6, v2

    .line 1691
    :goto_4
    iget-object v7, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 1692
    invoke-virtual {p1, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_5

    :cond_4
    move v7, v2

    .line 1695
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "element attr: ns: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mNamespace:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " val: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/sec/internal/constants/ims/XmlElement$Attribute;->mValue:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "StackIF"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->startAttribute(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v5, v2, :cond_5

    .line 1701
    invoke-static {p1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->addNameSpace(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    if-eq v6, v2, :cond_6

    .line 1705
    invoke-static {p1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_6
    if-eq v7, v2, :cond_7

    .line 1709
    invoke-static {p1, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_7
    add-int/lit8 v4, v1, 0x1

    .line 1712
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element_/Attribute;->endAttribute(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    aput v5, v0, v1

    move v1, v4

    goto :goto_2

    .line 1714
    :cond_8
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->createAttributesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    goto :goto_6

    :cond_9
    move v0, v2

    .line 1720
    :goto_6
    iget-object v1, p2, Lcom/sec/internal/constants/ims/XmlElement;->mNamespace:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1721
    invoke-virtual {p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_7

    :cond_a
    move v1, v2

    .line 1723
    :goto_7
    iget-object v3, p2, Lcom/sec/internal/constants/ims/XmlElement;->mName:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 1724
    invoke-virtual {p1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_8

    :cond_b
    move v3, v2

    .line 1726
    :goto_8
    iget-object p2, p2, Lcom/sec/internal/constants/ims/XmlElement;->mValue:Ljava/lang/String;

    if-eqz p2, :cond_c

    .line 1727
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_9

    :cond_c
    move p2, v2

    .line 1729
    :goto_9
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->startElement(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v1, v2, :cond_d

    .line 1732
    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addNameSpace(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_d
    if-eq v3, v2, :cond_e

    .line 1735
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq p2, v2, :cond_f

    .line 1738
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    if-eq v0, v2, :cond_10

    .line 1741
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addAttributes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    if-eq p0, v2, :cond_11

    .line 1744
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->addElements(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1747
    :cond_11
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Element;->endElement(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    monitor-enter v0

    .line 357
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    if-nez v1, :cond_1

    .line 358
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    if-nez v1, :cond_0

    .line 360
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 361
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->init()V

    .line 363
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 365
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2550
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 2557
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo p1, "xxx.xxx.xxx.xxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2559
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo p1, "xxxx:xxxx:xxxx:xxxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2562
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMPU_SIP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo p1, "sip:xxxxxxxxxxxxxxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2564
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMPU_TEL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo p1, "tel:xxxxxxxxxxxxxxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2566
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->IMEI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "imei:xxxxxxxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2568
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo p1, "username=xxxxxxxxxxxxxxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2570
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->P_ACCESS_NETWORK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "P-Access-Network-Info: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2573
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->SDP_O_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "o=xxxxxxxxxxxxxxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2575
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "\"xxxxxxxxxxxxxxx\""

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2577
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->PHONE_NUMBER_XML_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, ">xxxxxxxxxxxxxxx<"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2579
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->XCAP_USER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string/jumbo p1, "target>xxxxxxxxxxxxxxx</target"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2581
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->FROM_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "From: xxxxxxxxxxxxxxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2583
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TO_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "To: xxxxxxxxxxxxxxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2585
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->SESSION_DESCRIPTION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "session-description>xxxxxxxxxxxxxxx</session-description"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2588
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->GROUPCHAT_ALIAS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "From: \"xxxxxxxx\""

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2590
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->GROUPCHAT_SUBJECT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "Subject: xxxxxxxx"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2593
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TEXTPLAIN_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2594
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->TEXTPLAIN_CONTENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2596
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2597
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    .line 2596
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2599
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p1, "\n\nxxxxx"

    .line 2601
    invoke-virtual {v0, p0, p1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 2602
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 2604
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private init()V
    .locals 0

    :try_start_0
    const-string p0, "sec-ims"

    .line 350
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 352
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private native initCmc(Ljava/lang/Object;)V
.end method

.method private native initStack(Ljava/lang/Object;)V
.end method

.method private planiTimeReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I
    .locals 0

    .line 632
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->startRequestUpdateTimeInPlani(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 633
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 634
    invoke-static {p1, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->addTime(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 635
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateTimeInPlani;->endRequestUpdateTimeInPlani(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private native processCommandBuffer([BI)V
.end method

.method private static declared-synchronized processMessage([BI)V
    .locals 7

    const-class v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;

    monitor-enter v0

    .line 2448
    :try_start_0
    new-array v1, p1, [B

    .line 2450
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 2451
    :try_start_1
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2452
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2453
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->getRootAsImsBuffer(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;

    move-result-object p0

    .line 2454
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->trid()J

    move-result-wide v2

    .line 2455
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->msgType()B

    move-result p1

    const-string v4, "StackIF"

    .line 2456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    const-string p1, "StackIF"

    const-string v2, "Processing Notify"

    .line 2458
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->msg(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->processNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    const-string p1, "StackIF"

    const-string v4, "Processing Response"

    .line 2461
    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    long-to-int v2, v2

    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;-><init>()V

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->msg(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;

    invoke-direct {p1, v2, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->processResponse(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;)V

    .line 2464
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2465
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 2464
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private processNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2611
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v2

    .line 2613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UNSL]< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SECIMSJ"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processNotify: id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StackIF"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    const-string v5, "processNotify: msg not found."

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v8, 0x2711

    if-ne v2, v8, :cond_6

    .line 2619
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    if-ne v2, v7, :cond_5

    .line 2621
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    .line 2622
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v11

    .line 2624
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v2, v6

    .line 2625
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->serviceListLength()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 2626
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->serviceList(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2629
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v2, v6

    .line 2630
    :goto_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->impuListLength()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 2631
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->impuList(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2633
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegistrationStatus - handle "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " serviceList "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " regiType "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2636
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->regiType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RegiType;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " code "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2637
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respCode()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reason "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2638
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ecmpMode "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->ecmpMode()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " retryAfter "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2640
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->retryAfter()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reason header "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->reasonHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2633
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    new-instance v14, Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->respReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->reasonHeader()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v2, v4, v5}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2644
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v10, :cond_5f

    .line 2646
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->regiType()I

    move-result v2

    if-nez v2, :cond_2

    .line 2650
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->retryAfter()I

    move-result v15

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->ecmpMode()I

    move-result v16

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    .line 2651
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 2648
    invoke-virtual/range {v10 .. v17}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegistered(ILjava/util/List;Ljava/util/List;Lcom/sec/ims/util/SipError;IILjava/lang/String;)V

    goto/16 :goto_1d

    :cond_2
    if-eq v2, v7, :cond_3

    if-ne v2, v3, :cond_5f

    .line 2653
    :cond_3
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2654
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->retryAfter()I

    move-result v0

    if-ne v2, v3, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {v10, v11, v14, v0, v6}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onDeregistered(ILcom/sec/ims/util/SipError;IZ)V

    goto/16 :goto_1d

    .line 2658
    :cond_5
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_6
    const/16 v8, 0x2729

    const-string v9, "Handle: "

    if-ne v2, v8, :cond_7

    const-string v2, "receive registered impu"

    .line 2661
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5f

    .line 2663
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;

    .line 2664
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2665
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationImpu;->impu()Ljava/lang/String;

    move-result-object v1

    .line 2666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - impu: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2667
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2666
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_5f

    .line 2670
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegImpuNotification(ILjava/lang/String;)V

    goto/16 :goto_1d

    :cond_7
    const/16 v8, 0x271d

    if-ne v2, v8, :cond_8

    .line 2674
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5f

    .line 2675
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;

    .line 2676
    new-instance v2, Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;->respCode()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;->respReason()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 2677
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SubscribeStatus;->handle()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v1

    .line 2678
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_5f

    .line 2680
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onSubscribed(ILcom/sec/ims/util/SipError;)V

    goto/16 :goto_1d

    :cond_8
    const/16 v8, 0x2717

    if-ne v2, v8, :cond_9

    .line 2685
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5f

    const-string v2, "RegiInfoChanged"

    .line 2686
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    .line 2688
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2689
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_5f

    .line 2691
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegInfoNotification(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V

    goto/16 :goto_1d

    :cond_9
    const/16 v8, 0x2712

    if-ne v2, v8, :cond_c

    .line 2696
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    if-ne v2, v3, :cond_b

    .line 2697
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;

    .line 2698
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegistrationAuth - handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " nonce "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->nonce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2699
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_a

    const-string v3, "calling onISIMAuthRequested."

    .line 2704
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->nonce()Ljava/lang/String;

    move-result-object v3

    .line 2706
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationAuth;->recvMng()J

    move-result-wide v4

    long-to-int v1, v4

    .line 2705
    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onISIMAuthRequested(ILjava/lang/String;I)V

    goto/16 :goto_1d

    :cond_a
    const-string v0, " mUaListener not found."

    .line 2708
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 2711
    :cond_b
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_c
    const/16 v8, 0x2714

    if-ne v2, v8, :cond_d

    .line 2714
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5f

    .line 2715
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;

    .line 2716
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallStatus - handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " session "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2719
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->session()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallStatus;->state()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2717
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_d
    const/16 v8, 0x2715

    if-ne v2, v8, :cond_e

    .line 2724
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5f

    .line 2725
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IncomingCall;

    .line 2727
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_e
    const/16 v8, 0x271e

    if-ne v2, v8, :cond_f

    .line 2730
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_5f

    .line 2731
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;

    .line 2733
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_f
    const/16 v8, 0x271f

    if-ne v2, v8, :cond_10

    .line 2736
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5f

    .line 2737
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;

    .line 2739
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_10
    const/16 v8, 0x2733

    if-ne v2, v8, :cond_11

    .line 2742
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_5f

    .line 2743
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;

    .line 2745
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_11
    const/16 v8, 0x2716

    if-ne v2, v8, :cond_15

    .line 2748
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5f

    .line 2749
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;

    if-nez v1, :cond_12

    const-string v0, "cc is null"

    .line 2751
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2755
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfCallChanged: session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->session()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->event()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " participants "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2755
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v2

    new-array v3, v2, [Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move v5, v6

    .line 2760
    :goto_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participantsLength()I

    move-result v7

    if-ge v5, v7, :cond_13

    .line 2761
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged;->participants(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;

    move-result-object v7

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_13
    :goto_3
    if-ge v6, v2, :cond_14

    .line 2764
    aget-object v5, v3, v6

    .line 2765
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->uri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2766
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/Participant;->status()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2765
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2769
    :cond_14
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_15
    const/16 v8, 0x2718

    if-ne v2, v8, :cond_16

    .line 2772
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferReceived;

    const-string v2, "ReferReceived:"

    .line 2774
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_16
    const/16 v8, 0x2719

    if-ne v2, v8, :cond_18

    .line 2778
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;

    if-nez v1, :cond_17

    const-string v0, "rs is null"

    .line 2780
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2784
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReferStatus: session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2785
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->session()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " resp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReferStatus;->statusCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2784
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_18
    const/16 v8, 0x271b

    if-ne v2, v8, :cond_1a

    .line 2789
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5f

    .line 2790
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;

    if-nez v1, :cond_19

    const-string v0, "modCallData is null"

    .line 2792
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2796
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModifyCall - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->session()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", oldCallType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2797
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->oldType()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", newCallType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2798
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyCallData;->newType()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2796
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_1a
    const/16 v8, 0x271a

    if-ne v2, v8, :cond_1d

    .line 2803
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1c

    .line 2804
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;

    if-nez v1, :cond_1b

    const-string/jumbo v0, "ur is null"

    .line 2806
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2810
    :cond_1b
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateRouteTable - handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " op "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2812
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->operation()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " addr "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2811
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_5f

    const-string v3, "calling UpdateRouteTable."

    .line 2816
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->operation()I

    move-result v3

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/UpdateRouteTable;->address()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onUpdateRouteTableRequested(IILjava/lang/String;)V

    goto/16 :goto_1d

    .line 2820
    :cond_1c
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_1d
    const/16 v8, 0x2727

    if-ne v2, v8, :cond_1e

    .line 2823
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    if-ne v2, v7, :cond_5f

    .line 2824
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    .line 2825
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v1

    const-string v2, "calling onUpdate Pani"

    .line 2826
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_5f

    .line 2830
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onUpdatePani()V

    goto/16 :goto_1d

    :cond_1e
    const/16 v8, 0x272a

    const-string v10, "]"

    if-ne v2, v8, :cond_1f

    .line 2834
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    if-ne v2, v7, :cond_5f

    .line 2835
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;

    .line 2836
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 2837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StackIF["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegistrationStatus;->handle()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "calling onRefreshRegNotification"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_5f

    .line 2841
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRefreshRegNotification(I)V

    goto/16 :goto_1d

    :cond_1f
    const/16 v8, 0x4e28

    if-ne v2, v8, :cond_20

    const-string v2, "Echolocate Notify receive"

    .line 2845
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_5f

    .line 2847
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EcholocateMsg;

    .line 2848
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_20
    const/16 v8, 0x4e24

    if-ne v2, v8, :cond_21

    .line 2851
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ReceiveSmsNotification;

    const-string v2, "ReceiveSmsNotification: "

    .line 2853
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_21
    const/16 v8, 0x4e23

    if-ne v2, v8, :cond_22

    .line 2857
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SmsRpAckNotification;

    const-string v2, "SmsRpAckNotification: "

    .line 2859
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_22
    const/16 v8, 0x2713

    const-string v11, "MM/dd/yyyy HH:mm:ss.SSS"

    if-ne v2, v8, :cond_34

    .line 2863
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_5f

    .line 2864
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;

    .line 2865
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v11, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2866
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2868
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->origin()I

    move-result v4

    if-nez v4, :cond_23

    return-void

    .line 2873
    :cond_23
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->sipMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_24

    .line 2874
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->sipMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_24
    move-object v4, v5

    :goto_4
    const-string v8, "\r\n"

    .line 2879
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2881
    array-length v9, v8

    move-object v12, v5

    move v11, v6

    :goto_5
    if-ge v11, v9, :cond_27

    aget-object v13, v8, v11

    .line 2882
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_25

    move-object v12, v13

    .line 2886
    :cond_25
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "cseq"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_26

    .line 2887
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_26
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 2892
    :cond_27
    :goto_6
    invoke-direct {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2893
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->phoneId()J

    move-result-wide v11

    long-to-int v9, v11

    .line 2894
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIPMSG["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2896
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->rawContentsLength()I

    move-result v11

    new-array v12, v7, [B

    aput-byte v6, v12, v6

    if-lez v11, :cond_28

    .line 2899
    new-array v12, v11, [B

    move v13, v6

    :goto_7
    if-ge v13, v11, :cond_28

    .line 2901
    invoke-virtual {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->rawContents(I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2905
    :cond_28
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v13, "phoneId"

    .line 2906
    invoke-virtual {v11, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "message"

    .line 2907
    invoke-virtual {v11, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "rawContents"

    .line 2908
    invoke-virtual {v11, v13, v12}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2910
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v12

    if-nez v12, :cond_29

    .line 2911
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[-->] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    iget-object v12, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipOutgoingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v12, v11}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_8

    .line 2914
    :cond_29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[<--] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    iget-object v12, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipIncomingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v12, v11}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2916
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "register"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2a

    const-string v11, "200"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2a

    .line 2918
    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaRegisterResponseRawSip:Ljava/util/Map;

    iget v12, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mHandle:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2922
    :cond_2a
    :goto_8
    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    if-eqz v11, :cond_2b

    .line 2923
    invoke-interface {v11}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 2925
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v15

    .line 2926
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->hexContents()Ljava/lang/String;

    move-result-object v20

    const-string v18, ""

    const-string v19, ""

    move-object v13, v4

    move/from16 v16, v9

    move-object/from16 v17, v3

    .line 2923
    invoke-interface/range {v11 .. v20}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2930
    :cond_2b
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isEngMode()Z

    move-result v11

    if-nez v11, :cond_32

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v11

    if-nez v11, :cond_2c

    goto :goto_e

    .line 2942
    :cond_2c
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->mno()I

    move-result v11

    .line 2943
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMnoInverse(I)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 2945
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->isRcsProfile()Z

    move-result v12

    if-eqz v12, :cond_2e

    if-eqz v11, :cond_2d

    invoke-virtual {v11}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v11

    if-eqz v11, :cond_2d

    goto :goto_9

    :cond_2d
    move v11, v6

    goto :goto_a

    :cond_2e
    :goto_9
    move v11, v7

    :goto_a
    move/from16 v17, v11

    if-eqz v11, :cond_30

    .line 2952
    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v17, :cond_2f

    .line 2954
    invoke-static {v10, v4}, Lcom/sec/internal/log/IMSLog;->dx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 2956
    :cond_2f
    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move-object v12, v4

    goto :goto_c

    :cond_30
    move-object v12, v5

    .line 2960
    :goto_c
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 2961
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v2

    if-ne v2, v7, :cond_31

    move v15, v7

    goto :goto_d

    :cond_31
    move v15, v6

    :goto_d
    const/16 v18, 0x0

    move-object v11, v4

    move-object v13, v8

    move-object v14, v3

    move/from16 v16, v9

    invoke-direct/range {v11 .. v18}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage-IA;)V

    .line 2960
    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V

    goto :goto_10

    .line 2931
    :cond_32
    :goto_e
    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 2933
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SipMessage;->direction()I

    move-result v2

    if-ne v2, v7, :cond_33

    move v15, v7

    goto :goto_f

    :cond_33
    move v15, v6

    :goto_f
    const/16 v17, 0x0

    move-object v11, v5

    move-object v12, v4

    move-object v13, v8

    move-object v14, v3

    move/from16 v16, v9

    invoke-direct/range {v11 .. v17}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage-IA;)V

    .line 2932
    invoke-direct {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V

    .line 2964
    :goto_10
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_34
    const/16 v8, 0x2722

    if-ne v2, v8, :cond_37

    .line 2967
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;

    .line 2968
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 2969
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2970
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2972
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;->xcapMessage()Ljava/lang/String;

    move-result-object v3

    .line 2974
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2976
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    if-eqz v4, :cond_35

    .line 2977
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v8

    const/4 v9, 0x1

    const/16 v11, 0x64

    .line 2979
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;->direction()I

    move-result v12

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    move-object v10, v3

    move-object v13, v2

    .line 2977
    invoke-interface/range {v8 .. v16}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    :cond_35
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 2982
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XCapMessage;->direction()I

    move-result v1

    if-eqz v1, :cond_36

    move v12, v7

    goto :goto_11

    :cond_36
    move v12, v6

    :goto_11
    const/4 v13, -0x1

    const/4 v14, 0x0

    const-string v10, ""

    move-object v8, v4

    move-object v9, v3

    move-object v11, v2

    invoke-direct/range {v8 .. v14}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage-IA;)V

    .line 2981
    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V

    goto/16 :goto_1d

    :cond_37
    const/16 v7, 0x2723

    if-ne v2, v7, :cond_38

    .line 2984
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SSGetGbaKey;

    .line 2985
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_38
    const/16 v7, 0x4e21

    if-ne v2, v7, :cond_3a

    .line 2987
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_39

    .line 2988
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;

    .line 2989
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;->id()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2990
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/AlarmWakeUp;->delay()J

    move-result-wide v3

    long-to-int v1, v3

    .line 2991
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

    if-eqz v0, :cond_5f

    .line 2992
    invoke-interface {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;->onAlarmRequested(II)V

    goto/16 :goto_1d

    .line 2995
    :cond_39
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_3a
    const/16 v7, 0x4e22

    if-ne v2, v7, :cond_3c

    .line 2998
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_3b

    .line 2999
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;

    .line 3000
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CancelAlarm;->id()J

    move-result-wide v1

    long-to-int v1, v1

    .line 3001
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

    if-eqz v0, :cond_5f

    .line 3002
    invoke-interface {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;->onAlarmCancelled(I)V

    goto/16 :goto_1d

    .line 3005
    :cond_3b
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_3c
    const/16 v5, 0x2afc

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2afa

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2afd

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2aff

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2afb

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x4a38

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2b00

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2ee1

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2ee4

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2ee5

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2ee3

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2ee2

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2af9

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2b01

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2b02

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2b03

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2b04

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2b05

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x2b06

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x4e2d

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x4e2c

    if-eq v2, v5, :cond_5e

    const/16 v5, 0x4e2b

    if-ne v2, v5, :cond_3d

    goto/16 :goto_1c

    :cond_3d
    const/16 v5, 0x2afe

    if-eq v2, v5, :cond_5d

    const/16 v5, 0x2b07

    if-ne v2, v5, :cond_3e

    goto/16 :goto_1b

    :cond_3e
    const/16 v5, 0x4650

    if-eq v2, v5, :cond_5c

    const/16 v5, 0x4651

    if-eq v2, v5, :cond_5c

    const/16 v5, 0x4653

    if-eq v2, v5, :cond_5c

    const/16 v5, 0x4652

    if-eq v2, v5, :cond_5c

    const/16 v5, 0x4654

    if-eq v2, v5, :cond_5c

    const/16 v5, 0x4655

    if-ne v2, v5, :cond_3f

    goto/16 :goto_1a

    :cond_3f
    const/16 v5, 0x32c9

    if-eq v2, v5, :cond_5b

    const/16 v5, 0x32ca

    if-eq v2, v5, :cond_5b

    const/16 v5, 0x32cb

    if-eq v2, v5, :cond_5b

    const/16 v5, 0x32cc

    if-eq v2, v5, :cond_5b

    const/16 v5, 0x32cd

    if-ne v2, v5, :cond_40

    goto/16 :goto_19

    :cond_40
    const/16 v5, 0x36b1

    if-eq v2, v5, :cond_5a

    const/16 v5, 0x36b2

    if-eq v2, v5, :cond_5a

    const/16 v5, 0x36b3

    if-eq v2, v5, :cond_5a

    const/16 v5, 0x36b4

    if-eq v2, v5, :cond_5a

    const/16 v5, 0x36b5

    if-ne v2, v5, :cond_41

    goto/16 :goto_18

    :cond_41
    const/16 v5, 0x3a99

    if-ne v2, v5, :cond_42

    const-string v2, "received NOTIFY_OPTIONS_RECEIVED"

    .line 3058
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_42
    const/16 v5, 0x4e25

    if-ne v2, v5, :cond_43

    .line 3061
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DialogEvent;

    .line 3062
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_43
    const/16 v5, 0x4e26

    if-ne v2, v5, :cond_44

    const-string v2, "received NOTIFY_X509_CERT_VERIFY_REQUEST"

    .line 3064
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;

    .line 3067
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 3069
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onX509CertVerifyRequested(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;)V

    goto/16 :goto_1d

    :cond_44
    const/16 v5, 0x271c

    if-ne v2, v5, :cond_45

    .line 3071
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;

    .line 3072
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CdpnInfo;->calledPartyNumber()Ljava/lang/String;

    move-result-object v1

    .line 3073
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_45
    const/16 v5, 0x4e27

    if-ne v2, v5, :cond_48

    .line 3075
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;

    .line 3076
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->handle()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    move v4, v6

    :goto_12
    if-ge v4, v3, :cond_5f

    .line 3078
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    .line 3079
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v6

    .line 3080
    :goto_13
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->ipAddrListLength()I

    move-result v9

    if-ge v8, v9, :cond_46

    .line 3081
    invoke-virtual {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->ipAddrList(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_46
    if-eqz v5, :cond_47

    .line 3084
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->hostname()Ljava/lang/String;

    move-result-object v8

    .line 3085
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DnsResponse;->port()J

    move-result-wide v9

    long-to-int v9, v9

    .line 3084
    invoke-virtual {v5, v8, v7, v9, v2}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onDnsResponse(Ljava/lang/String;Ljava/util/List;II)V

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_48
    const/16 v3, 0x3e81

    if-eq v2, v3, :cond_59

    const/16 v3, 0x3e82

    if-eq v2, v3, :cond_59

    const/16 v3, 0x3e83

    if-eq v2, v3, :cond_59

    const/16 v3, 0x3e84

    if-ne v2, v3, :cond_49

    goto/16 :goto_17

    :cond_49
    const/16 v3, 0x4269

    if-eq v2, v3, :cond_58

    const/16 v3, 0x426a

    if-eq v2, v3, :cond_58

    const/16 v3, 0x426b

    if-ne v2, v3, :cond_4a

    goto/16 :goto_16

    :cond_4a
    const/16 v3, 0x2720

    if-ne v2, v3, :cond_4b

    .line 3098
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_5f

    .line 3099
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DedicatedBearerEvent;

    .line 3100
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_4b
    const/16 v3, 0x2721

    if-ne v2, v3, :cond_4c

    .line 3103
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_5f

    .line 3104
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcConnectionEvent;

    .line 3105
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_4c
    const/16 v3, 0x2726

    if-ne v2, v3, :cond_4d

    .line 3108
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_5f

    .line 3109
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RtpLossRateNoti;

    .line 3110
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_4d
    const/16 v3, 0x4e29

    if-ne v2, v3, :cond_4f

    .line 3113
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_5f

    .line 3114
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;

    const/16 v2, 0x64

    .line 3116
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v11, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3118
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;

    .line 3119
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;->tag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DumpMessage;->value()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v2, :cond_4e

    .line 3123
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3125
    :cond_4e
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mStackDumpData:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d

    :cond_4f
    const/16 v3, 0x2725

    if-ne v2, v3, :cond_50

    .line 3128
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_5f

    .line 3129
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;

    .line 3130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMF Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3131
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->event()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->volume()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->duration()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Endbit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3133
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/DTMFDataEvent;->endbit()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3130
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_50
    const/16 v3, 0x272e

    if-eq v2, v3, :cond_57

    const/16 v3, 0x272f

    if-eq v2, v3, :cond_57

    const/16 v3, 0x2730

    if-eq v2, v3, :cond_57

    const/16 v3, 0x2731

    if-eq v2, v3, :cond_57

    const/16 v3, 0x2732

    if-ne v2, v3, :cond_51

    goto/16 :goto_15

    :cond_51
    const/16 v3, 0x4e2a

    if-ne v2, v3, :cond_52

    .line 3143
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_5f

    .line 3144
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage;

    .line 3145
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_52
    const/16 v3, 0x2728

    if-ne v2, v3, :cond_53

    .line 3148
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_5f

    .line 3149
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;

    .line 3150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->text()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3151
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/TextDataEvent;->len()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3150
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_53
    const/16 v3, 0x272c

    if-ne v2, v3, :cond_54

    const-string v2, "receive contact activated"

    .line 3155
    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;

    .line 3157
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactActivated;->handle()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v1

    .line 3158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v0, :cond_5f

    .line 3161
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onContactActivated(I)V

    goto/16 :goto_1d

    :cond_54
    const/16 v3, 0x272d

    if-ne v2, v3, :cond_56

    const-string v2, "receive contact uri in reg-event"

    .line 3164
    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;

    .line 3166
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v11

    .line 3168
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3169
    :goto_14
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->uriListLength()I

    move-result v2

    if-ge v6, v2, :cond_55

    .line 3170
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->uriList(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 3172
    :cond_55
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->emergencyNumbers()Ljava/lang/String;

    move-result-object v15

    .line 3173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uri size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3174
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uri_list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", emergencyNumbers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3173
    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->isRegi()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v13

    .line 3177
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ContactUriInfo;->uriType()Ljava/lang/String;

    move-result-object v14

    .line 3178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", contactUriType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;

    if-eqz v10, :cond_5f

    .line 3181
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5f

    .line 3182
    invoke-virtual/range {v10 .. v15}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;->onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_56
    const/16 v3, 0x2734

    if-ne v2, v3, :cond_5f

    const-string v2, "receive cmc info"

    .line 3185
    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3187
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;

    .line 3188
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->handle()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v2

    .line 3190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CmcInfo - handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/CallSendCmcInfo;->sessionId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1d

    .line 3141
    :cond_57
    :goto_15
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1d

    .line 3096
    :cond_58
    :goto_16
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1d

    .line 3092
    :cond_59
    :goto_17
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1d

    .line 3056
    :cond_5a
    :goto_18
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXdmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1d

    .line 3050
    :cond_5b
    :goto_19
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1d

    .line 3044
    :cond_5c
    :goto_1a
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1d

    .line 3037
    :cond_5d
    :goto_1b
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_1d

    .line 3033
    :cond_5e
    :goto_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processNotify: IM/FT notify received "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_5f
    :goto_1d
    return-void
.end method

.method private processResponse(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;)V
    .locals 5

    .line 2473
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resid()I

    move-result v0

    .line 2476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->serialString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SECIMSJ"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processResponse: reqId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 2482
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 2484
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->handle()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v0

    .line 2486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processResponse: handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 2487
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " result "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2488
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " reason "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2489
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->reason()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2486
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2491
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 2492
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 2494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCallResponse: handle "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2495
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->handle()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2494
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2496
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    const-string v0, "processSendSmsResp:"

    .line 2497
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSmsResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2499
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    const-string v0, "processStartSessionResp:"

    .line 2500
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2502
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    const-string v0, "processCloseSessionResp:"

    .line 2503
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2505
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_6

    const-string v0, "processStartMediaResp:"

    .line 2506
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartMediaResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartMediaResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2508
    :cond_6
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    const-string v0, "processSendImMessageResp:"

    .line 2509
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImMessageResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2511
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_8

    const-string v0, "processSendImNotiResp:"

    .line 2512
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendImNotiResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2514
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_9

    const-string v0, "processSendSlmResponse:"

    .line 2515
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2517
    :cond_9
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_a

    const-string v0, "processXdmGeneralResponse"

    .line 2518
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/XdmGeneralResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/XdmGeneralResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2520
    :cond_a
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v3, 0xe

    if-ne v0, v3, :cond_b

    const-string v0, "processCshGeneralResponse"

    .line 2521
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto/16 :goto_0

    .line 2523
    :cond_b
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_c

    const-string v0, "processUpdateParticipantsResp"

    .line 2524
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/UpdateParticipantsResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto :goto_0

    .line 2526
    :cond_c
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_d

    const-string v0, "processSendMessageRevokeInternalResp"

    .line 2527
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendMessageRevokeInternalResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto :goto_0

    .line 2529
    :cond_d
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_e

    const-string v0, "processSendEucResponseResponse"

    .line 2530
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    goto :goto_0

    .line 2532
    :cond_e
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->respType()B

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_f

    const-string v0, "processSipdialogGeneralResp"

    .line 2533
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;-><init>()V

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response;->resp(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;

    .line 2535
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;->success()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;->sipmessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2536
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SipdialogGeneralResponse;->sipmessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_f
    move-object p2, v2

    .line 2542
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->findAndRemoveRequest(I)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 2543
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mResult:Landroid/os/Message;

    if-eqz p1, :cond_10

    .line 2544
    invoke-static {p1, p2, v2}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 2545
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    return-void
.end method

.method private ratReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I
    .locals 0

    .line 611
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->startRequestUpdateRat(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 612
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 613
    invoke-static {p1, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->addRat(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 614
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateRat;->endRequestUpdateRat(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private recordSipHistory(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)V
    .locals 2

    .line 3289
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 3290
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3293
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private requestCapabilityExchange(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/lang/String;JLjava/lang/String;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1614
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestCapabilityExchange: uri: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " handle: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "extension iari "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StackIF"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    invoke-virtual {p1, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p0

    .line 1622
    invoke-virtual {p1, p7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    const/4 p7, -0x1

    if-eqz p8, :cond_0

    .line 1626
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p5

    .line 1625
    invoke-static {p1, p8, p5}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object p5

    .line 1627
    invoke-static {p1, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->createCapabilitiesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p5

    move p6, p7

    goto :goto_1

    .line 1628
    :cond_0
    sget p8, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, p8

    cmp-long p8, p5, v1

    if-eqz p8, :cond_2

    .line 1629
    invoke-static {p5, p6}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object p5

    .line 1630
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p6

    if-lez p6, :cond_2

    .line 1631
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p6

    new-array p6, p6, [I

    .line 1632
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 p8, 0x0

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    add-int/lit8 v2, p8, 0x1

    .line 1633
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p6, p8

    move p8, v2

    goto :goto_0

    .line 1635
    :cond_1
    invoke-static {p1, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->createMyFeaturesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p5

    move p6, p5

    move p5, p7

    goto :goto_1

    :cond_2
    move p5, p7

    move p6, p5

    .line 1639
    :goto_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->startRequestOptionsCapExchange(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1640
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1641
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1642
    invoke-static {p1, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addExtFeature(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p5, p7, :cond_3

    .line 1644
    invoke-static {p1, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addCapabilities(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_3
    if-eq p6, p7, :cond_4

    .line 1647
    invoke-static {p1, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->addMyFeatures(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    const-string p0, "requestCapabilityExchange request built"

    .line 1649
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsCapExchange;->endRequestOptionsCapExchange(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private requestSubscribe(ILjava/util/List;ZZLjava/lang/String;ZILandroid/os/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;ZZ",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1768
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1770
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1772
    new-array v3, v2, [I

    .line 1774
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    add-int/lit8 v5, v1, 0x1

    .line 1775
    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    aput v4, v3, v1

    move v1, v5

    goto :goto_0

    .line 1777
    :cond_0
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->createUriVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    :cond_1
    const/4 p2, -0x1

    if-eqz p5, :cond_2

    .line 1782
    invoke-virtual {v0, p5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p5

    goto :goto_1

    :cond_2
    move p5, p2

    .line 1785
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->startRequestPresenceSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, p1

    .line 1786
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1787
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addIsAnonymous(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1788
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addIsListSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-eq p5, p2, :cond_3

    .line 1791
    invoke-static {v0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addSubscriptionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1794
    :cond_3
    invoke-static {v0, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addGzipEnable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    if-lez v2, :cond_4

    .line 1797
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    int-to-long p1, p7

    .line 1800
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->addExpires(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1802
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceSubscribe;->endRequestPresenceSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1803
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2c7

    .line 1804
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x40

    .line 1805
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1806
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1807
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1808
    invoke-direct {p0, v0, p1, p8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string p0, "StackIF"

    const-string p1, "requestSubscribe: sent"

    .line 1810
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private send(Lcom/sec/internal/ims/core/handler/secims/ImsRequest;)V
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    monitor-enter v0

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRequestList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 588
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 589
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->getReqBuffer()Lcom/google/flatbuffers/FlatBufferBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object v0

    const-string v2, "SECIMSJ"

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mTid:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->serialString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v0

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    array-length p1, v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->processCommandBuffer([BI)V

    .line 592
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 586
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .locals 3

    .line 644
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->startImsBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 645
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v1, v0

    .line 647
    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->addTrid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 v1, 0x1

    .line 649
    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->addMsgType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 652
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->addMsg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 655
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImsBuffer;->endImsBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    .line 658
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 660
    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->obtain(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Message;)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    move-result-object p1

    .line 661
    iput v0, p1, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mTid:I

    .line 662
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->send(Lcom/sec/internal/ims/core/handler/secims/ImsRequest;)V

    return-void
.end method

.method private sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V
    .locals 1

    .line 639
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->getBuilder()Lcom/google/flatbuffers/FlatBufferBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->getOffset()I

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method private serialString(I)Ljava/lang/String;
    .locals 6

    .line 3197
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-long v0, p1

    const-wide/32 v2, -0x80000000

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    .line 3200
    rem-long/2addr v2, v4

    .line 3202
    rem-long/2addr v0, v4

    .line 3205
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x5b

    .line 3208
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    rsub-int/lit8 v2, v0, 0x4

    if-ge v1, v2, :cond_0

    const/16 v2, 0x30

    .line 3210
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3213
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    .line 3214
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3215
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setMockInstance(Lcom/sec/internal/ims/core/handler/secims/StackIF;)V
    .locals 0

    .line 302
    sput-object p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sInstance:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    return-void
.end method

.method private supportVoWiFiDeprioritizeNR5GReq(Lcom/google/flatbuffers/FlatBufferBuilder;JZ)I
    .locals 0

    .line 625
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSupportVoWiFiDeprioritizeNR5G;->startRequestSupportVoWiFiDeprioritizeNR5G(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 626
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSupportVoWiFiDeprioritizeNR5G;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 627
    invoke-static {p1, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSupportVoWiFiDeprioritizeNR5G;->addDeprioritizeNR5G(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 628
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSupportVoWiFiDeprioritizeNR5G;->endRequestSupportVoWiFiDeprioritizeNR5G(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private supportVoWiFiDisable5GSAReq(Lcom/google/flatbuffers/FlatBufferBuilder;JZ)I
    .locals 0

    .line 618
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSupportVoWiFiDisable5GSA;->startRequestSupportVoWiFiDisable5GSA(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 619
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSupportVoWiFiDisable5GSA;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 620
    invoke-static {p1, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSupportVoWiFiDisable5GSA;->addDisable5GSA(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 621
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSupportVoWiFiDisable5GSA;->endRequestSupportVoWiFiDisable5GSA(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method private updatePaniReq(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    .line 596
    invoke-interface {p4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p0

    .line 598
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-le v0, v1, :cond_0

    .line 599
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p1, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    goto :goto_0

    :cond_0
    move p4, v2

    .line 601
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->startRequestUpdatePani(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 602
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 603
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->addPani(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p4, v2, :cond_1

    .line 605
    invoke-static {p1, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->addLastPani(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 607
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdatePani;->endRequestUpdatePani(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public acceptCallTransfer(IIZILjava/lang/String;Landroid/os/Message;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "acceptTransferCall:"

    .line 2040
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeAcceptCallTransfer(IIZILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public answerCall(IIILjava/lang/String;)V
    .locals 2

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answerCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmcCallTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeAnswerCall(IIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public cancelTransferCall(IILandroid/os/Message;)V
    .locals 0

    .line 2027
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeCancelTransferCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public clearAllCallInternal(I)V
    .locals 2

    .line 2199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAllCallInternal: cmcType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeClearAllCallInternal(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public conference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 8

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conference: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " confUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " subscribe "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dialogType "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " origUri "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1994
    invoke-static {p7}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " useAnonymousUpdate "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "StackIF"

    .line 1992
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "participants: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    invoke-static/range {p1 .. p12}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeConference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    move-object v1, p0

    move-object/from16 v2, p13

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method configCall(IZZZ)V
    .locals 2

    .line 2114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configCall: ttySessionRequired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " rttSessionRequired "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " automode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2116
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigCall(IZZZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public configRCS(ILcom/sec/internal/constants/ims/config/RcsConfig;)V
    .locals 2

    .line 2132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configRCS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2134
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigRCS(ILcom/sec/internal/constants/ims/config/RcsConfig;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public configRegistration(ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p0, "StackIF"

    const-string p2, "configRegistration: no imei"

    .line 2155
    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 2159
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigRegistration(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public configSrvcc(II)V
    .locals 3

    .line 2120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configSrvcc():  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeConfigSrvcc(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public createUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Landroid/os/Message;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "createUA:"

    .line 669
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeCreateUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public deleteTcpClientSocket(I)V
    .locals 3

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteTcpClientSocket: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1908
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDeleteTcpClientSocket;->startRequestDeleteTcpClientSocket(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1909
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDeleteTcpClientSocket;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1910
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDeleteTcpClientSocket;->endRequestDeleteTcpClientSocket(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1911
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x514

    .line 1912
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x8

    .line 1913
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1914
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1916
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 1918
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public deleteUA(ILandroid/os/Message;)V
    .locals 2

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUA: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeDeleteUA(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public deregister(IZLandroid/os/Message;)V
    .locals 3

    .line 1852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregister: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1856
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->startRequestRegistration(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1857
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const-wide/16 v1, 0x0

    .line 1858
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addPcscfPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1859
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addRegExp(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    xor-int/lit8 p1, p2, 0x1

    .line 1860
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addIsExplicitDeregi(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1861
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->endRequestRegistration(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1863
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x68

    .line 1864
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/4 p2, 0x4

    .line 1865
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1866
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1868
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1870
    invoke-direct {p0, v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public dump()V
    .locals 4

    .line 3297
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->checkLogEnable()Z

    move-result v0

    const-string v1, "StackIF"

    if-eqz v0, :cond_1

    const-string v0, "Dump of IMS Stack:"

    const/4 v2, 0x0

    .line 3298
    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3299
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 3300
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mStackDumpData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;

    .line 3301
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/DumpRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 3303
    :cond_0
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    :cond_1
    const-string v0, "Dump of IMS SIP messages history:"

    .line 3306
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 3308
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSipHistory:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;

    .line 3309
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;->-$$Nest$fgetmIsEncrypted(Lcom/sec/internal/ims/core/handler/secims/StackIF$SipDebugMessage;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3311
    :cond_2
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    const-string p0, "Dump of IMS log data:"

    .line 3313
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 3314
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 3315
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->dumpSecretKey(Ljava/lang/String;)V

    .line 3316
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public endCall(IILcom/sec/internal/constants/ims/SipReason;Landroid/os/Message;)V
    .locals 2

    .line 1922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeEndCall(IILcom/sec/internal/constants/ims/SipReason;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public extendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendToConfCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " confUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subscribe "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dialogType "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " currSession "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p7

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "StackIF"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "participants: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-static/range {p1 .. p13}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeExtendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, p0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public handleCmcCsfb(II)V
    .locals 0

    .line 2110
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHandleCmcCsfb(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public handleDtmf(IIIIILandroid/os/Message;)V
    .locals 2

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDtmf: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHandleDtmf(IIIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public holdCall(IILandroid/os/Message;)V
    .locals 2

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHoldCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public holdVideo(IILandroid/os/Message;)V
    .locals 2

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdVideo: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeHoldVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public initCmcJni(Ljava/lang/Object;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->initCmc(Ljava/lang/Object;)V

    return-void
.end method

.method public initMediaJni(Ljava/lang/Object;)V
    .locals 0

    .line 373
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->initStack(Ljava/lang/Object;)V

    return-void
.end method

.method public makeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " origUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dispName "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    invoke-static/range {p5 .. p5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ecscf "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cli "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p10

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " PEmergencyInfo "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p11

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " alertInfo "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p13

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " isLteEpsOnlyAttached "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p14

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " p2p "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p15, :cond_0

    .line 1841
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const-string v8, "null"

    :goto_0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " cmcBoundSessionId "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " replaceCallId "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " cmcEdCallSlot "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "StackIF"

    .line 1834
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    invoke-static/range {p1 .. p19}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeMakeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    move-object v1, p0

    move-object/from16 v2, p20

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public mergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " session1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " session2 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " confUri "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1977
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callType "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eventSubscribe "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dialogType "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " origUri "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    invoke-static/range {p8 .. p8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " referUriType "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " removeReferUriType "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p10

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " referUseAsserted "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p11

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " useAnonymousUpdate "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p12

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "StackIF"

    .line 1975
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    invoke-static/range {p1 .. p14}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeMergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    move-object v1, p0

    move-object/from16 v2, p15

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public modifyCallType(III)V
    .locals 2

    .line 2058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeModifyCallType(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public modifyVideoQuality(III)V
    .locals 2

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyVideoQuality(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldQual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newQual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeModifyVideoQuality(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public networkSuspended(IZ)V
    .locals 2

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeNetworkSuspended(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public openSipDialog(Z)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "openSipDialog"

    .line 1047
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1052
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOpenSipDialog;->startRequestOpenSipDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1053
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOpenSipDialog;->addIsRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1054
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOpenSipDialog;->endRequestOpenSipDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1057
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x4b1

    .line 1058
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x68

    .line 1059
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1060
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1061
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 1063
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public progressIncomingCall(IILjava/util/HashMap;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "progressIncomingCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeProgressIncomingCall(IILjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 2036
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makePublishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/Dialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 2032
    invoke-static/range {p1 .. p6}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makePullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public register(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register: handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pcscfAddr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " port "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " service "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p5

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " imMsgTech "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p12

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "StackIF"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iput v1, v0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mHandle:I

    .line 690
    invoke-static/range {p1 .. p13}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeRegister(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v1

    move-object/from16 v2, p14

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public registerCallStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerCallStatusEvent:"

    .line 403
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCallStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerCdpnInfoEvent:"

    .line 506
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCdpnInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerCmcInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerCmcRecordEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerCmcRecordEvent:"

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mCmcRecordEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerConferenceUpdateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerConferenceUpdateEvent:"

    .line 451
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mConferenceUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerDedicatedBearerEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerDedicatedBearerEvent:"

    .line 520
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDedicatedBearerEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerDialogEvent: "

    .line 501
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDialogEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mDtmfRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerEcholocateEvent:"

    .line 531
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEcholocateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerEucrEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerEucrEvent"

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mEucrRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerForRrcConnectionEvent:"

    .line 526
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRrcConnectionEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerImHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerImdnHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImdnRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerIshEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mIshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerMiscListener(Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mMiscListener:Lcom/sec/internal/ims/core/handler/secims/StackIF$MiscEventListener;

    return-void
.end method

.method public registerModifyCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerModifyCallEvent:"

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerModifyVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerModifyVideoEvent:"

    .line 433
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mModifyVideoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerNewIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerNewIncomingCallEvent:"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingCallRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerNewIncomingSmsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerNewIncomingSmsEvent: "

    .line 457
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mNewIncomingSmsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerOptionsHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerOptionsHandler: "

    .line 496
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mOptionsRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerPresenceEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerPresenceEvent: "

    .line 491
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mPresenceRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerRawSipIncomingEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerRawSipIncomingEvent:"

    .line 537
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipIncomingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerRawSipOutgoingEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerRawSipOutgoingEvent:"

    .line 542
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRawSipOutgoingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerReferReceivedEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerReferReceivedEvent: "

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferReceivedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerReferStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mReferStatusRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerRtpLossRate : "

    .line 552
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mRtpLossRateNotiRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSIPMSGRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerSSEventRegistrants(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerRawSipEvent: "

    .line 547
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSSEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerSlmHandler(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSlmRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerSmsRpAckEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerSmsRpAckEvent:"

    .line 463
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mSmsRpAckRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mTextRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerUaListener(ILcom/sec/internal/ims/core/handler/secims/StackEventListener;)V
    .locals 2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerUaListener Handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "registerVideoEvent:"

    .line 439
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVideoEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerVshEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 516
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mVshRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerXqMtrip(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mXqMtripRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectCall(IILcom/sec/ims/util/SipError;Landroid/os/Message;)V
    .locals 3

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sessionId "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " response "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StackIF"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    new-instance p1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1880
    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1881
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->startRequestRejectCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p2

    .line 1882
    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1883
    invoke-virtual {p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p2

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->addStatusCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1884
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->addReasonPhrase(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1885
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectCall;->endRequestRejectCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    .line 1887
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p3, 0xd6

    .line 1888
    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p3, 0x15

    .line 1889
    invoke-static {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1890
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1892
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p2

    .line 1894
    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public rejectModifyCallType(II)V
    .locals 2

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeRejectModifyCallType(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public replyModifyCallType(IIIILjava/lang/String;)V
    .locals 2

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replyModifyCallType(): sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reqType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmcCallTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeReplyModifyCallType(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public requestOptionsReqCapabilityExchange(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move v0, p1

    .line 1461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOptionsReqCapabilityExchange: uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StackIF"

    .line 1461
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v5, v0

    move-object v3, p0

    move-object v4, v1

    move-object v7, p2

    move-wide v8, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 1465
    invoke-direct/range {v3 .. v11}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestCapabilityExchange(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/lang/String;JLjava/lang/String;Ljava/util/List;)I

    move-result v0

    .line 1467
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v3, 0x2ef

    .line 1468
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v3, 0x4e

    .line 1469
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1470
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1471
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    const/4 v3, 0x0

    move-object v4, p0

    .line 1472
    invoke-direct {p0, v1, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string v0, "requestOptionsReqCapabilityExchange: sent"

    .line 1474
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestOptionsReqSendCmcCheckMsg(ILjava/lang/String;)V
    .locals 4

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestOptionsReqSendCmcCheckMsg: uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    .line 1478
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1482
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1483
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->startRequestOptionsSendCmcCheckMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p1

    .line 1484
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1485
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1487
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendCmcCheckMsg;->endRequestOptionsSendCmcCheckMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1488
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2f1

    .line 1489
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x4f

    .line 1490
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1491
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1492
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 1494
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string p0, "requestOptionsReqSendCmcCheckMsg: sent"

    .line 1495
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestPublish(ILcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V
    .locals 12

    const-string v0, "StackIF"

    const-string v1, "request publish enter"

    .line 1359
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1363
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getDeviceList()Ljava/util/List;

    move-result-object v3

    .line 1364
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v4

    .line 1365
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPersonList()Ljava/util/List;

    move-result-object v5

    .line 1374
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, -0x1

    if-lez v6, :cond_1

    .line 1375
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 1376
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/presence/PersonTuple;

    add-int/lit8 v10, v8, 0x1

    .line 1377
    invoke-direct {p0, v1, v9}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->createPersonTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/PersonTuple;)I

    move-result v9

    aput v9, v6, v8

    move v8, v10

    goto :goto_0

    .line 1379
    :cond_0
    invoke-static {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createPersonTuplesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v7

    .line 1382
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1383
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 1384
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/presence/DeviceTuple;

    add-int/lit8 v10, v8, 0x1

    .line 1385
    invoke-direct {p0, v1, v9}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->createDeviceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/DeviceTuple;)I

    move-result v9

    aput v9, v6, v8

    move v8, v10

    goto :goto_2

    .line 1387
    :cond_2
    invoke-static {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createDeviceTuplesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, v7

    .line 1391
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1392
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 1393
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/ims/presence/ServiceTuple;

    add-int/lit8 v9, v2, 0x1

    .line 1394
    invoke-direct {p0, v1, v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->createServiceTuplesOffset(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/ims/presence/ServiceTuple;)I

    move-result v10

    aput v10, v6, v2

    .line 1395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serviceTuple.displayText : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/sec/ims/presence/ServiceTuple;->displayText:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    goto :goto_4

    .line 1397
    :cond_4
    invoke-static {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->createServiceTuplesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v7

    .line 1401
    :goto_5
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getEtag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1402
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getEtag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_6

    :cond_6
    move v4, v7

    .line 1406
    :goto_6
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 1407
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_7

    :cond_7
    move v6, v7

    .line 1411
    :goto_7
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 1412
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_8

    :cond_8
    move v8, v7

    .line 1416
    :goto_8
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPidf()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 1417
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPidf()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    goto :goto_9

    :cond_9
    move v9, v7

    .line 1420
    :goto_9
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->startRequestPresencePublish(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-ne v2, v7, :cond_a

    return-void

    .line 1424
    :cond_a
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addServiceTuples(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1426
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getEtag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1427
    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addETag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1429
    :cond_b
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getExpireTime()J

    move-result-wide v10

    invoke-static {v1, v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addExpireTime(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq v8, v7, :cond_c

    .line 1431
    invoke-static {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addTimestamp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_c
    if-eq v5, v7, :cond_d

    .line 1434
    invoke-static {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addPersonTuples(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_d
    if-eq v3, v7, :cond_e

    .line 1437
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addDeviceTuples(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_e
    if-eq v9, v7, :cond_f

    .line 1440
    invoke-static {v1, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addPidfXml(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_f
    if-eq v6, v7, :cond_10

    .line 1443
    invoke-static {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_10
    int-to-long v2, p1

    .line 1445
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1446
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getPublishGzipEnabled()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->addGzipEnable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1448
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresencePublish;->endRequestPresencePublish(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1449
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2bd

    .line 1450
    invoke-static {v1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x3e

    .line 1451
    invoke-static {v1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1452
    invoke-static {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1453
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1454
    invoke-direct {p0, v1, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string p0, "requestPublish: sent"

    .line 1456
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestSubscribe(ILcom/sec/ims/util/ImsUri;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 9

    .line 1752
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1753
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v5, p4

    move-object v8, p5

    .line 1754
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribe(ILjava/util/List;ZZLjava/lang/String;ZILandroid/os/Message;)V

    return-void
.end method

.method public requestSubscribeList(ILjava/util/List;ZLjava/lang/String;ZILandroid/os/Message;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 1761
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribe(ILjava/util/List;ZZLjava/lang/String;ZILandroid/os/Message;)V

    return-void
.end method

.method public requestUnpublish(I)V
    .locals 3

    .line 1814
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1815
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceUnpublish;->startRequestPresenceUnpublish(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 1816
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceUnpublish;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1817
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPresenceUnpublish;->endRequestPresenceUnpublish(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1818
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x2be

    .line 1819
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x3f

    .line 1820
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1821
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1822
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 1823
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string p0, "StackIF"

    const-string p1, "requestUnpublish: sent"

    .line 1825
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestUpdateFeatureTag(IJ)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "requestUpdateFeatureTag"

    .line 1073
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeRequestUpdateFeatureTag(IJ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public resumeCall(IILandroid/os/Message;)V
    .locals 2

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeResumeCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public resumeVideo(IILandroid/os/Message;)V
    .locals 2

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeVideo: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeResumeVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public send(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V
    .locals 2

    .line 580
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mRequest:Lcom/google/flatbuffers/FlatBufferBuilder;

    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mOffset:I

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;->mCallback:Landroid/os/Message;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendAlarmWakeUp(I)V
    .locals 3

    .line 2305
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2307
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAlarmWakeUp;->startRequestAlarmWakeUp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 2308
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAlarmWakeUp;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2309
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAlarmWakeUp;->endRequestAlarmWakeUp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2311
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x385

    .line 2312
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x6c

    .line 2313
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2314
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2316
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 2318
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendAuthResponse(IILjava/lang/String;)V
    .locals 2

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAuthResponse: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSendAuthResponse(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendCapexErrorResponse(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)I
    .locals 6

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCapexResvponse: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-nez p3, :cond_0

    return v0

    .line 1584
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCapexErrorResponse: uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "transaction Id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1586
    invoke-virtual {v2, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1587
    invoke-virtual {v2, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    .line 1590
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1591
    invoke-virtual {v2, p5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1594
    :cond_1
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->startRequestOptionsSendErrorResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v4, p1

    .line 1595
    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1596
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1597
    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->addTxId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1598
    invoke-static {v2, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->addErrorCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1599
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->addReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1601
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendErrorResponse;->endRequestOptionsSendErrorResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1602
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2f2

    .line 1603
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x4d

    .line 1604
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1605
    invoke-static {v2, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1606
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1607
    invoke-direct {p0, v2, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string p0, "sendCapexErrorResponse: sent"

    .line 1608
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public sendCapexResponse(ILjava/lang/String;JLjava/lang/String;ILandroid/os/Message;Ljava/lang/String;)I
    .locals 7

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCapexResponse: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-nez p5, :cond_0

    return v0

    .line 1504
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCapexResponse: uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "transaction Id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1506
    invoke-virtual {v2, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1507
    invoke-virtual {v2, p5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p5

    .line 1508
    invoke-virtual {v2, p8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p8

    .line 1514
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v4, v4

    cmp-long v4, p3, v4

    if-eqz v4, :cond_2

    .line 1515
    invoke-static {p3, p4}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object p3

    .line 1516
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_2

    .line 1517
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [I

    .line 1518
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v4, v3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    add-int/lit8 v6, v4, 0x1

    .line 1519
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, p4, v4

    move v4, v6

    goto :goto_0

    .line 1521
    :cond_1
    invoke-static {v2, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->createMyFeaturesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p3

    goto :goto_1

    :cond_2
    move p3, v0

    .line 1525
    :goto_1
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->startRequestOptionsSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v4, p1

    .line 1526
    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1527
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1528
    invoke-static {v2, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addLastSeen(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p3, v0, :cond_3

    .line 1530
    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addMyFeatures(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1532
    :cond_3
    invoke-static {v2, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addTxId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1533
    invoke-static {v2, p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addExtFeature(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1534
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->endRequestOptionsSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1535
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2f0

    .line 1536
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x4c

    .line 1537
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1538
    invoke-static {v2, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1539
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1540
    invoke-direct {p0, v2, p1, p7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string p0, "sendCapexResponse: sent"

    .line 1541
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public sendCapexResponse(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/os/Message;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Message;",
            ")I"
        }
    .end annotation

    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCapexResponse list: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-nez p4, :cond_0

    return v0

    .line 1551
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCapexResponse: uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "transaction Id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1553
    invoke-virtual {v2, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 1554
    invoke-virtual {v2, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p4

    .line 1556
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, p3, v4}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object p3

    .line 1558
    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->createMyFeatureListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p3

    .line 1559
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->startRequestOptionsSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v4, p1

    .line 1560
    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1561
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1562
    invoke-static {v2, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addLastSeen(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p3, v0, :cond_1

    .line 1564
    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addMyFeatureList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1566
    :cond_1
    invoke-static {v2, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->addTxId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1567
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestOptionsSendResponse;->endRequestOptionsSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1568
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x2f0

    .line 1569
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x4c

    .line 1570
    invoke-static {v2, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1571
    invoke-static {v2, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1572
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1573
    invoke-direct {p0, v2, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    const-string p0, "sendCapexResponse: list sent"

    .line 1574
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public sendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "sendCmcInfo"

    .line 2096
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendDmState(IZ)V
    .locals 3

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDmState():  mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSendDmState(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dnsQueryByNaptr: hostnames "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dnsservers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transport "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " family "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-static/range {p1 .. p9}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V
    .locals 2

    const-string v0, "StackIF"

    const-string v1, "sendInfo"

    .line 2090
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendMediaEvent(IIII)V
    .locals 3

    .line 2350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMediaEvent(): target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2355
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->startRequestSendMediaEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p4

    .line 2356
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addEventType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long v1, p3

    .line 2357
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long v1, p2

    .line 2358
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addTarget(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long v1, p1

    .line 2359
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2360
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMediaEvent;->endRequestSendMediaEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2363
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 p3, 0x1

    if-ne p4, p3, :cond_1

    if-eqz p2, :cond_0

    if-ne p2, p3, :cond_1

    :cond_0
    const/16 p2, 0xec

    .line 2365
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0xe6

    .line 2367
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :goto_0
    const/16 p2, 0x4a

    .line 2369
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2370
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2371
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 2373
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendRelayEvent(II)V
    .locals 3

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRelayEvent(): stream "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2382
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->startRequestSendRelayEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, p1

    .line 2383
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->addStreamId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    int-to-long p1, p2

    .line 2384
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2385
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRelayEvent;->endRequestSendRelayEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2388
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0xed

    .line 2389
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x4b

    .line 2390
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2391
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2392
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 2394
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 3

    const-string v0, "StackIF"

    const-string v1, "sendRtpStatsToStack()"

    .line 2404
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2409
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->startRequestRtpStatsToStack(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2410
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mDirection:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addDirection(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2411
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mMeasuredPeriod:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addMeasuredperiod(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2412
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mJitter:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addJitter(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2413
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mDelay:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addDelay(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2414
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mLossData:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addLossrate(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2415
    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mChannelId:I

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->addChannelid(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2416
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRtpStatsToStack;->endRequestRtpStatsToStack(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2419
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x388

    .line 2420
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x66

    .line 2421
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2422
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2423
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 2425
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendSip(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSip: sipMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1025
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1026
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    .line 1029
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->startRequestSendSip(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p2, v2, :cond_1

    .line 1031
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->addSipMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1
    int-to-long p1, p1

    .line 1033
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1034
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSip;->endRequestSendSip(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1037
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x4b0

    .line 1038
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x67

    .line 1039
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1040
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1041
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1043
    invoke-direct {p0, v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    .line 2218
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2219
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    .line 2220
    invoke-virtual {v0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p3

    .line 2221
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2222
    invoke-virtual {v0, p5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p5

    .line 2223
    invoke-virtual {v0, p6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p6

    const/4 v2, -0x1

    if-eqz p7, :cond_0

    .line 2226
    invoke-virtual {v0, p7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p7

    goto :goto_0

    :cond_0
    move p7, v2

    .line 2229
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->startRequestSendMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v3, p1

    .line 2230
    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2231
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addSmsc(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2232
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addLocalUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2233
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentLen(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2234
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2235
    invoke-static {v0, p5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2236
    invoke-static {v0, p6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addContentSubType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p7, v2, :cond_1

    .line 2238
    invoke-static {v0, p7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->addInReplyTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2240
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMsg;->endRequestSendMsg(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2242
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x191

    .line 2243
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x21

    .line 2244
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2245
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2247
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2249
    invoke-direct {p0, v0, p1, p8}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendSmsResponse(ILjava/lang/String;I)V
    .locals 4

    .line 2279
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 2282
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 2285
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->startRequestReceiveSmsResp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p1

    .line 2286
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v1, :cond_1

    .line 2288
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->addCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1
    int-to-long p1, p3

    .line 2290
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2291
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReceiveSmsResp;->endRequestReceiveSmsResp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2293
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x193

    .line 2294
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x23

    .line 2295
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2296
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2298
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 2300
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendSmsRpAckResponse(ILjava/lang/String;)V
    .locals 4

    .line 2254
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 2257
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 2260
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->startRequestSendRpAckResp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, p1

    .line 2261
    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq p2, v1, :cond_1

    .line 2263
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->addCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2265
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendRpAckResp;->endRequestSendRpAckResp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2267
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x192

    .line 2268
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x22

    .line 2269
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2270
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2272
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 2274
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public sendText(IILjava/lang/String;I)V
    .locals 2

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendText: sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,text "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSendText(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public sendX509CertVerifyResponse(ZLjava/lang/String;)V
    .locals 3

    .line 2322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendX509CertVerifyResponse(): result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2328
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 2329
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v2

    .line 2332
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->startRequestX509CertVerifyResult(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p2, v2, :cond_1

    .line 2334
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->addReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2336
    :cond_1
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->addResult(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 2337
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestX509CertVerifyResult;->endRequestX509CertVerifyResult(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2340
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x386

    .line 2341
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x6d

    .line 2342
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2343
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2344
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 2346
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public setImsFramework(Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method public setPreferredImpu(ILjava/lang/String;)V
    .locals 2

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferredImpu: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " impu "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->hidePrivateInfoFromSipMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSetPreferredImpu(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public setSilentLogEnabled(Z)V
    .locals 2

    .line 3321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSilentLogEnabled: onoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 3325
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSilentLogEnabled;->startRequestSilentLogEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 3326
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSilentLogEnabled;->addOnoff(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 3327
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSilentLogEnabled;->endRequestSilentLogEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 3330
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x387

    .line 3331
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x6e

    .line 3332
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 3333
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 3334
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 v1, 0x0

    .line 3336
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public setTextMode(II)V
    .locals 2

    .line 2398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextMode(): mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2400
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeSetTextMode(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public setVideoCrtAudio(IIZ)V
    .locals 2

    .line 2181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoCrtAudio: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeSetVideoCrtAudio(IIZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public startCamera(III)V
    .locals 2

    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCamera: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartCamera(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)V
    .locals 3

    .line 2207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startCmcRecord: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StackIF"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    invoke-static/range {p1 .. p16}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, p0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public startLocalRingBackTone(IIIILandroid/os/Message;)V
    .locals 2

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startLocalRingBackTone: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartLocalRingBackTone(IIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public startRecord(IILjava/lang/String;)V
    .locals 2

    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRecord: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartRecord(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public startVideoEarlyMedia(II)V
    .locals 0

    .line 2106
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStartVideoEarlyMedia(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public stopCamera(I)V
    .locals 2

    .line 1965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopCamera: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStopCamera(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public stopLocalRingBackTone(I)V
    .locals 2

    .line 2175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopLocalRingBackTone: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStopLocalRingBackTone(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public stopRecord(II)V
    .locals 2

    .line 2193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopRecord: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeStopRecord(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public supportVoWiFiDeprioritizeNR5G(IZ)V
    .locals 3

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "supportVoWiFiDeprioritizeNR5G: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " deprioritizeNR5G: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v1, p1

    .line 998
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->supportVoWiFiDeprioritizeNR5GReq(Lcom/google/flatbuffers/FlatBufferBuilder;JZ)I

    move-result p1

    .line 1001
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x75

    .line 1002
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1004
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1005
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1007
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 1009
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public supportVoWiFiDisable5GSA(IZ)V
    .locals 3

    .line 973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "supportVoWiFiDisable5GSA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " disable5GSA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v1, p1

    .line 978
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->supportVoWiFiDisable5GSAReq(Lcom/google/flatbuffers/FlatBufferBuilder;JZ)I

    move-result p1

    .line 981
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x73

    .line 982
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x74

    .line 984
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 985
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 987
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 989
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public transferCall(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0

    .line 2023
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeTransferCall(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public unRegisterUaListener(I)V
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterUaListener Handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackIF;->mUaListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateAudioInterface(ILjava/lang/String;Landroid/os/Message;)V
    .locals 2

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAudioInterface: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateAudioInterface(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateCall(IIIILjava/lang/String;)V
    .locals 0

    .line 2086
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateCmcExtCallCount(II)V
    .locals 0

    .line 2102
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateCmcExtCallCount(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateConfCall(IIIILjava/lang/String;)V
    .locals 2

    .line 2016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateConfCall: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " confSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " updateCmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " participantID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->makeUpdateConfCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateGeolocation(ILcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .locals 21

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StackIF"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 781
    iget-object v3, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 782
    iget-object v3, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLatitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 786
    :goto_0
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 787
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLongitude:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    .line 791
    :goto_1
    iget-object v6, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAltitude:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 792
    iget-object v6, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAltitude:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    goto :goto_2

    :cond_2
    const/4 v6, -0x1

    .line 796
    :goto_2
    iget-object v7, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAccuracy:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 797
    iget-object v7, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mAccuracy:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, -0x1

    .line 801
    :goto_3
    iget-object v8, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mVerticalAxis:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 802
    iget-object v8, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mVerticalAxis:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    goto :goto_4

    :cond_4
    const/4 v8, -0x1

    .line 806
    :goto_4
    iget-object v9, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOrientation:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 807
    iget-object v9, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOrientation:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    goto :goto_5

    :cond_5
    const/4 v9, -0x1

    .line 811
    :goto_5
    iget-object v10, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mProviderType:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 812
    iget-object v10, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mProviderType:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    goto :goto_6

    :cond_6
    const/4 v10, -0x1

    .line 816
    :goto_6
    iget-object v11, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRetentionExpires:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 817
    iget-object v11, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRetentionExpires:Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    goto :goto_7

    :cond_7
    const/4 v11, -0x1

    .line 821
    :goto_7
    iget-object v12, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mSRSName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 822
    iget-object v12, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mSRSName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    goto :goto_8

    :cond_8
    const/4 v12, -0x1

    .line 826
    :goto_8
    iget-object v13, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRadiusUOM:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 827
    iget-object v13, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mRadiusUOM:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    goto :goto_9

    :cond_9
    const/4 v13, -0x1

    .line 831
    :goto_9
    iget-object v14, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOS:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 832
    iget-object v14, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mOS:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    goto :goto_a

    :cond_a
    const/4 v14, -0x1

    .line 836
    :goto_a
    iget-object v15, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mDeviceId:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 837
    iget-object v15, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    goto :goto_b

    :cond_b
    const/4 v15, -0x1

    .line 841
    :goto_b
    iget-object v4, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 842
    iget-object v4, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_c

    :cond_c
    const/4 v4, -0x1

    .line 846
    :goto_c
    iget-object v0, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 847
    iget-object v0, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA1:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    move/from16 v16, v3

    goto :goto_d

    :cond_d
    move/from16 v16, v3

    const/4 v0, -0x1

    .line 851
    :goto_d
    iget-object v3, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA3:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 852
    iget-object v3, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move/from16 v17, v5

    goto :goto_e

    :cond_e
    move/from16 v17, v5

    const/4 v3, -0x1

    .line 856
    :goto_e
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA6:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 857
    iget-object v5, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mA6:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    move/from16 v18, v6

    goto :goto_f

    :cond_f
    move/from16 v18, v6

    const/4 v5, -0x1

    .line 861
    :goto_f
    iget-object v6, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mHNO:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 862
    iget-object v6, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mHNO:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    move/from16 v19, v7

    goto :goto_10

    :cond_10
    move/from16 v19, v7

    const/4 v6, -0x1

    .line 866
    :goto_10
    iget-object v7, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mPC:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 867
    iget-object v7, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mPC:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    move/from16 v20, v8

    goto :goto_11

    :cond_11
    move/from16 v20, v8

    const/4 v7, -0x1

    .line 871
    :goto_11
    iget-object v8, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 872
    iget-object v1, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mLocationTime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_12

    :cond_12
    const/4 v1, -0x1

    .line 875
    :goto_12
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->startRequestUpdateGeolocation(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/4 v8, -0x1

    if-eq v1, v8, :cond_13

    .line 878
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addLocationtime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_13
    if-eq v7, v8, :cond_14

    .line 882
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addPc(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_14
    if-eq v6, v8, :cond_15

    .line 886
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addHno(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_15
    if-eq v5, v8, :cond_16

    .line 890
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addA6(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_16
    if-eq v3, v8, :cond_17

    .line 894
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addA3(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_17
    if-eq v0, v8, :cond_18

    .line 898
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addA1(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_18
    if-eq v4, v8, :cond_19

    .line 902
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addCountry(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_19
    if-eq v15, v8, :cond_1a

    .line 906
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addDeviceid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1a
    if-eq v14, v8, :cond_1b

    .line 910
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addOs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1b
    if-eq v13, v8, :cond_1c

    .line 914
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addRadiusuom(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1c
    if-eq v12, v8, :cond_1d

    .line 918
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addSrsname(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1d
    if-eq v11, v8, :cond_1e

    .line 922
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addRetentionexpires(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1e
    if-eq v10, v8, :cond_1f

    .line 926
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addProvidertype(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_1f
    if-eq v9, v8, :cond_20

    .line 930
    invoke-static {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addOrientation(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_20
    move/from16 v4, v20

    if-eq v4, v8, :cond_21

    .line 934
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addVerticalaxis(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_21
    move/from16 v4, v19

    if-eq v4, v8, :cond_22

    .line 938
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addAccuracy(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_22
    move/from16 v4, v18

    if-eq v4, v8, :cond_23

    .line 942
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addAltitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_23
    move/from16 v4, v17

    if-eq v4, v8, :cond_24

    .line 946
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addLongitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_24
    move/from16 v3, v16

    if-eq v3, v8, :cond_25

    .line 950
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addLatitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_25
    move/from16 v0, p1

    int-to-long v0, v0

    .line 953
    invoke-static {v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 954
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateGeolocation;->endRequestUpdateGeolocation(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 957
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x259

    .line 958
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x59

    .line 959
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 960
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 961
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    const/4 v1, 0x0

    move-object/from16 v3, p0

    .line 963
    invoke-direct {v3, v2, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public updateNtpTimeOffset(J)V
    .locals 2

    .line 3340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNtpTimeOffset : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 3343
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNtpTimeOffset;->startRequestNtpTimeOffset(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 3344
    invoke-static {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNtpTimeOffset;->addOffset(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 3345
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNtpTimeOffset;->endRequestNtpTimeOffset(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 3347
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x389

    .line 3348
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x6f

    .line 3349
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 3350
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 3351
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 3353
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public updatePani(ILjava/util/List;Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v1, p1

    .line 723
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updatePaniReq(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/util/List;)I

    move-result p1

    .line 725
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x258

    .line 726
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x44

    .line 728
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 729
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 731
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 733
    invoke-direct {p0, v0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public updateRat(II)V
    .locals 8

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v4, p1

    int-to-long v6, p2

    move-object v2, p0

    move-object v3, v0

    .line 761
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->ratReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I

    move-result p1

    .line 763
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x25a

    .line 764
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x50

    .line 766
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 767
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 769
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 771
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public updateScreenOnOff(II)V
    .locals 2

    .line 2138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScreenOnOff: on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2140
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateScreenOnOff(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateServiceVersion(ILjava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateServiceVersion:phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2150
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateServiceVersion(ILjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateTimeInPlani(IJ)V
    .locals 8

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTimeInPlani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    int-to-long v4, p1

    move-object v2, p0

    move-object v3, v0

    move-wide v6, p2

    .line 742
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->planiTimeReq(Lcom/google/flatbuffers/FlatBufferBuilder;JJ)I

    move-result p1

    .line 744
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x25b

    .line 745
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x51

    .line 747
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 748
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 750
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    const/4 p2, 0x0

    .line 752
    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method public updateVceConfig(IZ)V
    .locals 2

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVceConfig: handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vceEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StackIF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateVceConfig(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method

.method public updateXqEnable(IZ)V
    .locals 3

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StackIF["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateXqEnable():  enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->makeUpdateXqEnable(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRequest(Lcom/sec/internal/ims/core/handler/secims/StackRequest;Landroid/os/Message;)V

    return-void
.end method
