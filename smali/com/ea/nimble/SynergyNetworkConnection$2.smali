.class Lcom/ea/nimble/SynergyNetworkConnection$2;
.super Ljava/lang/Object;
.source "SynergyNetworkConnection.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyNetworkConnection;->updateNetworkHeaderHandler()V
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

    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection$2;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 1

    iget-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection$2;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-static {p1}, Lcom/ea/nimble/SynergyNetworkConnection;->access$400(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection$2;->this$0:Lcom/ea/nimble/SynergyNetworkConnection;

    invoke-interface {p1, v0}, Lcom/ea/nimble/SynergyNetworkConnectionCallback;->callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    return-void
.end method
