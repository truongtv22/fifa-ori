.class Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;->publishStatusChange(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/GGAndroidPaymentPlatform;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$info:Lcom/garena/pay/android/data/TransactionInfo;

.field final synthetic val$status:Lcom/garena/pay/android/data/TransactionStatus;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGAndroidPaymentPlatform;Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;->this$0:Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    iput-object p2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;->val$status:Lcom/garena/pay/android/data/TransactionStatus;

    iput-object p3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;->val$e:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;->val$info:Lcom/garena/pay/android/data/TransactionInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;->this$0:Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    invoke-static {v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->access$200(Lcom/garena/pay/android/GGAndroidPaymentPlatform;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/GGPayResponseCallback;

    iget-object v2, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;->val$status:Lcom/garena/pay/android/data/TransactionStatus;

    iget-object v3, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;->val$e:Ljava/lang/Exception;

    iget-object v4, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;->val$info:Lcom/garena/pay/android/data/TransactionInfo;

    invoke-interface {v1, v2, v3, v4}, Lcom/garena/pay/android/GGPayResponseCallback;->onPaymentProcessed(Lcom/garena/pay/android/data/TransactionStatus;Ljava/lang/Exception;Lcom/garena/pay/android/data/TransactionInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/garena/pay/android/GGAndroidPaymentPlatform$12;->this$0:Lcom/garena/pay/android/GGAndroidPaymentPlatform;

    invoke-static {v0}, Lcom/garena/pay/android/GGAndroidPaymentPlatform;->access$200(Lcom/garena/pay/android/GGAndroidPaymentPlatform;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
