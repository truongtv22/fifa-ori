.class public interface abstract Lcom/ea/games/gamesdk/GameSdkInterface;
.super Ljava/lang/Object;
.source "GameSdkInterface.java"


# virtual methods
.method public abstract addAdditionalInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract auth(Landroid/app/Activity;Lcom/ea/games/gamesdk/AuthenticationInfo;)V
.end method

.method public abstract exit(Landroid/app/Activity;)V
.end method

.method public abstract exitApp(Landroid/app/Activity;)V
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

.method public abstract hasExit()Z
.end method

.method public abstract hasLogout()Z
.end method

.method public abstract init(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract initApp(Landroid/content/Context;)V
.end method

.method public abstract login(Landroid/app/Activity;)V
.end method

.method public abstract logout(Landroid/app/Activity;)V
.end method

.method public abstract notifySdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onCreate(Landroid/app/Activity;)V
.end method

.method public abstract onDestory(Landroid/app/Activity;)V
.end method

.method public abstract onPause(Landroid/app/Activity;)V
.end method

.method public abstract onResume(Landroid/app/Activity;)V
.end method

.method public abstract pay(Landroid/app/Activity;Lcom/ea/games/gamesdk/UserInfo;Lcom/ea/games/gamesdk/OrderInfo;Ljava/lang/String;)V
.end method

.method public abstract registerAuthCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract registerDestoryCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract registerExitCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract registerInitCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract registerLoginCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/AccountInfo;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract registerLogoutCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/AccountInfo;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract registerNotifyCallback(Lcom/ea/games/gamesdk/SdkCallbackWithType;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallbackWithType<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract registerPayCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/PayInfo;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract registerPushOptionCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/PushOption;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract requestCatalogItems(Ljava/util/List;Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ea/games/gamesdk/CatalogInfo;",
            ">;",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Ljava/util/List<",
            "Lcom/ea/games/gamesdk/CatalogInfo;",
            ">;>;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract requestRestoreItems(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Ljava/util/List<",
            "Lcom/ea/games/gamesdk/TransactionInfo;",
            ">;>;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation
.end method

.method public abstract restore(Landroid/app/Activity;)V
.end method
