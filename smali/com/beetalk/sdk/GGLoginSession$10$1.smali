.class Lcom/beetalk/sdk/GGLoginSession$10$1;
.super Ljava/lang/Object;
.source "GGLoginSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGLoginSession$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/beetalk/sdk/GGLoginSession$10;

.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGLoginSession$10;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$10$1;->this$1:Lcom/beetalk/sdk/GGLoginSession$10;

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSession$10$1;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$10$1;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession$10$1;->this$1:Lcom/beetalk/sdk/GGLoginSession$10;

    iget-object v1, v1, Lcom/beetalk/sdk/GGLoginSession$10;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSession$10$1;->this$1:Lcom/beetalk/sdk/GGLoginSession$10;

    iget-object v2, v2, Lcom/beetalk/sdk/GGLoginSession$10;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void
.end method
