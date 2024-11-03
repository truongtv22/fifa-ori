.class Lcom/garena/pay/android/GGBillingDataSource$1;
.super Ljava/lang/Object;
.source "GGBillingDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/GGBillingDataSource;->retryBillingServiceConnectionWithExponentialBackoff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/GGBillingDataSource;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/GGBillingDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/GGBillingDataSource$1;->this$0:Lcom/garena/pay/android/GGBillingDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/garena/pay/android/GGBillingDataSource$1;->this$0:Lcom/garena/pay/android/GGBillingDataSource;

    invoke-static {v0}, Lcom/garena/pay/android/GGBillingDataSource;->access$000(Lcom/garena/pay/android/GGBillingDataSource;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/pay/android/GGBillingDataSource$1;->this$0:Lcom/garena/pay/android/GGBillingDataSource;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method
