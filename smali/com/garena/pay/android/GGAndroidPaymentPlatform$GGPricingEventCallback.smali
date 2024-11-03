.class public interface abstract Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGPricingEventCallback;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GGPricingEventCallback"
.end annotation


# virtual methods
.method public abstract onResultObtained(ILjava/util/List;Ljava/util/List;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$Denomination;",
            ">;",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/PricingEvent;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
