.class public interface abstract Lcom/ea/nimble/INimbleMeasureSdk;
.super Ljava/lang/Object;
.source "INimbleMeasureSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/INimbleMeasureSdk$State;
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSdk()Lcom/ea/games/measuresdk/MeasureSdkInterface;
.end method

.method public abstract getState()Lcom/ea/nimble/INimbleMeasureSdk$State;
.end method

.method public abstract initApp(Landroid/content/Context;Z)V
.end method

.method public abstract trackEvent(Lcom/ea/games/measuresdk/MeasureEvent;)V
.end method
