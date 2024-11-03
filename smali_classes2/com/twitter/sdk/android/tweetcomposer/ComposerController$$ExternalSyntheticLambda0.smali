.class public final synthetic Lcom/twitter/sdk/android/tweetcomposer/ComposerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$$ExternalSyntheticLambda0;->f$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$$ExternalSyntheticLambda0;->f$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->lambda$new$0$com-twitter-sdk-android-tweetcomposer-ComposerController(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
