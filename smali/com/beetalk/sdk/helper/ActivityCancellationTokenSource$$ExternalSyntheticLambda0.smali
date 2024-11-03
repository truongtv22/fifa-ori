.class public final synthetic Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/beetalk/sdk/helper/ActivityUtil$OnDestroyAction;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/helper/ActivityCancellationTokenSource;

    invoke-virtual {v0}, Lbolts/CancellationTokenSource;->cancel()V

    return-void
.end method
