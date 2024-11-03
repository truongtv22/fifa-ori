.class public Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "TwitterSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "Lcom/beetalk/sdk/twitter/TwitterPostItem;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TwitterSharePlugin"


# instance fields
.field private activity:Landroid/app/Activity;

.field private volatile authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

.field private final callback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field

.field private currentRequestCode:I

.field private shareData:Lcom/beetalk/sdk/twitter/TwitterPostItem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/GGPlugin;-><init>()V

    const/16 v0, 0x8d

    iput v0, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->currentRequestCode:I

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;)V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->callback:Lcom/twitter/sdk/android/core/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;)Lcom/beetalk/sdk/twitter/TwitterPostItem;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->shareData:Lcom/beetalk/sdk/twitter/TwitterPostItem;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;Lcom/beetalk/sdk/twitter/TwitterPostItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->launchComposer(Lcom/beetalk/sdk/twitter/TwitterPostItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;Landroid/app/Activity;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method private getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    iput-object v1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    return-object v0
.end method

.method private launchComposer(Lcom/beetalk/sdk/twitter/TwitterPostItem;)V
    .locals 3

    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterCore;->getSessionManager()Lcom/twitter/sdk/android/core/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/SessionManager;->getActiveSession()Lcom/twitter/sdk/android/core/Session;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterSession;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->startAuth()V

    return-void

    :cond_0
    const/16 v1, 0x8d

    iput v1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->currentRequestCode:I

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->session(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/beetalk/sdk/twitter/TwitterPostItem;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->image(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/beetalk/sdk/twitter/TwitterPostItem;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->video(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->text(Ljava/lang/String;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Builder;->createIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->currentRequestCode:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startAuth()V
    .locals 3

    const/16 v0, 0x8c

    iput v0, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->currentRequestCode:I

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->callback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method


# virtual methods
.method public embedInActivity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/twitter/TwitterPostItem;)V
    .locals 3

    if-nez p2, :cond_0

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->publishResult(Landroid/app/Activity;I)V

    return-void

    :cond_0
    const-string v0, "com.twitter.android"

    invoke-static {v0, p1}, Lcom/beetalk/sdk/helper/Helper;->isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->shareData:Lcom/beetalk/sdk/twitter/TwitterPostItem;

    invoke-direct {p0, p2}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->launchComposer(Lcom/beetalk/sdk/twitter/TwitterPostItem;)V

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.twitter.composer.ComposerActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p2, Lcom/beetalk/sdk/twitter/TwitterPostItem;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "android.intent.extra.STREAM"

    if-nez v0, :cond_2

    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem;->getImageUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/beetalk/sdk/twitter/TwitterPostItem;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "video/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem;->getVideoUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p2}, Lcom/beetalk/sdk/twitter/TwitterPostItem;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->publishResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-static {p2}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string/jumbo v0, "twitter not installed"

    invoke-static {v0, p2}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->APP_NOT_INSTALLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->publishResult(Landroid/app/Activity;I)V

    :goto_1
    return-void
.end method

.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/beetalk/sdk/twitter/TwitterPostItem;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/twitter/TwitterPostItem;)V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "twitter.share"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->currentRequestCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 1

    iget p1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->currentRequestCode:I

    const/16 v0, 0x8c

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object p1

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->getRequestCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
