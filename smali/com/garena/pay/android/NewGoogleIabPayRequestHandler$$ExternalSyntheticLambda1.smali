.class public final synthetic Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda1;->f$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iput-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda1;->f$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->lambda$getSkuDetailsById$4$com-garena-pay-android-NewGoogleIabPayRequestHandler(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
