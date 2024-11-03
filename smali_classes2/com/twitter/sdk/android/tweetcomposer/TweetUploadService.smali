.class public Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;
.super Landroid/app/IntentService;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;
    }
.end annotation


# static fields
.field static final EXTRA_IMAGE_URI:Ljava/lang/String; = "EXTRA_IMAGE_URI"

.field public static final EXTRA_RETRY_INTENT:Ljava/lang/String; = "EXTRA_RETRY_INTENT"

.field public static final EXTRA_TWEET_ID:Ljava/lang/String; = "EXTRA_TWEET_ID"

.field static final EXTRA_TWEET_TEXT:Ljava/lang/String; = "EXTRA_TWEET_TEXT"

.field static final EXTRA_USER_TOKEN:Ljava/lang/String; = "EXTRA_USER_TOKEN"

.field static final EXTRA_VIDEO_URI:Ljava/lang/String; = "EXTRA_VIDEO_URI"

.field private static final PLACEHOLDER_ID:I = -0x1

.field private static final PLACEHOLDER_SCREEN_NAME:Ljava/lang/String; = ""

.field static final TAG:Ljava/lang/String; = "TweetUploadService"

.field public static final TWEET_COMPOSE_CANCEL:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL"

.field public static final UPLOAD_FAILURE:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

.field public static final UPLOAD_SUCCESS:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"


# instance fields
.field dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

.field intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;)V
    .locals 1

    const-string v0, "TweetUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/TwitterApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithMediaId(Lcom/twitter/sdk/android/core/TwitterApiClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendSuccessBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private static createRequestBody(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1

    const-string v0, "text/plain"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {p0, v0}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method private fail(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/core/TwitterException;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/Throwable;)V

    return-void
.end method

.method private fail(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendFailureBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "TweetUploadService"

    const-string v2, "Post Tweet failed"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->stopSelf()V

    return-void
.end method

.method private sendFailureBroadcast(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_RETRY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendSuccessBroadcast(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_TWEET_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private uploadImageMedia(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            "Ljava/lang/String;",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Media;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;->getTwitterApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getMediaService()Lcom/twitter/sdk/android/core/services/MediaService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0}, Lcom/twitter/sdk/android/core/services/MediaService;->upload(Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private uploadTweet(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;->getTwitterApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p4, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;

    invoke-direct {p4, p0, v0, p2}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/TwitterApiClient;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadImageMedia(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Lcom/twitter/sdk/android/core/Callback;)V

    goto :goto_0

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v0, p4, p2}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadVideoMedia(Lcom/twitter/sdk/android/core/TwitterApiClient;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithMediaId(Lcom/twitter/sdk/android/core/TwitterApiClient;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private uploadTweetWithMediaId(Lcom/twitter/sdk/android/core/TwitterApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/twitter/sdk/android/core/models/TweetContent;

    invoke-direct {v0, p2, p3}, Lcom/twitter/sdk/android/core/models/TweetContent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/twitter/sdk/android/core/services/StatusesService;->postTweet(Lcom/twitter/sdk/android/core/models/TweetContent;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private uploadTweetWithVideoAppend(Lcom/twitter/sdk/android/core/TwitterApiClient;JLjava/lang/String;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v0, p0

    invoke-virtual/range {p5 .. p5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int v2, v1

    const/high16 v1, 0x500000

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getMediaService()Lcom/twitter/sdk/android/core/services/MediaService;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v12, p5

    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v12, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const-string v4, "APPEND"

    invoke-static {v4}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->createRequestBody(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v5

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->createRequestBody(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->createRequestBody(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v9

    move-object v4, v10

    invoke-interface/range {v4 .. v9}, Lcom/twitter/sdk/android/core/services/MediaService;->append(Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v4

    invoke-interface {v4}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v4

    invoke-virtual {v4}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v4, v2

    invoke-virtual/range {p5 .. p5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lez v4, :cond_1

    array-length v5, v3

    if-eq v4, v5, :cond_1

    new-array v3, v4, [B

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x1

    :goto_1
    invoke-static/range {p5 .. p5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v11, :cond_3

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p6

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithVideoFinalize(Lcom/twitter/sdk/android/core/TwitterApiClient;JLjava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v1, "upload video failed"

    invoke-direct {p0, v1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private uploadTweetWithVideoFinalize(Lcom/twitter/sdk/android/core/TwitterApiClient;JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getMediaService()Lcom/twitter/sdk/android/core/services/MediaService;

    move-result-object v0

    const-string v1, "FINALIZE"

    invoke-interface {v0, v1, p2, p3}, Lcom/twitter/sdk/android/core/services/MediaService;->finalize(Ljava/lang/String;J)Lretrofit2/Call;

    move-result-object p2

    invoke-interface {p2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p2

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/twitter/sdk/android/core/models/Media;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithVideoStatus(Lcom/twitter/sdk/android/core/TwitterApiClient;Lcom/twitter/sdk/android/core/models/Media;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "request finalize api failed"

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/String;)V

    return-void
.end method

.method private uploadTweetWithVideoInit(Lcom/twitter/sdk/android/core/TwitterApiClient;Ljava/lang/String;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getMediaService()Lcom/twitter/sdk/android/core/services/MediaService;

    move-result-object v0

    const-string v1, "INIT"

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-string v5, "tweet_video"

    const/4 v6, 0x0

    move-object v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/twitter/sdk/android/core/services/MediaService;->init(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/Media;

    if-eqz v0, :cond_0

    iget-wide v3, v0, Lcom/twitter/sdk/android/core/models/Media;->mediaId:J

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithVideoAppend(Lcom/twitter/sdk/android/core/TwitterApiClient;JLjava/lang/String;Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "request init api failed"

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/String;)V

    return-void
.end method

.method private uploadTweetWithVideoStatus(Lcom/twitter/sdk/android/core/TwitterApiClient;Lcom/twitter/sdk/android/core/models/Media;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, "request finalize api failed"

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p2, Lcom/twitter/sdk/android/core/models/Media;->processingInfo:Lcom/twitter/sdk/android/core/models/TweetProcessingInfo;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/TweetProcessingInfo;->state:Ljava/lang/String;

    const-string v2, "succeeded"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/TweetProcessingInfo;->state:Ljava/lang/String;

    const-string v2, "failed"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "upload video failed"

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/TweetProcessingInfo;->error:Lcom/twitter/sdk/android/core/models/ApiError;

    if-eqz v1, :cond_3

    iget-object p1, v1, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-wide v0, v0, Lcom/twitter/sdk/android/core/models/TweetProcessingInfo;->checkAfterSecs:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getMediaService()Lcom/twitter/sdk/android/core/services/MediaService;

    move-result-object v0

    const-string v1, "STATUS"

    iget-wide v2, p2, Lcom/twitter/sdk/android/core/models/Media;->mediaId:J

    invoke-interface {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/services/MediaService;->checkStatus(Ljava/lang/String;J)Lretrofit2/Call;

    move-result-object p2

    invoke-interface {p2}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p2

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/twitter/sdk/android/core/models/Media;

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithVideoStatus(Lcom/twitter/sdk/android/core/TwitterApiClient;Lcom/twitter/sdk/android/core/models/Media;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "request check status api failed"

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    iget-object p2, p2, Lcom/twitter/sdk/android/core/models/Media;->mediaIdString:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p2}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithMediaId(Lcom/twitter/sdk/android/core/TwitterApiClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private uploadVideoMedia(Lcom/twitter/sdk/android/core/TwitterApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithVideoInit(Lcom/twitter/sdk/android/core/TwitterApiClient;Ljava/lang/String;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "EXTRA_USER_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->intent:Landroid/content/Intent;

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterSession;

    const-wide/16 v2, -0x1

    const-string v4, ""

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/sdk/android/core/TwitterSession;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    const-string v0, "EXTRA_TWEET_TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXTRA_IMAGE_URI"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTRA_VIDEO_URI"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweet(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
