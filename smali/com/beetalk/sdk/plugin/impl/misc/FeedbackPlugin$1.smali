.class Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;
.super Lcom/beetalk/sdk/plugin/PluginResult;
.source "FeedbackPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;->executeAction(Landroid/app/Activity;Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;->source:Ljava/lang/String;

    const-string p1, "Required params missing. Have you logged in?"

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;->message:Ljava/lang/String;

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;->flag:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$1;->status:I

    return-void
.end method
