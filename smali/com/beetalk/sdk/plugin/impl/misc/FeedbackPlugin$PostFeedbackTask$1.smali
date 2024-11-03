.class Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$1;
.super Lcom/beetalk/sdk/plugin/PluginResult;
.source "FeedbackPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;->doInBackground([Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)Lcom/beetalk/sdk/plugin/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;

.field final synthetic val$finalResult:I

.field final synthetic val$object:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;I)V
    .locals 1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$1;->this$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$1;->val$object:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;

    iput p3, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$1;->val$finalResult:I

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    const-string p1, "app.feedback"

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$1;->source:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "feedback: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;->feedback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$1;->message:Ljava/lang/String;

    iput p3, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$1;->status:I

    iput p3, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$1;->flag:I

    return-void
.end method
