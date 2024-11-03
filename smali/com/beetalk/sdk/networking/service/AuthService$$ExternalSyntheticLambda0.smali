.class public final synthetic Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/service/AuthService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/service/AuthService;->lambda$recallPGSSessionToken$5(Ljava/lang/String;)Lcom/beetalk/sdk/networking/model/RecallTokenResponse;

    move-result-object v0

    return-object v0
.end method
