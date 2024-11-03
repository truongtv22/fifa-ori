.class Lcom/beetalk/sdk/EmailAuthActivity$3;
.super Ljava/lang/Object;
.source "EmailAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/EmailAuthActivity;->onAuthFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/EmailAuthActivity;

.field final synthetic val$outcome:Lcom/beetalk/sdk/AuthClient$Result;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/EmailAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/EmailAuthActivity$3;->this$0:Lcom/beetalk/sdk/EmailAuthActivity;

    iput-object p2, p0, Lcom/beetalk/sdk/EmailAuthActivity$3;->val$outcome:Lcom/beetalk/sdk/AuthClient$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/EmailAuthActivity$3;->this$0:Lcom/beetalk/sdk/EmailAuthActivity;

    iget-object v1, p0, Lcom/beetalk/sdk/EmailAuthActivity$3;->val$outcome:Lcom/beetalk/sdk/AuthClient$Result;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/EmailAuthActivity;->access$100(Lcom/beetalk/sdk/EmailAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method
