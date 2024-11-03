.class Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "TwitterSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback<",
        "Lcom/twitter/sdk/android/core/TwitterSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->access$200(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->APP_NOT_INSTALLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Twitter not installed."

    invoke-static {p1, v0, v1, v2}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->access$400(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->access$000(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;)Lcom/beetalk/sdk/twitter/TwitterPostItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->access$100(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;Lcom/beetalk/sdk/twitter/TwitterPostItem;)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->access$200(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;->access$300(Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;Landroid/app/Activity;I)V

    return-void
.end method
