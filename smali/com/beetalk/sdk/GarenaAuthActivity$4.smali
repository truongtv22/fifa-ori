.class Lcom/beetalk/sdk/GarenaAuthActivity$4;
.super Ljava/lang/Object;
.source "GarenaAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GarenaAuthActivity;->onAuthFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GarenaAuthActivity;

.field final synthetic val$outcome:Lcom/beetalk/sdk/AuthClient$Result;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GarenaAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity$4;->this$0:Lcom/beetalk/sdk/GarenaAuthActivity;

    iput-object p2, p0, Lcom/beetalk/sdk/GarenaAuthActivity$4;->val$outcome:Lcom/beetalk/sdk/AuthClient$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity$4;->this$0:Lcom/beetalk/sdk/GarenaAuthActivity;

    iget-object v1, p0, Lcom/beetalk/sdk/GarenaAuthActivity$4;->val$outcome:Lcom/beetalk/sdk/AuthClient$Result;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GarenaAuthActivity;->access$100(Lcom/beetalk/sdk/GarenaAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method
