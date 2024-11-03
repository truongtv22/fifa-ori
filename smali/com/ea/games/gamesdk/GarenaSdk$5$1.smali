.class Lcom/ea/games/gamesdk/GarenaSdk$5$1;
.super Ljava/lang/Object;
.source "GarenaSdk.java"

# interfaces
.implements Lcom/garena/pay/android/GGPayResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/games/gamesdk/GarenaSdk$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/games/gamesdk/GarenaSdk$5;


# direct methods
.method constructor <init>(Lcom/ea/games/gamesdk/GarenaSdk$5;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$5$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentProcessed(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V
    .locals 6

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/garena/pay/android/data/TransactionStatus;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p3}, Lcom/garena/pay/android/data/TransactionInfo;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "======[PAYMENT] GGPayResponseCallback status %s, transactionInfo Error Code %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/garena/pay/android/data/TransactionStatus;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    invoke-virtual {v2}, Lcom/garena/pay/android/data/TransactionStatus;->getValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1

    sget-object p1, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/garena/pay/android/data/TransactionInfo;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v5

    const-string p2, "Error code: %d msg: %s: "

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/garena/pay/android/data/TransactionInfo;->getErrorCode()I

    move-result p1

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, ""

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$5$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$5;

    iget-object p1, p1, Lcom/ea/games/gamesdk/GarenaSdk$5;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object p1, p1, Lcom/ea/games/gamesdk/GarenaSdk;->mPayCB:Lcom/ea/games/gamesdk/SdkCallback;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Lcom/ea/games/gamesdk/GarenaSDK/Constants$ErrorCode;->BillingVendorPurchaseUserCancel:Lcom/ea/games/gamesdk/GarenaSDK/Constants$ErrorCode;

    invoke-virtual {p3}, Lcom/ea/games/gamesdk/GarenaSDK/Constants$ErrorCode;->getValue()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ea/games/gamesdk/SdkCallback;->OnError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$5$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$5;

    iget-object p1, p1, Lcom/ea/games/gamesdk/GarenaSdk$5;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object p1, p1, Lcom/ea/games/gamesdk/GarenaSdk;->mPayCB:Lcom/ea/games/gamesdk/SdkCallback;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/garena/pay/android/data/TransactionInfo;->getErrorCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ea/games/gamesdk/SdkCallback;->OnError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/garena/pay/android/data/TransactionStatus;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-virtual {p3}, Lcom/garena/pay/android/data/TransactionInfo;->getTransactionId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "====[PAYMENT] status: %s, txn_id: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/ea/games/gamesdk/PayInfo;

    invoke-direct {p1}, Lcom/ea/games/gamesdk/PayInfo;-><init>()V

    iget-object p2, p0, Lcom/ea/games/gamesdk/GarenaSdk$5$1;->this$1:Lcom/ea/games/gamesdk/GarenaSdk$5;

    iget-object p2, p2, Lcom/ea/games/gamesdk/GarenaSdk$5;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object p2, p2, Lcom/ea/games/gamesdk/GarenaSdk;->mPayCB:Lcom/ea/games/gamesdk/SdkCallback;

    invoke-interface {p2, p1}, Lcom/ea/games/gamesdk/SdkCallback;->OnSucceed(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
