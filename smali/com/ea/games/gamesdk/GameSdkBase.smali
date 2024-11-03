.class public abstract Lcom/ea/games/gamesdk/GameSdkBase;
.super Ljava/lang/Object;
.source "GameSdkBase.java"

# interfaces
.implements Lcom/ea/games/gamesdk/GameSdkInterface;


# instance fields
.field protected mAuthCB:Lcom/ea/games/gamesdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;"
        }
    .end annotation
.end field

.field protected mDestoryCB:Lcom/ea/games/gamesdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;"
        }
    .end annotation
.end field

.field protected mExitCB:Lcom/ea/games/gamesdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;"
        }
    .end annotation
.end field

.field protected mInitCB:Lcom/ea/games/gamesdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoginCB:Lcom/ea/games/gamesdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLogoutCB:Lcom/ea/games/gamesdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotifyCB:Lcom/ea/games/gamesdk/SdkCallbackWithType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallbackWithType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPayCB:Lcom/ea/games/gamesdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/PayInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mPushOptionCB:Lcom/ea/games/gamesdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/PushOption;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestCatalogCB:Lcom/ea/games/gamesdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Ljava/util/List<",
            "Lcom/ea/games/gamesdk/CatalogInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mRequestRestoreCB:Lcom/ea/games/gamesdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Ljava/util/List<",
            "Lcom/ea/games/gamesdk/TransactionInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAdditionalInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public registerAuthCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mAuthCB:Lcom/ea/games/gamesdk/SdkCallback;

    return-object p0
.end method

.method public registerDestoryCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mDestoryCB:Lcom/ea/games/gamesdk/SdkCallback;

    return-object p0
.end method

.method public registerExitCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mExitCB:Lcom/ea/games/gamesdk/SdkCallback;

    return-object p0
.end method

.method public registerInitCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mInitCB:Lcom/ea/games/gamesdk/SdkCallback;

    return-object p0
.end method

.method public registerLoginCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/AccountInfo;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mLoginCB:Lcom/ea/games/gamesdk/SdkCallback;

    return-object p0
.end method

.method public registerLogoutCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/AccountInfo;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mLogoutCB:Lcom/ea/games/gamesdk/SdkCallback;

    return-object p0
.end method

.method public registerNotifyCallback(Lcom/ea/games/gamesdk/SdkCallbackWithType;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallbackWithType<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mNotifyCB:Lcom/ea/games/gamesdk/SdkCallbackWithType;

    return-object p0
.end method

.method public registerPayCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/PayInfo;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mPayCB:Lcom/ea/games/gamesdk/SdkCallback;

    return-object p0
.end method

.method public registerPushOptionCallback(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/gamesdk/SdkCallback<",
            "Lcom/ea/games/gamesdk/PushOption;",
            ">;)",
            "Lcom/ea/games/gamesdk/GameSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mPushOptionCB:Lcom/ea/games/gamesdk/SdkCallback;

    return-object p0
.end method

.method public requestCatalogItems(Ljava/util/List;Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
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

    iput-object p2, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mRequestCatalogCB:Lcom/ea/games/gamesdk/SdkCallback;

    invoke-interface {p2, p1}, Lcom/ea/games/gamesdk/SdkCallback;->OnSucceed(Ljava/lang/Object;)V

    return-object p0
.end method

.method public requestRestoreItems(Lcom/ea/games/gamesdk/SdkCallback;)Lcom/ea/games/gamesdk/GameSdkInterface;
    .locals 0
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

    iput-object p1, p0, Lcom/ea/games/gamesdk/GameSdkBase;->mRequestRestoreCB:Lcom/ea/games/gamesdk/SdkCallback;

    return-object p0
.end method
