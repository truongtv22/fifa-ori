.class public final synthetic Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GGLoginSession;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GGLoginSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda2;->f$0:Lcom/beetalk/sdk/GGLoginSession;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda2;->f$0:Lcom/beetalk/sdk/GGLoginSession;

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession;->lambda$logout$1$com-beetalk-sdk-GGLoginSession()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
