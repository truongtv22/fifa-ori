.class Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo$1;
.super Ljava/lang/Object;
.source "GetUserInfo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;->executeAction(Landroid/app/Activity;Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo$1;->this$0:Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    invoke-static {}, Lcom/beetalk/sdk/networking/service/UserService;->getUserInfoSync()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;

    invoke-direct {v1}, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;-><init>()V

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->getCurrentSession()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/beetalk/sdk/GGLoginSession;->getPlatform()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->platform:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "UserInfoPlugin: Received response from server %s"

    invoke-static {v3, v2}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/beetalk/sdk/helper/Helper;->getErrorCode(Lorg/json/JSONObject;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    const-string v2, "platform"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->platform:I

    new-instance v2, Lcom/beetalk/sdk/data/DataModel$UserInfo;

    invoke-direct {v2}, Lcom/beetalk/sdk/data/DataModel$UserInfo;-><init>()V

    invoke-virtual {v2, v0}, Lcom/beetalk/sdk/data/DataModel$UserInfo;->updateFrom(Lorg/json/JSONObject;)V

    iput-object v2, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->userInfo:Lcom/beetalk/sdk/data/DataModel$UserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/beetalk/sdk/data/DataModel$UserInfoRet;->flag:I

    :goto_0
    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo$1;->this$0:Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;

    invoke-virtual {v3}, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
