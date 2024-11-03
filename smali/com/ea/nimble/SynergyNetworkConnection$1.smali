.class Lcom/ea/nimble/SynergyNetworkConnection$1;
.super Ljava/lang/Object;
.source "SynergyNetworkConnection.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyNetworkConnection;->send()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyNetworkConnection;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyNetworkConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->access$100(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v0, p1}, Lcom/ea/nimble/SynergyNetworkConnection;->access$102(Lcom/ea/nimble/SynergyNetworkConnection;Lcom/ea/nimble/NetworkConnectionHandle;)Lcom/ea/nimble/NetworkConnectionHandle;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->access$200(Lcom/ea/nimble/SynergyNetworkConnection;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ea/nimble/NetworkConnectionHandle;->setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    invoke-interface {p1, v0}, Lcom/ea/nimble/NetworkConnectionHandle;->setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    invoke-interface {p1, v0}, Lcom/ea/nimble/NetworkConnectionHandle;->setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {p1}, Lcom/ea/nimble/SynergyNetworkConnection;->access$300(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {p1}, Lcom/ea/nimble/SynergyNetworkConnection;->access$300(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$1;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-interface {p1, v0}, Lcom/ea/nimble/SynergyNetworkConnectionCallback;->callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    :cond_1
    return-void
.end method
