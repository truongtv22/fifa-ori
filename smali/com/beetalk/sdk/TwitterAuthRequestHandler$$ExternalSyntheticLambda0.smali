.class public final synthetic Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;

.field public final synthetic f$1:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/TwitterAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    iput-object p2, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/TwitterAuthRequestHandler;

    iget-object v1, p0, Lcom/beetalk/sdk/TwitterAuthRequestHandler$$ExternalSyntheticLambda0;->f$1:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v0, v1, p1}, Lcom/beetalk/sdk/TwitterAuthRequestHandler;->lambda$exchangeTokenFromGOP$0$com-beetalk-sdk-TwitterAuthRequestHandler(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
