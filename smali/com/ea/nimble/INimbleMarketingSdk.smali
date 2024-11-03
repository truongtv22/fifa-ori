.class public interface abstract Lcom/ea/nimble/INimbleMarketingSdk;
.super Ljava/lang/Object;
.source "INimbleMarketingSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/INimbleMarketingSdk$State;
    }
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSdk()Lcom/ea/games/marketingsdk/MarketingSdkInterface;
.end method

.method public abstract getState()Lcom/ea/nimble/INimbleMarketingSdk$State;
.end method

.method public abstract initApp(Landroid/content/Context;Z)V
.end method

.method public abstract setUserCohort(ILjava/lang/String;)V
.end method

.method public abstract setUserID(Ljava/lang/String;)V
.end method

.method public abstract setUserLevel(I)V
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
.end method

.method public abstract trackPurchase(Ljava/lang/String;Ljava/lang/String;D)V
.end method
