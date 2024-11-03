.class public final synthetic Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda4;->f$0:Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$$ExternalSyntheticLambda4;->f$0:Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/GGLoginSession;->lambda$clearSessionInternal$0(Lcom/beetalk/sdk/GGLoginSession$ClearSessionCallback;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
