.class Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;
.super Ljava/lang/Object;
.source "NewGoogleIabPayRequestHandler.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->querySkuDetails(Ljava/util/List;Ljava/util/List;)Lbolts/Task;
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
        "Lcom/android/billingclient/api/SkuDetails;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

.field final synthetic val$normalIds:Ljava/util/List;

.field final synthetic val$subIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    iput-object p2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;->val$normalIds:Ljava/util/List;

    iput-object p3, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;->val$subIds:Ljava/util/List;

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
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;>;"
        }
    .end annotation

    const/4 p1, 0x2

    new-array p1, p1, [Lbolts/Task;

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    const-string v1, "inapp"

    iget-object v2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;->val$normalIds:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->access$500(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;->this$0:Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;

    const-string v1, "subs"

    iget-object v2, p0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;->val$subIds:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;->access$500(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler;Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lbolts/Task;->whenAllResult(Ljava/util/Collection;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7$1;

    invoke-direct {v0, p0}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7$1;-><init>(Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

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

    invoke-virtual {p0, p1}, Lcom/garena/pay/android/NewGoogleIabPayRequestHandler$7;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
