.class Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;
.super Ljava/lang/Object;
.source "ComposerController.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComposerCallbacksImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->onClose()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->tweetTextLength(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$000(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->remainingCharCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCount(I)V

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->isTweetTextOverflow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$000(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v0

    sget v1, Lcom/garena/msdk/R$style;->tw__ComposerCharCountOverflow:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCountTextStyle(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$000(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v0

    sget v1, Lcom/garena/msdk/R$style;->tw__ComposerCharCount:I

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setCharCountTextStyle(I)V

    :goto_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$000(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->isPostEnabled(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->postTweetEnabled(Z)V

    return-void
.end method

.method public onTweetPost(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$000(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$100(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/core/TwitterSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/TwitterSession;->getAuthToken()Lcom/twitter/sdk/android/core/AuthToken;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "EXTRA_USER_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "EXTRA_TWEET_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$200(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "EXTRA_IMAGE_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$300(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "EXTRA_VIDEO_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$000(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacksImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$400(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;

    move-result-object p1

    invoke-interface {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;->finish()V

    return-void
.end method
