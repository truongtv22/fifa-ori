.class public Lcom/beetalk/sdk/GGPlatform;
.super Ljava/lang/Object;
.source "GGPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/GGPlatform$Callback;,
        Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;,
        Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;,
        Lcom/beetalk/sdk/GGPlatform$ShareCallback;,
        Lcom/beetalk/sdk/GGPlatform$FriendInfoCallback;,
        Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;,
        Lcom/beetalk/sdk/GGPlatform$UserFriendIDListCallback;,
        Lcom/beetalk/sdk/GGPlatform$WakeupNotifyCallback;
    }
.end annotation


# static fields
.field private static appId:Ljava/lang/String;

.field private static appKey:Ljava/lang/String;

.field private static volatile applicationContext:Landroid/content/Context;

.field private static garenaLoginTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GGCheckLineInstalled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "jp.naver.line.android"

    invoke-static {v0, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static GGEnableDebugLog()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/beetalk/sdk/SDKConstants;->setDebugMode(Z)V

    return-void
.end method

.method public static GGFacebookGooglePlay(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "com.facebook.katana"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Helper;->openInGooglePlay(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static GGFeedback(Landroid/app/Activity;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->checkInValidityOfSession()Z

    move-result v0

    const-string v1, "app.feedback"

    if-eqz v0, :cond_0

    invoke-static {p2, v1}, Lcom/beetalk/sdk/GGPlatform;->complainAboutLogin(Lcom/beetalk/sdk/plugin/GGPluginCallback;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/beetalk/sdk/GGPlatform$8;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/GGPlatform$8;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p1

    invoke-virtual {p1, p0, v1, v0, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGGetDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/garena/android/gpns/utility/DeviceUtil;->generateDeviceId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GGGetEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public static GGGetFacebookAccessToken()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static GGGetSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.0.29"

    return-object v0
.end method

.method public static GGGetSessionForAppPlatformBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->wrapCallbackWithoutLoginAgain(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveAppPlatformBindSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession;

    return-void
.end method

.method public static GGGetSessionForBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->wrapCallbackWithoutLoginAgain(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveBindSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession;

    return-void
.end method

.method public static GGGetUserInfo(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;)V
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->checkInValidityOfSession()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "msdk.user.info.get"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGHasGuestAccount()Z
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static GGIsPlatformInstalled(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const-string p1, "jp.naver.line.android"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    const-string p1, "com.vkontakte.android"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_2
    const-string p1, "com.twitter.android"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_3
    const-string p1, "com.facebook.katana"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_4
    const-string p1, "com.garena.gas"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "com.garena.gaslite"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static GGLoadAppFriendGroups(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;)V
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->checkInValidityOfSession()Z

    move-result v0

    const-string v1, "msdk.load.inapp.friendgroups.list"

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/beetalk/sdk/GGPlatform;->complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGLoadFacebookInfo(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "facebook.request.me"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGLoadFriendGroups(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;)V
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->checkInValidityOfSession()Z

    move-result v0

    const-string v1, "msdk.load.friendgroups.list"

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lcom/beetalk/sdk/GGPlatform;->complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGLoadGroupFriendsInfo(Landroid/app/Activity;Ljava/util/List;Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->checkInValidityOfSession()Z

    move-result v0

    const-string v1, "msdk.group.friend.info"

    if-eqz v0, :cond_0

    invoke-static {p2, v1}, Lcom/beetalk/sdk/GGPlatform;->complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGOpenUrlInGas(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/beetalk/sdk/GGPlatform;->GGPlatformInstalledVersionCode(Landroid/app/Activity;I)I

    move-result v0

    const/16 v1, 0x59

    const-string v2, "android.intent.action.VIEW"

    if-lt v0, v1, :cond_2

    const-string v0, "garena://deeplink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.garena.gas.intent.OPEN_GAS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static GGParseWakeUpNotify(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$WakeupNotifyCallback;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "com.garena.msdk.game_launch_bundle"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    new-instance v0, Lcom/beetalk/sdk/GGPlatform$6;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGPlatform$6;-><init>(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p1, v0}, Lcom/beetalk/sdk/GGPlatform$WakeupNotifyCallback;->OnWakeupNotify(Lcom/beetalk/sdk/ndk/WakeupRet;)V

    :cond_0
    return-void
.end method

.method public static GGPlatformInstalledVersion(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p1, "jp.naver.line.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p1, "com.vkontakte.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "com.twitter.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p1, "com.facebook.katana"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p1, "com.garena.gas"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p1, "com.garena.gaslite"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GGPlatformInstalledVersionCode(Landroid/app/Activity;I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "jp.naver.line.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const-string p1, "com.vkontakte.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    const-string p1, "com.twitter.android"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    const-string p1, "com.facebook.katana"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    const-string p1, "com.garena.gas"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    const-string p1, "com.garena.gaslite"

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/Helper;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static GGPushCancelAll(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Application Context"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/garena/android/push/PushClient;->cancelAll(Landroid/content/Context;)V

    return-void
.end method

.method public static GGPushCancelLocal(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "Application Context"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/garena/android/push/PushClient;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static GGPushRegister(Landroid/app/Activity;Lcom/garena/android/push/PushClient$PushRequest;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/garena/android/GPNManager;->register(Landroid/content/Context;Lcom/garena/android/push/PushClient$PushRequest;)V

    invoke-static {}, Lcom/garena/android/GPNManager;->getInstance()Lcom/garena/android/GPNManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/garena/android/GPNManager;->startService()V

    return-void
.end method

.method public static GGPushRegister(Landroid/app/Activity;Lcom/garena/android/push/PushClient$PushRequest;Lcom/garena/android/PushNotificationStateListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->GGPushRegister(Landroid/app/Activity;Lcom/garena/android/push/PushClient$PushRequest;)V

    return-void
.end method

.method public static GGPushScheduleLocal(Lcom/garena/android/push/NotificationData;Landroid/content/Context;J)V
    .locals 2

    const-string v0, "Application Context"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Notification Data"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/garena/android/push/NotificationData;->scheduleNotification(Landroid/content/Context;J)V

    return-void
.end method

.method public static GGResetGuest(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->setCache(Lcom/beetalk/sdk/cache/StorageCache;)V

    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSession(Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->clearSession()Z

    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GGSendEventToFacebook(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static GGSendEventToFacebook(Landroid/content/Context;Ljava/lang/String;D)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;D)V

    return-void
.end method

.method public static GGSendEventToFacebook(Landroid/content/Context;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    return-void
.end method

.method public static GGSendEventToFacebook(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static GGSendGameRequestToFacebookUser(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->uid(J)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->title(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->description(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->data(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->build()Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    move-result-object p1

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    const-string p3, "facebook.game.message"

    invoke-virtual {p2, p0, p3, p1, p6}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGSendGameToSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGTextShare;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "gas.share.text"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    :cond_0
    return-void
.end method

.method public static GGSendImageToFBMessenger(Landroid/app/Activity;[BLcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "facebook.messenger.send.image"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGSendLinkToFacebook(Landroid/app/Activity;Lcom/beetalk/sdk/facebook/FBPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "facebook.share.fallback"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGSendLinkToSession(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$ShareCallback;)V
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p5

    invoke-virtual {p5}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p7

    invoke-virtual {p7}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p7

    const/4 v0, 0x1

    if-ne p7, v0, :cond_0

    new-instance p7, Lcom/beetalk/sdk/GGTextShare$Builder;

    invoke-direct {p7, p5}, Lcom/beetalk/sdk/GGTextShare$Builder;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcom/beetalk/sdk/GGTextShare$Builder;->setScene(Ljava/lang/Integer;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/beetalk/sdk/GGTextShare$Builder;->setDesc(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/beetalk/sdk/GGTextShare$Builder;->setMediaTag(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/beetalk/sdk/GGTextShare$Builder;->setTitle(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/beetalk/sdk/GGTextShare$Builder;->setUrl(Ljava/lang/String;)Lcom/beetalk/sdk/GGTextShare$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGTextShare$Builder;->build()Lcom/beetalk/sdk/GGTextShare;

    move-result-object p1

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    new-instance p3, Lcom/beetalk/sdk/GGPlatform$9;

    invoke-direct {p3, p8}, Lcom/beetalk/sdk/GGPlatform$9;-><init>(Lcom/beetalk/sdk/GGPlatform$ShareCallback;)V

    const-string p4, "gas.share.url"

    invoke-virtual {p2, p0, p4, p1, p3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Unsupported Platform Chosen"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static GGSendMediaToSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGPhotoShare;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "gas.share.photo"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    :cond_0
    return-void
.end method

.method public static GGSendMessageToFacebook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->title(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->description(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->contentUrl(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->imageUrl(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->build()Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    move-result-object p1

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p2

    const-string p3, "facebook.message"

    invoke-virtual {p2, p0, p3, p1, p5}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGSendRequestInvitationToFacebook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/GGPlatform$7;

    invoke-direct {v1, p1, p2}, Lcom/beetalk/sdk/GGPlatform$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "facebook.invite"

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGSetEnvironment(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/SDKConstants;->setSandboxMode(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V

    invoke-static {}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->reset()V

    return-void
.end method

.method public static GGShareToFacebook(Landroid/app/Activity;Lcom/beetalk/sdk/facebook/FBPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/facebook/FBPostItem;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "facebook.share"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareToLine(Landroid/app/Activity;Lcom/beetalk/sdk/line/LinePostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/line/LinePostItem;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "line.share"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareToTikTok(Landroid/app/Activity;Lcom/garena/android/share/model/ShareContent;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/garena/android/share/model/ShareContent;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "tiktok.share"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareToTwitter(Landroid/app/Activity;Lcom/beetalk/sdk/twitter/TwitterPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/twitter/TwitterPostItem;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string/jumbo v1, "twitter.share"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareToVk(Landroid/app/Activity;Lcom/beetalk/sdk/vk/VKPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/vk/VKPostItem;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string/jumbo v1, "vk.share"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareVideoToFacebookReels(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "facebook.reels"

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGShareVideoToFacebookWall(Landroid/app/Activity;Lcom/beetalk/sdk/facebook/FBPostItem;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/facebook/FBPostItem;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    const-string v1, "facebook.share.video"

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    return-void
.end method

.method public static GGVkGooglePlay(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "com.vkontakte.android"

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/Helper;->openInGooglePlay(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/GGPlatform;->bindCurrentPlatformWithGuest(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    return-void
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->inspectGuestTokenAndBindWhenCurrentPlatformTokenAvailable(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->reLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->secondRoundLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static bind(Landroid/app/Activity;ILcom/beetalk/sdk/GGLoginSession$SessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {p0, p2}, Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v2, 0xd

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0xb

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    sget-object v9, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v0, v9, :cond_9

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v9, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v9, :cond_9

    if-ne p1, v8, :cond_0

    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_0
    if-ne p1, v7, :cond_1

    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_1
    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    goto/16 :goto_1

    :cond_2
    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    if-ne p1, v4, :cond_4

    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_4
    if-ne p1, v3, :cond_5

    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_5
    if-ne p1, v6, :cond_6

    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_6
    if-ne p1, v5, :cond_7

    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_7
    if-ne p1, v2, :cond_8

    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_8
    if-ne p1, v1, :cond_16

    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform;->bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v0

    sget-object v9, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-eq v0, v9, :cond_a

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v9, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v9, :cond_a

    invoke-static {p2}, Lcom/beetalk/sdk/GGPlatform;->bindCurrentPlatformWithGuest(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v9, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-eq v0, v9, :cond_16

    :cond_b
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v9, "session exists"

    invoke-static {v9, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-eq p1, v7, :cond_14

    if-eq p1, v8, :cond_13

    if-eq p1, v6, :cond_12

    if-eq p1, v5, :cond_11

    if-eq p1, v4, :cond_10

    if-eq p1, v3, :cond_f

    if-eq p1, v2, :cond_e

    if-eq p1, v1, :cond_d

    return-void

    :cond_d
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :cond_e
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :cond_f
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :cond_10
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :cond_11
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :cond_12
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :cond_13
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :cond_14
    sget-object p1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    :goto_0
    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p4}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p4

    sget-object v0, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    invoke-virtual {p4, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/beetalk/sdk/GGLoginSession;->setApplicationKey(Ljava/lang/String;)V

    :cond_15
    invoke-static {p0, p2}, Lcom/beetalk/sdk/GGPlatform;->loginWithBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :cond_16
    :goto_1
    return-void
.end method

.method private static bindCurrentPlatformWithGuest(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 12

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "bindCurrentPlatformWithGuest"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p0, v0, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p0, v0, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v1

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getCache()Lcom/beetalk/sdk/cache/StorageCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/cache/StorageCache;->getGuestToken()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v2

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/beetalk/sdk/cache/PersistentCache;->getGuestPassword()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->processSessionBindFail()V

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-interface {p0, v0, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void

    :cond_2
    if-nez v2, :cond_3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sget-object v9, Lcom/beetalk/sdk/request/ResponseType;->TOKEN:Lcom/beetalk/sdk/request/ResponseType;

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/beetalk/sdk/GGPlatform$2;

    invoke-direct {v11, p0, v0, v1}, Lcom/beetalk/sdk/GGPlatform$2;-><init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static/range {v6 .. v11}, Lcom/beetalk/sdk/networking/service/AuthService;->grantGuestToken(JLjava/lang/String;Lcom/beetalk/sdk/request/ResponseType;Ljava/lang/String;Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;)V

    goto :goto_0

    :cond_3
    invoke-static {v1, v2, p0}, Lcom/beetalk/sdk/GGPlatform;->inspectGuestTokenAndBindWhenCurrentPlatformTokenAvailable(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :goto_0
    return-void
.end method

.method public static bindPlatformWhenGuestLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 4

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->clearSession()Z

    new-instance v2, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v2, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v2

    sget-object v3, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    invoke-virtual {v2, v3}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "start to login platform"

    invoke-static {v2, p1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/beetalk/sdk/GGPlatform$4;

    invoke-direct {p1, p0, v0, p2, v1}, Lcom/beetalk/sdk/GGPlatform$4;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/data/AuthToken;)V

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p2, v0, p0}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private static checkInValidityOfSession()Z
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-eq v0, v1, :cond_0

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

.method private static complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;

    invoke-direct {p1}, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;-><init>()V

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/beetalk/sdk/data/DataModel$FriendGroupsRet;->flag:I

    invoke-interface {p0, p1}, Lcom/beetalk/sdk/GGPlatform$FriendGroupListCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;

    invoke-direct {p1}, Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;-><init>()V

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;->flag:I

    invoke-interface {p0, p1}, Lcom/beetalk/sdk/GGPlatform$GroupFriendInfoCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$ShareCallback;)V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/ndk/ShareRet;

    invoke-direct {v0}, Lcom/beetalk/sdk/ndk/ShareRet;-><init>()V

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/ndk/ShareRet;->flag:I

    const-string v1, "Please Login."

    iput-object v1, v0, Lcom/beetalk/sdk/ndk/ShareRet;->desc:Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/beetalk/sdk/GGPlatform$ShareCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$UserFriendIDListCallback;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Lcom/beetalk/sdk/data/DataModel$FriendIDsRet;

    invoke-direct {p1}, Lcom/beetalk/sdk/data/DataModel$FriendIDsRet;-><init>()V

    const/4 v0, -0x1

    iput v0, p1, Lcom/beetalk/sdk/data/DataModel$FriendIDsRet;->platform:I

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/beetalk/sdk/data/DataModel$FriendIDsRet;->flag:I

    invoke-interface {p0, p1}, Lcom/beetalk/sdk/GGPlatform$UserFriendIDListCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;)V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;

    invoke-direct {v0}, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;-><init>()V

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    invoke-interface {p0, v0}, Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method private static complainAboutLogin(Lcom/beetalk/sdk/plugin/GGPluginCallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "Lcom/beetalk/sdk/plugin/PluginResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/plugin/PluginResult;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    const-string v1, "Please Login."

    iput-object v1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    iput-object p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->source:Ljava/lang/String;

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    const/4 p1, -0x1

    iput p1, v0, Lcom/beetalk/sdk/plugin/PluginResult;->status:I

    invoke-interface {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method

.method public static deleteLocalGuest(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "0"

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    sget-object v0, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    invoke-static {p0}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->clear()V

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->clearSession()Z

    return-object p0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->setAppId(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataApplicationKey()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->setAppKey(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getChannelSource()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getMetaDataSourceId(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getGarenaLoginTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->garenaLoginTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static getGuestPwd()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGuestUid()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getGuestUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastLoginSession(Landroid/app/Activity;)Z
    .locals 5

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "Invalid appId, do you forget to invoke GGPlatform.setAppId() ? "

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "Invalid appKey, do you forget to invoke GGPlatform.setAppKey() ? "

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    new-instance v3, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {v3, p0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->getToken()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/beetalk/sdk/data/AuthToken;->getTokenProvider()Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v3

    sget-object v4, Lcom/beetalk/sdk/GGPlatform$10;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->REFRESH_TOKEN:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_2
    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_4
    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_5
    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_6
    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_7
    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    goto :goto_0

    :pswitch_8
    sget-object v3, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    :goto_0
    new-instance v4, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v4, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    sget-object v0, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    const v0, 0xdbed

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentAppPlatformBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/GGLoginSession;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    const v0, 0xdbec

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentBindSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/GGLoginSession;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/GGLoginSession;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "onActivityResult: no available session"

    invoke-static {p1, p0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->init(Landroid/content/Context;)V

    sget-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setExecutor(Ljava/util/concurrent/Executor;)V

    sget-object v0, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/beetalk/sdk/vk/VKUtils;->lookUpAppId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    const-string v2, "5.131"

    invoke-static {v1, v0, v2}, Lcom/vk/sdk/VKSdk;->customInitialize(Landroid/content/Context;ILjava/lang/String;)Lcom/vk/sdk/VKSdk;

    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    sget-object v1, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/twitter/sdk/android/core/DefaultLogger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/DefaultLogger;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->logger(Lcom/twitter/sdk/android/core/Logger;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    sget-object v2, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/beetalk/sdk/helper/Helper;->getTwitterKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/beetalk/sdk/GGPlatform;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/beetalk/sdk/helper/Helper;->getTwitterSecret(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->twitterAuthConfig(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->executorService(Ljava/util/concurrent/ExecutorService;)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/beetalk/sdk/SDKConstants;->DEBUG_SHOW:Z

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->debug(Z)Lcom/twitter/sdk/android/core/TwitterConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterConfig$Builder;->build()Lcom/twitter/sdk/android/core/TwitterConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/sdk/android/core/Twitter;->initialize(Lcom/twitter/sdk/android/core/TwitterConfig;)V

    invoke-static {p0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokInitializer;->initSDK(Landroid/content/Context;)V

    return-void
.end method

.method public static initialize(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSession(Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method public static initializeForAppPlatformBind(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentAppPlatformBindSession(Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method public static initializeForBind(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentBindSession(Lcom/beetalk/sdk/GGLoginSession;)V

    return-void
.end method

.method private static inspectGuestTokenAndBindWhenCurrentPlatformTokenAvailable(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/GGPlatform$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/beetalk/sdk/GGPlatform$3;-><init>(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/beetalk/sdk/GGLoginSession;->inspectGuestToken(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)Z

    return-void
.end method

.method public static inspectToken(Landroid/content/Context;)Z
    .locals 6

    new-instance v0, Lcom/beetalk/sdk/cache/SharedPrefStorage;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->getToken()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "token"

    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v3

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getTokenInspectUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makeGetRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v4, "platform"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "open_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {v0, p0}, Lcom/beetalk/sdk/GGPlatform;->refreshAccessToken(Lcom/beetalk/sdk/cache/SharedPrefStorage;Lcom/beetalk/sdk/data/AuthToken;)Z

    move-result p0

    return p0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public static login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p1

    invoke-static {p0}, Lcom/beetalk/sdk/helper/Helper;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatus(Lcom/beetalk/sdk/SessionStatus;)V

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/GGLoginSession;->setErrorCode(I)V

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession;

    return-void
.end method

.method public static loginWithBind(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "loginWithBind"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/beetalk/sdk/GGPlatform$1;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/GGPlatform$1;-><init>(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/beetalk/sdk/GGLoginSession;->obtainActiveSession(Landroid/app/Activity;ZLcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession;

    return-void
.end method

.method private static processSessionBindFail()V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_BIND_FAIL:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->setSessionStatus(Lcom/beetalk/sdk/SessionStatus;)V

    return-void
.end method

.method private static reLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->clearSession()Z

    invoke-static {p1}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {p0, p2}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static recallTokenFromPGS(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/RecallTokenResponse;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/beetalk/sdk/pgs/PlayGamesService;->recall(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method public static refreshAccessToken(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->refreshAccessToken(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    :cond_0
    return-void
.end method

.method private static refreshAccessToken(Lcom/beetalk/sdk/cache/SharedPrefStorage;Lcom/beetalk/sdk/data/AuthToken;)Z
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refresh_token"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "grant_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    move-result-object v1

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthRefreshTokenUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->makePostRequest(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v3, "open_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v4, Lcom/beetalk/sdk/data/AuthToken;

    const-string v6, "access_token"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getTokenProvider()Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v7

    const-string v8, "platform"

    invoke-virtual {p1}, Lcom/beetalk/sdk/data/AuthToken;->getMainPlatform()I

    move-result p1

    invoke-virtual {v0, v8, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {v4, v6, v7, p1}, Lcom/beetalk/sdk/data/AuthToken;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/data/TokenProvider;I)V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/beetalk/sdk/data/AuthToken;->setRefreshToken(Ljava/lang/String;)V

    const-string p1, "expiry_time"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/beetalk/sdk/data/AuthToken;->setExpiryTimestamp(I)V

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/beetalk/sdk/data/AuthToken;->setOpenId(Ljava/lang/String;)V

    invoke-static {}, Lcom/beetalk/sdk/helper/Helper;->getTimeNow()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/beetalk/sdk/data/AuthToken;->setLastInspectTime(I)V

    invoke-virtual {p0, v4}, Lcom/beetalk/sdk/cache/SharedPrefStorage;->putToken(Lcom/beetalk/sdk/data/AuthToken;)V

    const-string p0, "Refresh token successfully"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const-string p0, "error"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to refresh, error: %s"

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public static restoreLoginSession(Landroid/app/Activity;Lcom/beetalk/sdk/networking/model/RecallToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/pgs/PlayGamesService;->restoreToken(Landroid/app/Activity;Lcom/beetalk/sdk/networking/model/RecallToken;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method public static saveTokenToPGS(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/beetalk/sdk/GGPlatform$Callback<",
            "Lcom/garena/android/model/Result<",
            "Lcom/beetalk/sdk/networking/model/SaveTokenResponse;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/beetalk/sdk/pgs/PlayGamesService;->save(Landroid/app/Activity;Lcom/beetalk/sdk/GGPlatform$Callback;)V

    return-void
.end method

.method private static secondRoundLogin(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionStatus()Lcom/beetalk/sdk/SessionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beetalk/sdk/SessionStatus;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ndk_login_auth_callback error %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getMode()Lcom/beetalk/sdk/AuthMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/beetalk/sdk/GGLoginSession;->getRequestCode()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setRequestCode(I)Lcom/beetalk/sdk/GGLoginSession$Builder;

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/GGLoginSession;->setCurrentSession(Lcom/beetalk/sdk/GGLoginSession;)V

    invoke-static {p0, p2}, Lcom/beetalk/sdk/GGLoginSession;->forceOpenSession(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession;

    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/beetalk/sdk/GGPlatform;->appId:Ljava/lang/String;

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/beetalk/sdk/GGPlatform;->appKey:Ljava/lang/String;

    return-void
.end method

.method public static setGarenaLoginTitle(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/beetalk/sdk/GGPlatform;->garenaLoginTitle:Ljava/lang/String;

    return-void
.end method

.method public static setGuestUidAndPwd(JLjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->putGuestInfo(JLjava/lang/String;)V

    return-void
.end method

.method public static setLoginSessionCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/beetalk/sdk/GGLoginSession;->setCallback(Landroid/content/Context;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method

.method private static wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;
    .locals 1

    const-string v0, "Session Callback to be wrapped cannot be null"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Z)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p0

    return-object p0
.end method

.method private static wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Z)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;
    .locals 1

    const-string v0, "Session Callback to be wrapped cannot be null"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/beetalk/sdk/GGPlatform$5;

    invoke-direct {v0, p2, p0, p1}, Lcom/beetalk/sdk/GGPlatform$5;-><init>(ZLandroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-object v0
.end method

.method private static wrapCallbackWithoutLoginAgain(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;
    .locals 1

    const-string v0, "Session Callback to be wrapped cannot be null"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/beetalk/sdk/GGPlatform;->wrapCallback(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Z)Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    move-result-object p0

    return-object p0
.end method
