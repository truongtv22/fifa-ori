.class Lcom/ea/games/gamesdk/GarenaSdk$3;
.super Ljava/lang/Object;
.source "GarenaSdk.java"

# interfaces
.implements Lcom/beetalk/sdk/GGPlatform$UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/games/gamesdk/GarenaSdk;->getUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/games/gamesdk/GarenaSdk;


# direct methods
.method constructor <init>(Lcom/ea/games/gamesdk/GarenaSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$3;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginResult(Lcom/beetalk/sdk/data/DataModel$UserInfoRet;)V
    .locals 3

    sget-object v0, Lcom/ea/games/gamesdk/GarenaSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUserInfo"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk$3;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object p1, p1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->userInfo:Lcom/beetalk/sdk/data/DataModel$UserInfo;

    invoke-virtual {v0, p1}, Lcom/ea/games/gamesdk/GarenaSdk;->onLoginSuccess(Lcom/beetalk/sdk/data/DataModel$UserInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk$3;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GGGetUserInfo Failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    invoke-virtual {v0, v1, p1}, Lcom/ea/games/gamesdk/GarenaSdk;->onLoginFailure(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPluginResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;

    invoke-virtual {p0, p1}, Lcom/ea/games/gamesdk/GarenaSdk$3;->onPluginResult(Lcom/beetalk/sdk/data/DataModel$UserInfoRet;)V

    return-void
.end method
