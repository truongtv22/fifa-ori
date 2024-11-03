.class Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$2;
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


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$2;->this$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    const-string p1, "app.feedback"

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$2;->source:Ljava/lang/String;

    const-string p1, "Request Failed. Network Error or Server Error"

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$2;->message:Ljava/lang/String;

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$2;->flag:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$PostFeedbackTask$2;->status:I

    return-void
.end method
