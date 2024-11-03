.class Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;
.super Ljava/lang/Object;
.source "NewGoogleIabPayRequestHandler.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->startPay(Landroid/app/Activity;Lcom/garena/pay/android/GGPayRequest;Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Ljava/lang/Boolean;",
        "Lbolts/Task<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$payRequest:Lcom/garena/pay/android/GGPayRequest;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Landroid/app/Activity;Ljava/lang/String;Lcom/garena/pay/android/GGPayRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iput-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;->val$productId:Ljava/lang/String;

    iput-object p4, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;->val$payRequest:Lcom/garena/pay/android/GGPayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;->val$productId:Ljava/lang/String;

    iget-object v2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;->val$payRequest:Lcom/garena/pay/android/GGPayRequest;

    invoke-static {p1, v0, v1, v2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->access$400(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Landroid/app/Activity;Ljava/lang/String;Lcom/garena/pay/android/GGPayRequest;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
