.class Lcom/beetalk/sdk/GGLoginSession$1;
.super Ljava/lang/Object;
.source "GGLoginSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGLoginSession;->notifyCallback(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GGLoginSession;

.field final synthetic val$aSession:Lcom/beetalk/sdk/GGLoginSession;

.field final synthetic val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$1;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSession$1;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    iput-object p3, p0, Lcom/beetalk/sdk/GGLoginSession$1;->val$aSession:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p4, p0, Lcom/beetalk/sdk/GGLoginSession$1;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$1;->val$callback:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession$1;->val$aSession:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSession$1;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionCallback;->onSessionProcessed(Lcom/beetalk/sdk/GGLoginSession;Ljava/lang/Exception;)V

    return-void
.end method
