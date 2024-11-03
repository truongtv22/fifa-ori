.class Lcom/ea/games/gamesdk/GarenaSdk$4;
.super Ljava/lang/Object;
.source "GarenaSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/games/gamesdk/GarenaSdk;->requestCatalogItems(Ljava/util/List;Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/games/gamesdk/GarenaSdk;

.field final synthetic val$callback:Lcom/ea/games/gamesdk/SdkCallback;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ea/games/gamesdk/GarenaSdk;Lcom/ea/games/gamesdk/SdkCallback;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$4;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iput-object p2, p0, Lcom/ea/games/gamesdk/GarenaSdk$4;->val$callback:Lcom/ea/games/gamesdk/SdkCallback;

    iput-object p3, p0, Lcom/ea/games/gamesdk/GarenaSdk$4;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk$4;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk$4;->val$callback:Lcom/ea/games/gamesdk/SdkCallback;

    iput-object v1, v0, Lcom/ea/games/gamesdk/GarenaSdk;->mRequestCatalogCB:Lcom/ea/games/gamesdk/SdkCallback;

    new-instance v0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    invoke-direct {v0}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;-><init>()V

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk$4;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v1}, Lcom/ea/games/gamesdk/GarenaSdk;->access$200(Lcom/ea/games/gamesdk/GarenaSdk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setAppId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object v1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/AuthToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setBuyerId(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object v1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getTokenValue()Lcom/beetalk/sdk/data/AuthToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/AuthToken;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setToken(Ljava/lang/String;)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setServerId(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setRoleId(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object v1

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setPlatform(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setRebateId(J)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setApiVersion(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk$4;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v1}, Lcom/ea/games/gamesdk/GarenaSdk;->access$000(Lcom/ea/games/gamesdk/GarenaSdk;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->build()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v0

    new-instance v2, Lcom/ea/games/gamesdk/GarenaSdk$4$1;

    invoke-direct {v2, p0}, Lcom/ea/games/gamesdk/GarenaSdk$4$1;-><init>(Lcom/ea/games/gamesdk/GarenaSdk$4;)V

    invoke-static {v1, v0, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->getPaymentChannelList(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;)V

    return-void
.end method
