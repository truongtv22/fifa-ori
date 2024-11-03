.class Lcom/beetalk/sdk/vk/VKAuthHelper$1;
.super Ljava/lang/Object;
.source "VKAuthHelper.java"

# interfaces
.implements Lcom/vk/sdk/VKCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/vk/VKAuthHelper;->startLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vk/sdk/VKCallback<",
        "Lcom/vk/sdk/VKSdk$LoginState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/vk/VKAuthHelper;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/vk/VKAuthHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthHelper$1;->this$0:Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vk/sdk/api/VKError;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "vk session check error: %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VKAuthHelper$1;->this$0:Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-static {v0}, Lcom/beetalk/sdk/vk/VKAuthHelper;->access$300(Lcom/beetalk/sdk/vk/VKAuthHelper;)Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VKAuthHelper$1;->this$0:Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-static {v0}, Lcom/beetalk/sdk/vk/VKAuthHelper;->access$300(Lcom/beetalk/sdk/vk/VKAuthHelper;)Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    return-void
.end method

.method public onResult(Lcom/vk/sdk/VKSdk$LoginState;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v2, "vk session state: %s"

    invoke-static {v2, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/beetalk/sdk/vk/VKAuthHelper$3;->$SwitchMap$com$vk$sdk$VKSdk$LoginState:[I

    invoke-virtual {p1}, Lcom/vk/sdk/VKSdk$LoginState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthHelper$1;->this$0:Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-static {p1}, Lcom/beetalk/sdk/vk/VKAuthHelper;->access$000(Lcom/beetalk/sdk/vk/VKAuthHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beetalk/sdk/vk/VKAuthHelper;->access$200(Lcom/beetalk/sdk/vk/VKAuthHelper;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "vk already logged in"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthHelper$1;->this$0:Lcom/beetalk/sdk/vk/VKAuthHelper;

    invoke-static {p1}, Lcom/beetalk/sdk/vk/VKAuthHelper;->access$000(Lcom/beetalk/sdk/vk/VKAuthHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/beetalk/sdk/vk/VKAuthHelper;->access$100(Lcom/beetalk/sdk/vk/VKAuthHelper;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/vk/sdk/VKSdk$LoginState;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/vk/VKAuthHelper$1;->onResult(Lcom/vk/sdk/VKSdk$LoginState;)V

    return-void
.end method
