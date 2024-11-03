.class Lcom/beetalk/sdk/GGPlatform$9;
.super Ljava/lang/Object;
.source "GGPlatform.java"

# interfaces
.implements Lcom/beetalk/sdk/plugin/GGPluginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform;->GGSendLinkToSession(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/GGPlatform$ShareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/beetalk/sdk/GGPlatform$ShareCallback;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGPlatform$ShareCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$9;->val$callback:Lcom/beetalk/sdk/GGPlatform$ShareCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/beetalk/sdk/plugin/PluginResult;

    new-instance v0, Lcom/beetalk/sdk/ndk/ShareRet;

    invoke-direct {v0}, Lcom/beetalk/sdk/ndk/ShareRet;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/beetalk/sdk/ndk/ShareRet;->platform:I

    iget v1, p1, Lcom/beetalk/sdk/plugin/PluginResult;->flag:I

    iput v1, v0, Lcom/beetalk/sdk/ndk/ShareRet;->flag:I

    iget-object p1, p1, Lcom/beetalk/sdk/plugin/PluginResult;->message:Ljava/lang/String;

    iput-object p1, v0, Lcom/beetalk/sdk/ndk/ShareRet;->desc:Ljava/lang/String;

    iget-object p1, p0, Lcom/beetalk/sdk/GGPlatform$9;->val$callback:Lcom/beetalk/sdk/GGPlatform$ShareCallback;

    invoke-interface {p1, v0}, Lcom/beetalk/sdk/GGPlatform$ShareCallback;->onPluginResult(Ljava/lang/Object;)V

    return-void
.end method
