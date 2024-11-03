.class public final synthetic Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GGLoginSession;

.field public final synthetic f$1:Lcom/beetalk/sdk/data/AuthToken;

.field public final synthetic f$2:Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;->f$1:Lcom/beetalk/sdk/data/AuthToken;

    iput-object p3, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;->f$2:Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/GGLoginSession;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;->f$1:Lcom/beetalk/sdk/data/AuthToken;

    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda3;->f$2:Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/GGLoginSession;->lambda$inspectGuestToken$4$com-beetalk-sdk-GGLoginSession(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
