.class public Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;
.super Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;
.source "FBUserInfoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin<",
        "Ljava/lang/Void;",
        "Lcom/beetalk/sdk/plugin/PluginResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/fb/BaseFBPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->complain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->result(Landroid/app/Activity;Lorg/json/JSONObject;)V

    return-void
.end method

.method private complain(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$3;

    invoke-direct {v1, p0, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$3;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private result(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$2;

    invoke-direct {v1, p0, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$2;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook.request.me"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb45

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onError(Ljava/lang/Exception;Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->complain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$1;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "id,name,email,birthday,first_name,last_name"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method
