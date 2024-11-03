.class public final synthetic Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/android/billingclient/api/SkuDetails;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/SkuDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/billingclient/api/SkuDetails;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/billingclient/api/SkuDetails;

    invoke-static {v0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->lambda$launchBillingFlow$0(Lcom/android/billingclient/api/SkuDetails;Lbolts/Task;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object p1

    return-object p1
.end method
