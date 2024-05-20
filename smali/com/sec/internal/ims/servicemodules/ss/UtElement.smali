.class Lcom/sec/internal/ims/servicemodules/ss/UtElement;
.super Ljava/lang/Object;
.source "UtConfigData.java"


# static fields
.field public static final ELEMENT_CF:Ljava/lang/String; = "communication-diversion"

.field public static final ELEMENT_CLI_NOT_RESTRICTED:Ljava/lang/String; = "presentation-not-restricted"

.field public static final ELEMENT_CLI_RESTRICTED:Ljava/lang/String; = "presentation-restricted"

.field public static final ELEMENT_CONDITION:Ljava/lang/String; = "conditions"

.field public static final ELEMENT_CW:Ljava/lang/String; = "communication-waiting"

.field public static final ELEMENT_DEFAULT_BEHAV:Ljava/lang/String; = "default-behaviour"

.field public static final ELEMENT_ICB:Ljava/lang/String; = "incoming-communication-barring"

.field public static final ELEMENT_IDENTITY:Ljava/lang/String; = "identity"

.field public static final ELEMENT_OCB:Ljava/lang/String; = "outgoing-communication-barring"

.field public static final ELEMENT_OIP:Ljava/lang/String; = "originating-identity-presentation"

.field public static final ELEMENT_OIR:Ljava/lang/String; = "originating-identity-presentation-restriction"

.field public static final ELEMENT_ONE:Ljava/lang/String; = "one"

.field public static final ELEMENT_RULE:Ljava/lang/String; = "rule"

.field public static final ELEMENT_RULE_DEACTIVATED:Ljava/lang/String; = "rule-deactivated"

.field public static final ELEMENT_RULE_SET:Ljava/lang/String; = "ruleset"

.field public static final PARSE_BEHAVIOUR:Ljava/lang/String; = "//*[contains(local-name(), \'default-behaviour\')]"

.field public static final PARSE_ERROR:Ljava/lang/String; = "//*[local-name()=\'constraint-failure\']"

.field public static final PARSE_NO_REPLY_TIMER:Ljava/lang/String; = "//*[local-name()=\'NoReplyTimer\']"

.field public static final PARSE_ROOT_ACTIVATION:Ljava/lang/String; = "//@active"

.field public static final PARSE_ROOT_BARRING:Ljava/lang/String; = "//*[contains(local-name(), \'barring\')]"

.field public static final PARSE_RULE:Ljava/lang/String; = "//*[local-name()=\'rule\']"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
