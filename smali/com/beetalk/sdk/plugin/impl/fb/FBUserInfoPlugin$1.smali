.class Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$1;
.super Ljava/lang/Object;
.source "FBUserInfoPlugin.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->onSuccess(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->access$000(Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$1;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-static {p2, v0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->access$100(Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;Landroid/app/Activity;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
