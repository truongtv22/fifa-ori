.class Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$1;
.super Lcom/beetalk/sdk/plugin/PluginResult;
.source "FBGameMessagePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->onError(Ljava/lang/Exception;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$1;->source:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$1;->status:I

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$1;->flag:I

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin$1;->message:Ljava/lang/String;

    return-void
.end method
