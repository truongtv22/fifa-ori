.class Lcom/beetalk/sdk/GGLoginSession$10;
.super Ljava/lang/Object;
.source "GGLoginSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGLoginSession;->publishStatusChange(Lcom/beetalk/sdk/SessionStatus;Lcom/beetalk/sdk/SessionStatus;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GGLoginSession;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$10;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSession$10;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$10;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    invoke-static {v0}, Lcom/beetalk/sdk/GGLoginSession;->access$500(Lcom/beetalk/sdk/GGLoginSession;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    new-instance v2, Lcom/beetalk/sdk/GGLoginSession$10$1;

    invoke-direct {v2, p0, v1}, Lcom/beetalk/sdk/GGLoginSession$10$1;-><init>(Lcom/beetalk/sdk/GGLoginSession$10;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession$10;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    invoke-static {v1}, Lcom/beetalk/sdk/GGLoginSession;->access$600(Lcom/beetalk/sdk/GGLoginSession;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/beetalk/sdk/GGLoginSession;->access$700(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
