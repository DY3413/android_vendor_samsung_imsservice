.class public Lcom/sec/internal/ims/config/adapters/DialogAdapter;
.super Landroid/os/Handler;
.source "DialogAdapter.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;,
        Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;,
        Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;
    }
.end annotation


# static fields
.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final CANCEL_TC_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

.field static final HANDLE_CREATE_SHOW_ACCEPT_REJECT:I = 0x0

.field static final HANDLE_CREATE_SHOW_AUTOCONFIG:I = 0x5

.field static final HANDLE_CREATE_SHOW_MSISDN:I = 0x2

.field static final HANDLE_SIM_STATE_ABSENT:I = 0x6

.field static final KEY_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final LOG_TAG:Ljava/lang/String;

.field static final RCS_MSISDN_PROMPT_NOTIFICATION:I = 0x3636a01

.field static final RCS_TC_NOTIFICATION:I = 0xa807ad

.field public static final SHOW_MSISDN_POPUP:Ljava/lang/String; = "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

.field public static final SHOW_TC_POPUP:Ljava/lang/String; = "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"

.field static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"


# instance fields
.field private mAccept:Ljava/lang/String;

.field private mAcceptReject:Z

.field private final mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field protected mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

.field private mMessage:Ljava/lang/String;

.field private mMsisdn:Ljava/lang/String;

.field private mNextCancel:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneId:I

.field private mRcsTcNotification:Z

.field private mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

.field private mReceiverForTcPopup:Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;

.field private mReject:Ljava/lang/String;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mSkip:Z

.field private mSupportNotiBar:Z

.field private mTcPopupFlag:Z

.field private mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mTitle:Ljava/lang/String;

.field private mYesNo:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccept(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountryCode(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessage(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/NotificationManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReject(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemaphore(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/util/concurrent/Semaphore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportNotiBar(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTcPopupFlag(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephony(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Lcom/sec/internal/helper/os/ITelephonyManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAcceptReject(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMsisdn(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextCancel(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRcsTcNotification(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mRcsTcNotification:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSkip(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTcPopupFlag(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmYesNo(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misStringValid(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isStringValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshallRcsRegisterByDefault(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shallRcsRegisterByDefault(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munregisterReceiverForTcPopup(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->unregisterReceiverForTcPopup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smshouldShowButton(Ljava/lang/String;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shouldShowButton(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 66
    const-class v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .registers 5

    .line 116
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 87
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    .line 90
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mCountryCode:Ljava/lang/String;

    .line 99
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    .line 100
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    .line 101
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    .line 102
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    const-string v1, ""

    .line 103
    iput-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    .line 105
    iput-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mRcsTcNotification:Z

    .line 108
    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 134
    new-instance p2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    .line 163
    new-instance p2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;

    invoke-direct {p2, p0, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup-IA;)V

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiverForTcPopup:Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;

    .line 208
    new-instance p2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    .line 117
    sget-object p2, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string v1, "Init DialogAdapter"

    invoke-static {p2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    const-string p2, "notification"

    .line 119
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    .line 121
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 122
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->registerReceivers()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V
    .registers 4

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    .line 112
    iput p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    return-void
.end method

.method private checkNightMode(Landroid/content/Context;)I
    .registers 2

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-eqz p0, :cond_19

    const p0, 0x10302d1

    goto :goto_1c

    :cond_19
    const p0, 0x10302d2

    :goto_1c
    return p0
.end method

.method private createAcceptRejectBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .registers 10

    .line 477
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->checkNightMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 479
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f050004

    const/4 v3, 0x0

    .line 480
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const v2, 0x7f030006

    .line 481
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 482
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_2a

    .line 485
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_2a
    const p2, 0x7f030005

    .line 488
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p3, :cond_3d

    .line 490
    new-instance v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    invoke-static {p2, p3, v1}, Lcom/sec/internal/helper/userconsent/HyperlinkUtils;->processLinks(Landroid/widget/TextView;Ljava/lang/String;Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;)V

    :cond_3d
    const-string p2, "1"

    .line 512
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_69

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07000f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 514
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_61

    .line 515
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070008

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 517
    :cond_61
    new-instance p4, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;

    invoke-direct {p4, p0, p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 538
    :cond_69
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 540
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070011

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$3;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$3;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 539
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    :cond_82
    new-instance p1, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private createAutoconfigBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 5

    .line 672
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->checkNightMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 674
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 677
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$9;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$9;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 680
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 693
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07000a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$10;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 692
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private createMsisdnBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 9

    .line 572
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->checkNightMode(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 574
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v1

    const v2, 0x7f07000c

    if-eqz v1, :cond_3b

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[SIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_46

    .line 578
    :cond_3b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 582
    :goto_46
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f050004

    const/4 v3, 0x0

    .line 583
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const v4, 0x7f030006

    .line 584
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f050005

    .line 586
    invoke-virtual {v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f030005

    .line 588
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 589
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f030001

    .line 592
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 593
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v1, ""

    .line 595
    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a8

    const-string/jumbo v1, "skip"

    iget-object v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a8

    .line 596
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_a8
    const/4 v1, 0x3

    .line 599
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 600
    new-instance v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter$5;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$5;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 620
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 623
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Landroid/widget/EditText;)V

    .line 622
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 637
    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 638
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isEnableUPInImsprofile()Z

    move-result v2

    if-eqz v2, :cond_dc

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v1

    if-nez v1, :cond_ef

    .line 640
    :cond_dc
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 639
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 653
    :cond_ef
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isEnableUPInImsprofile()Z

    move-result v1

    if-eqz v1, :cond_108

    .line 655
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070012

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/config/adapters/DialogAdapter$8;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$8;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 654
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_108
    return-object v0
.end method

.method private isEnableUPInImsprofile()Z
    .registers 1

    .line 707
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0

    .line 708
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isStringValid(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private registerReceiverForTcPopup()V
    .registers 3

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiverForTcPopup:Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerReceivers()V
    .registers 4

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private shallRcsRegisterByDefault(Ljava/lang/String;)Z
    .registers 5

    .line 720
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 721
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_SPAIN:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, "1"

    .line 722
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method private static shouldShowButton(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "1"

    .line 371
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private showRcsNotification(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 243
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showRcsNotification: type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 248
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f020004

    .line 249
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    .line 250
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    .line 251
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v4, 0xa807ad

    const/high16 v5, 0x2000000

    const-string v6, "phone_id"

    if-eq p1, v4, :cond_bc

    const p2, 0x3636a01

    if-eq p1, p2, :cond_5d

    .line 277
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string/jumbo p1, "showRcsNotification: unsupported type!"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 266
    :cond_5d
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    iget p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-virtual {p2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    iget-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr v0, p1

    invoke-static {p3, v0, p2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 271
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07000c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [SIM"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr v0, v3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 273
    iget-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07000b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_eb

    .line 255
    :cond_bc
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mRcsTcNotification:Z

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    iget v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr v4, p1

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 261
    invoke-static {p3, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 262
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 263
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object p2, v0

    :goto_eb
    if-eqz p2, :cond_f0

    .line 281
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 283
    :cond_f0
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 284
    iget-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    add-int/2addr p1, p0

    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private unregisterReceiverForTcPopup()V
    .registers 3

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiverForTcPopup:Lcom/sec/internal/ims/config/adapters/DialogAdapter$ReceiverForTcPopup;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_12

    .line 204
    :catch_8
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string/jumbo v1, "unregisterReceiverForTcPopup: Receiver not registered!"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_12
    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 3

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialogNotiReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;

    if-eqz v0, :cond_9

    .line 728
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 730
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReceiver:Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;

    if-eqz v0, :cond_12

    .line 731
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_12
    return-void
.end method

.method public getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 376
    iget v5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getAcceptReject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    .line 381
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    .line 382
    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    .line 383
    iput-object p3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    .line 384
    iput-object p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    .line 385
    iput p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    .line 387
    sget-object p3, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getAcceptReject"

    invoke-static {p3, p5, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 389
    iget-object p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isStringValid(Ljava/lang/String;)Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_9f

    iget-object p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->isStringValid(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_9f

    iget-object p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    .line 390
    invoke-static {p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shouldShowButton(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_33

    iget-object p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    invoke-static {p5}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shouldShowButton(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_33

    goto :goto_9f

    :cond_33
    const p5, 0xa807ad

    .line 396
    invoke-direct {p0, p5, p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->showRcsNotification(ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "user_setup_complete"

    const/4 p5, 0x0

    .line 397
    invoke-static {p1, p2, p5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_4b

    move p1, v0

    goto :goto_4c

    :cond_4b
    move p1, p5

    .line 399
    :goto_4c
    iget-boolean p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    if-nez p2, :cond_66

    if-eqz p1, :cond_66

    .line 400
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string/jumbo p2, "support_notification_for_TnC"

    .line 401
    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    .line 402
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 405
    :cond_66
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string p2, "getAcceptReject: wait yes or no"

    invoke-static {p3, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->shallRcsRegisterByDefault(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_76

    .line 407
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    goto :goto_80

    .line 410
    :cond_76
    :try_start_76
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_7b
    .catch Ljava/lang/InterruptedException; {:try_start_76 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception p1

    .line 412
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 415
    :goto_80
    sget-object p1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getAcceptReject: receive yes or no:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    iput-boolean p5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    .line 417
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAcceptReject:Z

    return p0

    .line 391
    :cond_9f
    :goto_9f
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "popup dialog cancelled mTitle: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", mMessage: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", mAccept: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", mReject: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 429
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mCountryCode:Ljava/lang/String;

    .line 431
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    .line 432
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    .line 431
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    move v1, v0

    :cond_14
    if-eqz v1, :cond_1b

    const/4 p1, 0x2

    .line 434
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22

    :cond_1b
    const p1, 0x3636a01

    const/4 v0, 0x0

    .line 436
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->showRcsNotification(ILjava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_22
    sget-object p1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string v1, "getMsisdn: wait MSISDN"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 441
    :try_start_2b
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    .line 443
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 445
    :goto_35
    sget-object p1, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMsisdn: mYesNo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSkip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 446
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mYesNo:Z

    if-eqz v0, :cond_7a

    .line 447
    iget v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMsisdn: receive MSISDN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_83

    .line 448
    :cond_7a
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSkip:Z

    if-eqz p1, :cond_83

    const-string/jumbo p1, "skip"

    .line 449
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    .line 451
    :cond_83
    :goto_83
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    return-object p0
.end method

.method public getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 422
    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMsisdn:Ljava/lang/String;

    .line 423
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMsisdn: old msisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " entered earlier by user"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 424
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNextCancel()Z
    .registers 5

    const/4 v0, 0x5

    .line 456
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 458
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string v2, "getNextCancel: wait Next or Cancel"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 460
    :try_start_d
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 464
    :goto_17
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextCancel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 465
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mNextCancel:Z

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 289
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 291
    sget-object v0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x10100

    const/16 v3, 0x7f6

    if-eqz v1, :cond_f9

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v4, :cond_ac

    const/4 v4, 0x5

    if-eq v1, v4, :cond_68

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3a

    .line 362
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string/jumbo p1, "unknown message!!"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_162

    .line 348
    :cond_3a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/AlertDialog;

    .line 349
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mRcsTcNotification:Z

    if-eqz v1, :cond_55

    .line 350
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "phone_id"

    .line 351
    iget v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_55
    if-eqz p1, :cond_162

    .line 355
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 356
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 357
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string p1, "dismiss Dialog"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_162

    .line 333
    :cond_68
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createAutoconfigBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    const-string/jumbo p1, "ro.build.scafe.cream"

    .line 334
    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "white"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 335
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_a0

    .line 338
    :cond_8e
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 340
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setType(I)V

    .line 343
    :goto_a0
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 344
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_162

    .line 318
    :cond_ac
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createMsisdnBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 319
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string/jumbo p1, "ro.build.scafe.version"

    .line 322
    invoke-static {p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "2017A"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_db

    .line 323
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 325
    :cond_db
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setType(I)V

    .line 327
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 328
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 329
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_162

    .line 294
    :cond_f9
    iget v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    const-string v4, "accept, reject dialog create & show"

    invoke-static {v0, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 296
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    .line 297
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_10f

    .line 298
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    .line 300
    :cond_10f
    iget p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "support_notification_for_TnC : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    if-eqz p1, :cond_12f

    .line 303
    invoke-direct {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->registerReceiverForTcPopup()V

    .line 305
    :cond_12f
    iget-object v5, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mMessage:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mAccept:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mReject:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createAcceptRejectBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    .line 307
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 310
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setType(I)V

    .line 312
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mSupportNotiBar:Z

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 313
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mTcPopupFlag:Z

    .line 314
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_162
    :goto_162
    return-void
.end method
