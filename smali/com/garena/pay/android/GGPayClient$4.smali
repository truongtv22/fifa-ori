.class Lcom/garena/pay/android/GGPayClient$4;
.super Ljava/lang/Object;
.source "GGPayClient.java"

# interfaces
.implements Lcom/garena/pay/android/view/DenominationView$DenominationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGPayClient;->showProducts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/GGPayClient;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGPayClient;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient$4;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenominationChosen(Lcom/garena/pay/android/data/GGPayment$Denomination;)V
    .locals 2

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$4;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->READY_TO_PAY:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-static {v0, v1}, Lcom/garena/pay/android/GGPayClient;->access$602(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGPayClient$PaymentState;)Lcom/garena/pay/android/GGPayClient$PaymentState;

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$4;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v0}, Lcom/garena/pay/android/GGPayClient;->access$300(Lcom/garena/pay/android/GGPayClient;)Lcom/garena/pay/android/GGPayRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/GGPayRequest;->setChosenDenomination(Lcom/garena/pay/android/data/GGPayment$Denomination;)V

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$4;->this$0:Lcom/garena/pay/android/GGPayClient;

    invoke-static {v0}, Lcom/garena/pay/android/GGPayClient;->access$200(Lcom/garena/pay/android/GGPayClient;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "We have a denomination chosen %s Continue with payment next step"

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDismissed()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "User Dismissed the Dialog Box. Therefore invoking failed to pay"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$4;->this$0:Lcom/garena/pay/android/GGPayClient;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-static {v0, v1}, Lcom/garena/pay/android/GGPayClient;->access$100(Lcom/garena/pay/android/GGPayClient;Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method
