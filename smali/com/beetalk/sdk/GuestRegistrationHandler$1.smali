.class Lcom/beetalk/sdk/GuestRegistrationHandler$1;
.super Ljava/lang/Object;
.source "GuestRegistrationHandler.java"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GuestRegistrationHandler;->startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

.field final synthetic val$regInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GuestRegistrationHandler;Lcom/beetalk/sdk/data/GuestAccountRegInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    iput-object p2, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->val$regInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/GuestRegistrationHandler;->access$000(Lcom/beetalk/sdk/GuestRegistrationHandler;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    iget-object p1, p1, Lcom/beetalk/sdk/GuestRegistrationHandler;->client:Lcom/beetalk/sdk/AuthClient;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    goto :goto_1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object p1

    iget-object v2, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->val$regInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iget-object v2, v2, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->putGuestInfo(JLjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object p1

    iget-object v2, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->val$regInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iget-object v2, v2, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/beetalk/sdk/cache/PersistentCache;->putGuestInfo(JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_0
    iget-object p1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    iget-object v2, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$1;->val$regInfo:Lcom/beetalk/sdk/data/GuestAccountRegInfo;

    iget-object v2, v2, Lcom/beetalk/sdk/data/GuestAccountRegInfo;->password:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/beetalk/sdk/GuestRegistrationHandler;->access$100(Lcom/beetalk/sdk/GuestRegistrationHandler;JLjava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
