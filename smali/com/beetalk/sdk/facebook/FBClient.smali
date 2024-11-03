.class public Lcom/beetalk/sdk/facebook/FBClient;
.super Ljava/lang/Object;
.source "FBClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSession(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/login/LoginManager;->logOut()V

    return-void
.end method
