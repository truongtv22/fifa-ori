.class public Lcom/ea/nimble/bridge/MTXNativeCallback;
.super Ljava/lang/Object;
.source "MTXNativeCallback.java"

# interfaces
.implements Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;
.implements Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;
.implements Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    iget v0, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    return-void
.end method

.method public finalizeComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 3

    iget v0, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public itemGrantedComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 3

    iget v0, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 3

    iget v0, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public unverifiedReceiptReceived(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 3

    iget v0, p0, Lcom/ea/nimble/bridge/MTXNativeCallback;->m_id:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method
