.class public abstract Lcom/beetalk/sdk/plugin/GGPlugin;
.super Ljava/lang/Object;
.source "GGPlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private callback:Lcom/beetalk/sdk/plugin/GGPluginCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "TT;>;"
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
.method public embedInActivity()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TS;)V"
        }
    .end annotation
.end method

.method protected generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/plugin/GGPlugin$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/beetalk/sdk/plugin/GGPlugin$1;-><init>(Lcom/beetalk/sdk/plugin/GGPlugin;ILjava/lang/String;)V

    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getRequestCode()Ljava/lang/Integer;
.end method

.method public abstract onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
.end method

.method protected publishResult(Landroid/app/Activity;I)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/beetalk/sdk/plugin/GGPlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method protected publishResult(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/beetalk/sdk/plugin/GGPlugin;->generateResult(ILjava/lang/String;)Lcom/beetalk/sdk/plugin/PluginResult;

    move-result-object p2

    invoke-static {}, Lcom/beetalk/sdk/plugin/GGPluginManager;->getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;

    move-result-object p3

    invoke-virtual {p0}, Lcom/beetalk/sdk/plugin/GGPlugin;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, p1, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected publishResult(Landroid/app/Activity;Lcom/garena/pay/android/GGErrorCode;)V
    .locals 1

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/beetalk/sdk/plugin/GGPlugin;->publishResult(Landroid/app/Activity;ILjava/lang/String;)V

    return-void
.end method

.method public final setCallback(Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/GGPlugin;->callback:Lcom/beetalk/sdk/plugin/GGPluginCallback;

    return-void
.end method
