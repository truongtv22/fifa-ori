.class Lcom/beetalk/sdk/plugin/GGPlugin$1;
.super Lcom/beetalk/sdk/plugin/PluginResult;
.source "GGPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/GGPlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/GGPlugin;

.field final synthetic val$code:I

.field final synthetic val$strMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/GGPlugin;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/GGPlugin$1;->this$0:Lcom/beetalk/sdk/plugin/GGPlugin;

    iput p2, p0, Lcom/beetalk/sdk/plugin/GGPlugin$1;->val$code:I

    iput-object p3, p0, Lcom/beetalk/sdk/plugin/GGPlugin$1;->val$strMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    iput p2, p0, Lcom/beetalk/sdk/plugin/GGPlugin$1;->flag:I

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/GGPlugin;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/GGPlugin$1;->source:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/plugin/GGPlugin$1;->message:Ljava/lang/String;

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/beetalk/sdk/plugin/GGPlugin$1;->status:I

    return-void
.end method
