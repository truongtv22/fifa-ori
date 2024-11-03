.class public interface abstract Lcom/ea/games/marketingsdk/MarketingSdkInterface;
.super Ljava/lang/Object;
.source "MarketingSdkInterface.java"


# virtual methods
.method public abstract destory(Landroid/app/Activity;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract initApp(Landroid/content/Context;Z)V
.end method

.method public abstract pause(Landroid/app/Activity;)V
.end method

.method public abstract registerInitCallback(Lcom/ea/games/marketingsdk/SdkCallback;)Lcom/ea/games/marketingsdk/MarketingSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/marketingsdk/SdkCallback<",
            "Lcom/ea/games/marketingsdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/marketingsdk/MarketingSdkInterface;"
        }
    .end annotation
.end method

.method public abstract resume(Landroid/app/Activity;)V
.end method

.method public abstract setUserCohort(ILjava/lang/String;)V
.end method

.method public abstract setUserID(Ljava/lang/String;)V
.end method

.method public abstract setUserLevel(I)V
.end method

.method public abstract start(Landroid/app/Activity;)V
.end method

.method public abstract startWork(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract stop(Landroid/app/Activity;)V
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
.end method

.method public abstract trackPurchase(Ljava/lang/String;Ljava/lang/String;D)V
.end method
