.class public interface abstract Lcom/garena/pay/android/GGAndroidPaymentPlatform$GGGetEventsCallback;
.super Ljava/lang/Object;
.source "GGAndroidPaymentPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/GGAndroidPaymentPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GGGetEventsCallback"
.end annotation


# virtual methods
.method public abstract onEventResultObtained(ILjava/util/List;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/networking/model/LessIsMoreEvent;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method
