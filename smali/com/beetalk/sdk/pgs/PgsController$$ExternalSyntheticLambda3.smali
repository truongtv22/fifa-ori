.class public final synthetic Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda3;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/pgs/PgsController$$ExternalSyntheticLambda3;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lcom/beetalk/sdk/pgs/PgsController;->lambda$signIn$2(Landroid/app/Activity;)Lcom/google/android/gms/games/GamesSignInClient;

    move-result-object v0

    return-object v0
.end method
