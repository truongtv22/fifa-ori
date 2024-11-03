.class public interface abstract Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPaymentOptionsCallback;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GGPaymentOptionsCallback"
.end annotation


# virtual methods
.method public abstract onResultObtained(Ljava/util/List;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$PaymentChannel;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
