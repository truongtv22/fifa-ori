.class public Lcom/beetalk/sdk/account/MigrateGuestUtil;
.super Ljava/lang/Object;
.source "MigrateGuestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/account/MigrateGuestUtil$SafRet;
    }
.end annotation


# static fields
.field private static final GUEST_ACCOUNT_FILE_NAME_PREFIX:Ljava/lang/String; = "guest"

.field private static final GUEST_ACCOUNT_INFO_JSON_KEY:Ljava/lang/String; = "guest_account_info"

.field public static final KEY_SAF_PERMISSION_RET:Ljava/lang/String; = "KEY_SAF_PERMISSION_RET"

.field public static final KEY_SAF_REQ_URI:Ljava/lang/String; = "KEY_SAF_REQ_URI"

.field public static final MIGRATE_GUEST_REQUEST_REQ_CODE:I = 0x3e9

.field public static final SAF_OPEN_TREE_CODE:I = 0x3e8

.field public static final SAF_PERMISSION_REFUSED:I = 0x2

.field public static final SAF_WRITE_FAILED:I = 0x1

.field public static final SAF_WRITE_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToGuestData(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/account/MigrateGuestUtil;->getGuestUidKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/account/MigrateGuestUtil;->getGuestPasswordKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/beetalk/sdk/account/MigrateGuestUtil;->mapToStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGuestAccountFileName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getIntegerAppId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "guest.dat"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "guest"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/beetalk/sdk/helper/Helper;->getIntegerAppId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGuestPasswordKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    const-string v0, "com.garena.msdk.guest_password_sandbox"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const-string v0, "com.garena.msdk.guest_password"

    return-object v0
.end method

.method private static getGuestUidKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    const-string v0, "com.garena.msdk.guest_uid_sandbox"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const-string v0, "com.garena.msdk.guest_uid"

    return-object v0
.end method

.method private static mapToStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :try_start_0
    const-string p0, "guest_account_info"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static migrateGuestData(Landroid/app/Activity;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Your device is below Android 11!"

    invoke-static {v0, p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/beetalk/sdk/account/MigrateGuestActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
