.class public interface abstract Lcom/ea/nimble/INimbleGameSdk;
.super Ljava/lang/Object;
.source "INimbleGameSdk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;,
        Lcom/ea/nimble/INimbleGameSdk$IExitCallback;,
        Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;,
        Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;,
        Lcom/ea/nimble/INimbleGameSdk$Result;,
        Lcom/ea/nimble/INimbleGameSdk$State;
    }
.end annotation


# virtual methods
.method public abstract addAdditionalInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract auth(Ljava/lang/String;)V
.end method

.method public abstract exit()V
.end method

.method public abstract exitApp()V
.end method

.method public abstract getAdditionalInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLoginAccount()Lcom/ea/games/gamesdk/AccountInfo;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSdk()Lcom/ea/games/gamesdk/GameSdkInterface;
.end method

.method public abstract getSdkExtend()Lcom/ea/games/gamesdk/GameSdkExtendInterface;
.end method

.method public abstract getState()Lcom/ea/nimble/INimbleGameSdk$State;
.end method

.method public abstract hasExit()Z
.end method

.method public abstract hasLogout()Z
.end method

.method public abstract init(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract initApp(Landroid/content/Context;)V
.end method

.method public abstract login()V
.end method

.method public abstract logout()V
.end method

.method public abstract notifySdk(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerAccountCallback(Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;)Lcom/ea/nimble/INimbleGameSdk;
.end method

.method public abstract registerExitCallback(Lcom/ea/nimble/INimbleGameSdk$IExitCallback;)Lcom/ea/nimble/INimbleGameSdk;
.end method

.method public abstract registerLifecycleCallback(Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;)Lcom/ea/nimble/INimbleGameSdk;
.end method

.method public abstract registerNotifyCallback(Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;)Lcom/ea/nimble/INimbleGameSdk;
.end method
