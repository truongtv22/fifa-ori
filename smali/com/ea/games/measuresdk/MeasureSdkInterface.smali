.class public interface abstract Lcom/ea/games/measuresdk/MeasureSdkInterface;
.super Ljava/lang/Object;
.source "MeasureSdkInterface.java"


# virtual methods
.method public abstract destory()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract initApp(Landroid/content/Context;Z)V
.end method

.method public abstract pause()V
.end method

.method public abstract registerInitCallback(Lcom/ea/games/measuresdk/SdkCallback;)Lcom/ea/games/measuresdk/MeasureSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/measuresdk/SdkCallback<",
            "Lcom/ea/games/measuresdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/measuresdk/MeasureSdkInterface;"
        }
    .end annotation
.end method

.method public abstract resume()V
.end method

.method public abstract startWork(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract trackEvent(Lcom/ea/games/measuresdk/MeasureEvent;)V
.end method
