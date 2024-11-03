.class Lcom/beetalk/sdk/AuthRequest$2;
.super Ljava/lang/Object;
.source "AuthRequest.java"

# interfaces
.implements Lcom/beetalk/sdk/ActivityLauncher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/AuthRequest;->getAuthClientRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/AuthRequest;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/AuthRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/AuthRequest$2;->this$0:Lcom/beetalk/sdk/AuthRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest$2;->this$0:Lcom/beetalk/sdk/AuthRequest;

    invoke-static {v0}, Lcom/beetalk/sdk/AuthRequest;->access$000(Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object v0

    invoke-interface {v0}, Lcom/beetalk/sdk/ActivityLauncher;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest$2;->this$0:Lcom/beetalk/sdk/AuthRequest;

    invoke-static {v0}, Lcom/beetalk/sdk/AuthRequest;->access$000(Lcom/beetalk/sdk/AuthRequest;)Lcom/beetalk/sdk/ActivityLauncher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/beetalk/sdk/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
