.class public final synthetic Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda2;->f$0:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/pgs/PgsController;->lambda$getRecallSessionId$6(Landroid/app/Activity;Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
