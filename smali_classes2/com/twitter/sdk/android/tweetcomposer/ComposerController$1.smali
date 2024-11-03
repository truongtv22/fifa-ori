.class Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "ComposerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->setProfilePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 1

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$000(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setProfilePhotoView(Lcom/twitter/sdk/android/core/models/User;)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->access$000(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    move-result-object v0

    iget-object p1, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/models/User;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setProfilePhotoView(Lcom/twitter/sdk/android/core/models/User;)V

    return-void
.end method
