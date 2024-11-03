.class public final synthetic Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/beetalk/sdk/pgs/PgsController;->lambda$saveToken$0(Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
