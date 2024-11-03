.class Lcom/ea/nimble/bridge/BaseNativeCallback$2;
.super Ljava/lang/Object;
.source "BaseNativeCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/bridge/BaseNativeCallback;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/bridge/BaseNativeCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/bridge/BaseNativeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/bridge/BaseNativeCallback$2;->this$0:Lcom/ea/nimble/bridge/BaseNativeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/bridge/BaseNativeCallback$2;->this$0:Lcom/ea/nimble/bridge/BaseNativeCallback;

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->access$000(Lcom/ea/nimble/bridge/BaseNativeCallback;)I

    move-result v0

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    return-void
.end method
