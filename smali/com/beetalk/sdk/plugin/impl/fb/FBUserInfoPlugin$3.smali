.class Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$3;
.super Lcom/beetalk/sdk/plugin/PluginResult;
.source "FBUserInfoPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->complain(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$3;->this$0:Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$3;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/PluginResult;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$3;->status:I

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$3;->flag:I

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$3;->message:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin$3;->source:Ljava/lang/String;

    return-void
.end method
