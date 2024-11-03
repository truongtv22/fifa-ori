.class public final synthetic Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda4;->f$0:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda4;->f$0:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/service/AuthService;->lambda$exchangeTwitterToken$0(Ljava/util/HashMap;)Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;

    move-result-object v0

    return-object v0
.end method
