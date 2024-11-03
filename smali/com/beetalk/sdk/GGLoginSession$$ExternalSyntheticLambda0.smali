.class public final synthetic Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GGLoginSession;

.field public final synthetic f$1:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/GGLoginSession$SessionCallback;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession;->lambda$inspectToken$2$com-beetalk-sdk-GGLoginSession(Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
