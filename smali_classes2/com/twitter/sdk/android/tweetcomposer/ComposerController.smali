.class Lcom/twitter/sdk/android/tweetcomposer/ComposerController;
.super Ljava/lang/Object;
.source "ComposerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;,
        Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;
    }
.end annotation


# instance fields
.field private final composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

.field private final dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

.field private final finisher:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;

.field private final imageUri:Ljava/lang/String;

.field private final session:Lcom/twitter/sdk/android/core/TwitterSession;

.field private final videoUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;)V
    .locals 9

    new-instance v8, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

    invoke-direct {v8}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->session:Lcom/twitter/sdk/android/core/TwitterSession;

    iput-object p3, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->imageUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->videoUri:Ljava/lang/String;

    iput-object p7, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->finisher:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;

    iput-object p8, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

    new-instance p2, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)V

    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCallbacks(Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;)V

    invoke-direct {p0, p5, p6}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->generateText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setTweetText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->setProfilePhoto()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p3}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setImageView(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p4}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$$ExternalSyntheticLambda0;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;Ljava/lang/String;)V

    invoke-static {p2}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p2

    new-instance p3, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$$ExternalSyntheticLambda1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    sget-object p1, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, p1}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/core/TwitterSession;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->session:Lcom/twitter/sdk/android/core/TwitterSession;

    return-object p0
.end method

.method static synthetic access$200(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->imageUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->videoUri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->finisher:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;

    return-object p0
.end method

.method private generateText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getVideoFrame(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v6, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-lt p1, v0, :cond_0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    move-object v0, v6

    move v4, p2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :cond_0
    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_5
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getVideoPreview(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/16 v0, 0x200

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v0}, Landroid/util/Size;-><init>(II)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->getVideoFrame(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method static isPostEnabled(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x8c

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isTweetTextOverflow(I)Z
    .locals 1

    const/16 v0, 0x8c

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$1(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setImage(Landroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static remainingCharCount(I)I
    .locals 0

    rsub-int p0, p0, 0x8c

    return p0
.end method

.method private setProfilePhoto()V
    .locals 3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->session:Lcom/twitter/sdk/android/core/TwitterSession;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;->getApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2, v1}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-twitter-sdk-android-tweetcomposer-ComposerController(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->getVideoPreview(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method onClose()V
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->sendCancelBroadcast()V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->finisher:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;

    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;->finish()V

    return-void
.end method

.method sendCancelBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method tweetTextLength(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$DependencyProvider;->getTweetValidator()Lcom/twitter/Validator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/Validator;->getTweetLength(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
