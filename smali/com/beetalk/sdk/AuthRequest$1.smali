.class Lcom/beetalk/sdk/AuthRequest$1;
.super Ljava/lang/Object;
.source "AuthRequest.java"

# interfaces
.implements Lcom/beetalk/sdk/ActivityLauncher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/AuthRequest;-><init>(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/AuthRequest;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/AuthRequest;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/AuthRequest$1;->this$0:Lcom/beetalk/sdk/AuthRequest;

    iput-object p2, p0, Lcom/beetalk/sdk/AuthRequest$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest$1;->val$activity:Landroid/app/Activity;

    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/beetalk/sdk/AuthRequest$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
