.class public final synthetic Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/garena/pay/android/GGPayRequest;

.field public final synthetic f$3:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Ljava/lang/String;Lcom/garena/pay/android/GGPayRequest;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;->f$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iput-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;->f$2:Lcom/garena/pay/android/GGPayRequest;

    iput-object p4, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;->f$3:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;->f$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;->f$2:Lcom/garena/pay/android/GGPayRequest;

    iget-object v3, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda4;->f$3:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->lambda$launchBillingFlow$2$com-garena-pay-android-NewGoogleIabPayRequestHandler(Ljava/lang/String;Lcom/garena/pay/android/GGPayRequest;Landroid/app/Activity;Lbolts/Task;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
