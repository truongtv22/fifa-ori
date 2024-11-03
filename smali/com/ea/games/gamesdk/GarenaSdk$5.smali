.class Lcom/ea/games/gamesdk/GarenaSdk$5;
.super Ljava/lang/Object;
.source "GarenaSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/games/gamesdk/GarenaSdk;->pay(Landroid/app/Activity;Lcom/ea/games/gamesdk/UserInfo;Lcom/ea/games/gamesdk/OrderInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/games/gamesdk/GarenaSdk;

.field final synthetic val$orderInfo:Lcom/ea/games/gamesdk/OrderInfo;


# direct methods
.method constructor <init>(Lcom/ea/games/gamesdk/GarenaSdk;Lcom/ea/games/gamesdk/OrderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$5;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iput-object p2, p0, Lcom/ea/games/gamesdk/GarenaSdk$5;->val$orderInfo:Lcom/ea/games/gamesdk/OrderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v0, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    invoke-direct {v0}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;-><init>()V

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk$5;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

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

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->setApiVersion(I)Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;

    new-instance v5, Lcom/ea/games/gamesdk/GarenaSdk$5$1;

    invoke-direct {v5, p0}, Lcom/ea/games/gamesdk/GarenaSdk$5$1;-><init>(Lcom/ea/games/gamesdk/GarenaSdk$5;)V

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk$5;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v1}, Lcom/ea/games/gamesdk/GarenaSdk;->access$000(Lcom/ea/games/gamesdk/GarenaSdk;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/garena/pay/android/data/GGPayment$GGPaymentBuilder;->build()Lcom/garena/pay/android/data/GGPayment;

    move-result-object v4

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk$5;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object v0, v0, Lcom/ea/games/gamesdk/GarenaSdk;->mDenominations:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk$5;->val$orderInfo:Lcom/ea/games/gamesdk/OrderInfo;

    invoke-virtual {v1}, Lcom/ea/games/gamesdk/OrderInfo;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/garena/pay/android/data/GGPayment$Denomination;

    const-string v7, "201069"

    const/16 v8, 0x1232

    invoke-static/range {v3 .. v8}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->processPaymentWithChannelItem(Landroid/app/Activity;Lcom/garena/pay/android/data/GGPayment;Lcom/garena/pay/android/GGPayResponseCallback;Lcom/garena/pay/android/data/GGPayment$Denomination;Ljava/lang/String;I)V

    return-void
.end method
