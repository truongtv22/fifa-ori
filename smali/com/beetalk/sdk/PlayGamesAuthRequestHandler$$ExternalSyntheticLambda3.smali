.class public final synthetic Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler$$ExternalSyntheticLambda3;->f$0:Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/PlayGamesAuthRequestHandler;->lambda$startAuth$0$com-beetalk-sdk-PlayGamesAuthRequestHandler(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
