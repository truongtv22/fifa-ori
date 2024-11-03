.class Lcom/ea/nimble/bridge/BaseNativeCallback$1;
.super Ljava/lang/Object;
.source "BaseNativeCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$data:[Ljava/lang/Object;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/ea/nimble/bridge/BaseNativeCallback$1;->val$id:I

    iput-object p2, p0, Lcom/ea/nimble/bridge/BaseNativeCallback$1;->val$data:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback$1;->val$id:I

    iget-object v1, p0, Lcom/ea/nimble/bridge/BaseNativeCallback$1;->val$data:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method
