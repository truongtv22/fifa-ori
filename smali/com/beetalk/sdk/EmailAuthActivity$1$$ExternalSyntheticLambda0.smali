.class public final synthetic Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/EmailAuthActivity$1;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/EmailAuthActivity$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/EmailAuthActivity$1;

    iput-object p2, p0, Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/EmailAuthActivity$1;

    iget-object v1, p0, Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/EmailAuthActivity$1;->lambda$shouldOverrideUrlLoading$0$com-beetalk-sdk-EmailAuthActivity$1(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
