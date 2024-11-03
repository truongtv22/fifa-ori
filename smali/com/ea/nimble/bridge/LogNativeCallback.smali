.class public Lcom/ea/nimble/bridge/LogNativeCallback;
.super Ljava/lang/Object;
.source "LogNativeCallback.java"

# interfaces
.implements Lcom/ea/nimble/ILog$LogCallback;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ea/nimble/bridge/LogNativeCallback;->m_id:I

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/ea/nimble/bridge/LogNativeCallback;->m_id:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public finalize()V
    .locals 1

    iget v0, p0, Lcom/ea/nimble/bridge/LogNativeCallback;->m_id:I

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    return-void
.end method
