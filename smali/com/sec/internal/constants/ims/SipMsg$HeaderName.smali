.class public final enum Lcom/sec/internal/constants/ims/SipMsg$HeaderName;
.super Ljava/lang/Enum;
.source "SipMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/SipMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/SipMsg$HeaderName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum ACCEPT_CONTACT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum ALLOW:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum AUTHENTICATION_INFO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum AUTHORIZATION:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum CALL_ID:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum CALL_INFO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum CONTACT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum CONTENT_LENGTH:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum CONTENT_TYPE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum CSEQ:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum EVENT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum EXPIRES:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum FROM:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum IN_REPLY_TO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum MIN_EXPIRES:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum PROXY_AUTHENTICATE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum PROXY_AUTHORIZATION:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum PROXY_REQUIRE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum P_ACCESS_NETWORK_INFO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum P_ASSOCIATED_URI:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum P_LAST_ACCESS_NETWORK_INFO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum RECORD_ROUTE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum REQUIRE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum RETRY_AFTER:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum ROUTE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum SECURITY_VERIFY:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum SERVICE_ROUTE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum SUPPORTED:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum TO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum UNKNOWN:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum USER_AGENT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum VIA:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

.field public static final enum WWW_AUTHENTICATE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;


# instance fields
.field mCompact:Ljava/lang/String;

.field mStr:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$7SqPNOtCQ8c79pjtLed84rIMB9Y(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->lambda$isOneOf$0(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 36

    .line 189
    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->UNKNOWN:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 190
    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v3, "ACCEPT_CONTACT"

    const/4 v4, 0x1

    const-string v5, "Accept-Contact"

    const-string v6, "a"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->ACCEPT_CONTACT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 191
    new-instance v3, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v5, "ALLOW"

    const/4 v6, 0x2

    const-string v7, "Allow"

    invoke-direct {v3, v5, v6, v7}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->ALLOW:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 192
    new-instance v5, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v7, "AUTHENTICATION_INFO"

    const/4 v8, 0x3

    const-string v9, "Authentication-Info"

    invoke-direct {v5, v7, v8, v9}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->AUTHENTICATION_INFO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 193
    new-instance v7, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v9, "AUTHORIZATION"

    const/4 v10, 0x4

    const-string v11, "Authorization"

    invoke-direct {v7, v9, v10, v11}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->AUTHORIZATION:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 194
    new-instance v9, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v11, "CALL_ID"

    const/4 v12, 0x5

    const-string v13, "Call-ID"

    const-string v14, "i"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CALL_ID:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 195
    new-instance v11, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v13, "CALL_INFO"

    const/4 v14, 0x6

    const-string v15, "Call-Info"

    invoke-direct {v11, v13, v14, v15}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CALL_INFO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 196
    new-instance v13, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v15, "CONTACT"

    const/4 v14, 0x7

    const-string v12, "Contact"

    const-string v10, "m"

    invoke-direct {v13, v15, v14, v12, v10}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CONTACT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 197
    new-instance v10, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v12, "CONTENT_LENGTH"

    const/16 v15, 0x8

    const-string v14, "Content-Length"

    const-string v8, "l"

    invoke-direct {v10, v12, v15, v14, v8}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CONTENT_LENGTH:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 198
    new-instance v8, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v12, "CONTENT_TYPE"

    const/16 v14, 0x9

    const-string v15, "Content-Type"

    const-string v6, "c"

    invoke-direct {v8, v12, v14, v15, v6}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CONTENT_TYPE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 199
    new-instance v6, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v12, "CSEQ"

    const/16 v15, 0xa

    const-string v14, "CSeq"

    invoke-direct {v6, v12, v15, v14}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->CSEQ:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 200
    new-instance v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v14, "EVENT"

    const/16 v15, 0xb

    const-string v4, "Event"

    invoke-direct {v12, v14, v15, v4}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->EVENT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 201
    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v14, "EXPIRES"

    const/16 v15, 0xc

    const-string v2, "Expires"

    invoke-direct {v4, v14, v15, v2}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->EXPIRES:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 202
    new-instance v2, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v14, "FROM"

    const/16 v15, 0xd

    move-object/from16 v16, v4

    const-string v4, "From"

    move-object/from16 v17, v12

    const-string v12, "f"

    invoke-direct {v2, v14, v15, v4, v12}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->FROM:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 203
    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v12, "IN_REPLY_TO"

    const/16 v14, 0xe

    const-string v15, "In-Reply-To"

    invoke-direct {v4, v12, v14, v15}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->IN_REPLY_TO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 204
    new-instance v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v15, "MIN_EXPIRES"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "Min-Expires"

    invoke-direct {v12, v15, v14, v4}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->MIN_EXPIRES:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 205
    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v15, "P_ACCESS_NETWORK_INFO"

    const/16 v14, 0x10

    move-object/from16 v19, v12

    const-string v12, "P-Access-Network-Info"

    invoke-direct {v4, v15, v14, v12}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->P_ACCESS_NETWORK_INFO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 206
    new-instance v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v15, "P_ASSOCIATED_URI"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "P-Associated-URI"

    invoke-direct {v12, v15, v14, v4}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->P_ASSOCIATED_URI:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 207
    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v15, "P_LAST_ACCESS_NETWORK_INFO"

    const/16 v14, 0x12

    move-object/from16 v21, v12

    const-string v12, "P-Last-Access-Network-Info"

    invoke-direct {v4, v15, v14, v12}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->P_LAST_ACCESS_NETWORK_INFO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 208
    new-instance v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v15, "PROXY_AUTHENTICATE"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "Proxy-Authenticate"

    invoke-direct {v12, v15, v14, v4}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->PROXY_AUTHENTICATE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 209
    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v15, "PROXY_AUTHORIZATION"

    const/16 v14, 0x14

    move-object/from16 v23, v12

    const-string v12, "Proxy-Authorization"

    invoke-direct {v4, v15, v14, v12}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->PROXY_AUTHORIZATION:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 210
    new-instance v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v15, "PROXY_REQUIRE"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "Proxy-Require"

    invoke-direct {v12, v15, v14, v4}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->PROXY_REQUIRE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 211
    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v15, "RECORD_ROUTE"

    const/16 v14, 0x16

    move-object/from16 v25, v12

    const-string v12, "Record-Route"

    invoke-direct {v4, v15, v14, v12}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->RECORD_ROUTE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 212
    new-instance v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v14, "REQUIRE"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "Require"

    invoke-direct {v12, v14, v15, v4}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->REQUIRE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 213
    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v14, "RETRY_AFTER"

    const/16 v15, 0x18

    move-object/from16 v27, v12

    const-string v12, "Retry-After"

    invoke-direct {v4, v14, v15, v12}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->RETRY_AFTER:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 214
    new-instance v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v14, "ROUTE"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "Route"

    invoke-direct {v12, v14, v15, v4}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->ROUTE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 215
    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v14, "SECURITY_VERIFY"

    const/16 v15, 0x1a

    move-object/from16 v29, v12

    const-string v12, "Security-Verify"

    invoke-direct {v4, v14, v15, v12}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->SECURITY_VERIFY:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 216
    new-instance v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v14, "SERVICE_ROUTE"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const-string v4, "Service-Route"

    invoke-direct {v12, v14, v15, v4}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->SERVICE_ROUTE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 217
    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v14, "SUPPORTED"

    const/16 v15, 0x1c

    move-object/from16 v31, v12

    const-string v12, "Supported"

    move-object/from16 v32, v2

    const-string v2, "k"

    invoke-direct {v4, v14, v15, v12, v2}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->SUPPORTED:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 218
    new-instance v2, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v12, "TO"

    const/16 v14, 0x1d

    const-string v15, "To"

    move-object/from16 v33, v4

    const-string/jumbo v4, "t"

    invoke-direct {v2, v12, v14, v15, v4}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->TO:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 219
    new-instance v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v12, "USER_AGENT"

    const/16 v14, 0x1e

    const-string v15, "User-Agent"

    invoke-direct {v4, v12, v14, v15}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->USER_AGENT:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 220
    new-instance v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v14, "VIA"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const-string v4, "Via"

    move-object/from16 v35, v2

    const-string/jumbo v2, "v"

    invoke-direct {v12, v14, v15, v4, v2}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->VIA:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    .line 221
    new-instance v2, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const-string v4, "WWW_AUTHENTICATE"

    const/16 v14, 0x20

    const-string v15, "WWW-Authenticate"

    invoke-direct {v2, v4, v14, v15}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->WWW_AUTHENTICATE:Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const/16 v4, 0x21

    new-array v4, v4, [Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v10, v4, v0

    const/16 v0, 0x9

    aput-object v8, v4, v0

    const/16 v0, 0xa

    aput-object v6, v4, v0

    const/16 v0, 0xb

    aput-object v17, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v32, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v33, v4, v0

    const/16 v0, 0x1d

    aput-object v35, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v12, v4, v0

    const/16 v0, 0x20

    aput-object v2, v4, v0

    .line 188
    sput-object v4, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->$VALUES:[Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 227
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p3, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->mStr:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    iput-object p4, p0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->mCompact:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$isOneOf$0(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/SipMsg$HeaderName;
    .locals 1

    .line 188
    const-class v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/SipMsg$HeaderName;
    .locals 1

    .line 188
    sget-object v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->$VALUES:[Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/SipMsg$HeaderName;

    return-object v0
.end method


# virtual methods
.method get()Ljava/lang/String;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName;->mStr:Ljava/lang/String;

    return-object p0
.end method

.method varargs isOneOf([Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)Z
    .locals 1

    .line 240
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/constants/ims/SipMsg$HeaderName$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/SipMsg$HeaderName$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/constants/ims/SipMsg$HeaderName;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
