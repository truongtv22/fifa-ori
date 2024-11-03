.class Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$6;
.super Ljava/lang/Object;
.source "NewGoogleIabPayRequestHandler.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->consumeAll()Lbolts/Task;
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
        "Ljava/util/List<",
        "Landroid/util/Pair<",
        "Lcom/android/billingclient/api/Purchase;",
        "Lcom/beetalk/sdk/networking/model/CommitResp;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$6;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/Task<",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/billingclient/api/Purchase;",
            "Lcom/beetalk/sdk/networking/model/CommitResp;",
            ">;>;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$6;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    invoke-static {p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->access$300(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;)Lcom/garena/pay/android/GGBillingDataSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/garena/pay/android/GGBillingDataSource;->queryPurchasesAsync()Lbolts/Task;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$6;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
