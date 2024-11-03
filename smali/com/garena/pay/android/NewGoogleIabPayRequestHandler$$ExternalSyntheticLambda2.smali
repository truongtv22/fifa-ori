.class public final synthetic Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# instance fields
.field public final synthetic f$0:Lbolts/TaskCompletionSource;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbolts/TaskCompletionSource;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda2;->f$0:Lbolts/TaskCompletionSource;

    iput-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda2;->f$0:Lbolts/TaskCompletionSource;

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->lambda$getSkuDetailsById$3(Lbolts/TaskCompletionSource;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
