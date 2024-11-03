.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->GGRedeem(Landroid/content/Context;Lcom/garena/pay/android/data/GGRedeemRequest;Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

.field final synthetic val$rebateId:J

.field final synthetic val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;JLcom/beetalk/sdk/cache/RedeemCache;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    iput-wide p2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$rebateId:J

    iput-object p4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultObtained(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "redeem response: %s"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/beetalk/sdk/helper/Helper;->getErrorCode(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    if-eq v0, v2, :cond_0

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    return-void

    :cond_0
    const-string v0, "error_not_available"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$rebateId:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/RedeemCache;->setRedeemTime()V

    :cond_1
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->REDEEM_NOT_AVAILABLE:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    goto :goto_0

    :cond_2
    const-string v0, "error_already_redeemed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$rebateId:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/RedeemCache;->setRedeemTime()V

    :cond_3
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ALREADY_REDEEMED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/garena/pay/android/helper/NetworkUtils;->parseRedeemResult(Ljava/lang/String;)Lcom/garena/pay/android/data/GGRedeemResponse;

    move-result-object p1

    if-eqz p1, :cond_6

    iget v0, p1, Lcom/garena/pay/android/data/GGRedeemResponse;->result:I

    sget-object v4, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v4}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v0, v4, :cond_6

    iget-wide v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$rebateId:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/RedeemCache;->setRedeemTime()V

    :cond_5
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    iget-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-virtual {p1}, Lcom/beetalk/sdk/cache/RedeemCache;->clearRedeemCache()V

    :goto_0
    return-void
.end method

.method public onTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$callback:Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_REQUEST_TIME_OUT:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGOnRedeemCallback;->onRedeemResultObtained(ILcom/garena/pay/android/data/GGRedeemResponse;)V

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$10;->val$redeemCache:Lcom/beetalk/sdk/cache/RedeemCache;

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/RedeemCache;->clearRedeemCache()V

    return-void
.end method
