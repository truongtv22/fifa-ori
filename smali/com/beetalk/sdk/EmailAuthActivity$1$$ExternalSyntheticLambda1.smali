.class public final synthetic Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/EmailAuthActivity$1;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/EmailAuthActivity$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/EmailAuthActivity$1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity$1$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/EmailAuthActivity$1;

    invoke-virtual {v0}, Lcom/beetalk/sdk/EmailAuthActivity$1;->lambda$shouldOverrideUrlLoading$1$com-beetalk-sdk-EmailAuthActivity$1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
