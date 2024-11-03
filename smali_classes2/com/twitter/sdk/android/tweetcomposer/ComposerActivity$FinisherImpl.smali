.class Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$Finisher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinisherImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->setResult(I)V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity$FinisherImpl;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerActivity;->finish()V

    return-void
.end method
