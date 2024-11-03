.class Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$2;
.super Ljava/lang/Object;
.source "NexonRemoteTransactionGenerator.java"

# interfaces
.implements Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;->generateTransactionInfo(Ljava/lang/String;Lcom/ea/nimble/mtx/gamesdk/ITransactionGenerator$ITransactionInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator$2;->this$0:Lcom/ea/nimble/mtx/gamesdk/NexonRemoteTransactionGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareRequest(Lcom/ea/nimble/SynergyRequest;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    const-string v1, "synergy.product"

    invoke-interface {v0, v1}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ea/nimble/SynergyRequest;->send()V

    return-void
.end method
