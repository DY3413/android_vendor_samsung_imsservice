.class public Lcom/samsung/android/cmcnsd/extension/ContextExt;
.super Ljava/lang/Object;
.source "ContextExt.java"


# static fields
.field public static final ALL:Landroid/os/UserHandle;

.field public static final CURRENT:Landroid/os/UserHandle;

.field public static final CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final HQM_SERVICE:Ljava/lang/String;

.field public static final OWNER:Landroid/os/UserHandle;

.field public static final STATUS_BAR_SERVICE:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 20
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "OWNER"

    invoke-static {v1, v0}, Lcom/samsung/android/cmcnsd/extension/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/cmcnsd/extension/ContextExt;->OWNER:Landroid/os/UserHandle;

    .line 22
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "CURRENT_OR_SELF"

    invoke-static {v1, v0}, Lcom/samsung/android/cmcnsd/extension/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/cmcnsd/extension/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 25
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "CURRENT"

    invoke-static {v1, v0}, Lcom/samsung/android/cmcnsd/extension/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/cmcnsd/extension/ContextExt;->CURRENT:Landroid/os/UserHandle;

    .line 28
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "ALL"

    invoke-static {v1, v0}, Lcom/samsung/android/cmcnsd/extension/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    sput-object v0, Lcom/samsung/android/cmcnsd/extension/ContextExt;->ALL:Landroid/os/UserHandle;

    .line 30
    const-class v0, Landroid/content/Context;

    const-string v1, "STATUS_BAR_SERVICE"

    invoke-static {v1, v0}, Lcom/samsung/android/cmcnsd/extension/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/cmcnsd/extension/ContextExt;->STATUS_BAR_SERVICE:Ljava/lang/String;

    const-string v0, "HQM_SERVICE"

    const-string v1, "HqmManagerService"

    .line 33
    invoke-static {v0, v1}, Lcom/samsung/android/cmcnsd/extension/ContextExt;->getStringFromField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcnsd/extension/ContextExt;->HQM_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public static bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 9

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "bindServiceAsUser"

    const/4 v3, 0x4

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    const-class v5, Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Landroid/os/UserHandle;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    aput-object p2, v2, v6

    .line 40
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    aput-object p4, v2, v8

    invoke-static {v1, p0, v2}, Lcom/samsung/android/cmcnsd/extension/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 41
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_0

    move v0, v6

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getStringFromField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 75
    :try_start_0
    const-class v0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/samsung/android/cmcnsd/extension/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_0
    return-object p1
.end method
