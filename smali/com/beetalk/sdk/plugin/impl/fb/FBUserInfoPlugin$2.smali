.class Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$2;
.super Lcom/beetalk/sdk/plugin/PluginResult;
.source "FBUserInfoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->result(Landroid/app/Activity;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;

.field final synthetic val$object:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;Lorg/json/JSONObject;)V
    .locals 1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$2;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$2;->val$object:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$2;->status:I

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$2;->flag:I

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$2;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$2;->source:Ljava/lang/String;

    return-void
.end method
