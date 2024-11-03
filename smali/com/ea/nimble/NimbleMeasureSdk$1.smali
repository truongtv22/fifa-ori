.class Lcom/ea/nimble/NimbleMeasureSdk$1;
.super Ljava/lang/Object;
.source "NimbleMeasureSdk.java"

# interfaces
.implements Lcom/ea/games/measuresdk/SdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/NimbleMeasureSdk;->initApp(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ea/games/measuresdk/SdkCallback<",
        "Lcom/ea/games/measuresdk/VoidParam;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/NimbleMeasureSdk;


# direct methods
.method constructor <init>(Lcom/ea/nimble/NimbleMeasureSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk$1;->this$0:Lcom/ea/nimble/NimbleMeasureSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/ea/nimble/NimbleMeasureSdk;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init sdk error, name :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/NimbleMeasureSdk$1;->this$0:Lcom/ea/nimble/NimbleMeasureSdk;

    invoke-static {v2}, Lcom/ea/nimble/NimbleMeasureSdk;->access$200(Lcom/ea/nimble/NimbleMeasureSdk;)Lcom/ea/games/measuresdk/MeasureSdkInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msg :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnFailed(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/ea/nimble/NimbleMeasureSdk;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init sdk failed, name :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/NimbleMeasureSdk$1;->this$0:Lcom/ea/nimble/NimbleMeasureSdk;

    invoke-static {v2}, Lcom/ea/nimble/NimbleMeasureSdk;->access$200(Lcom/ea/nimble/NimbleMeasureSdk;)Lcom/ea/games/measuresdk/MeasureSdkInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msg :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnSucceed(Lcom/ea/games/measuresdk/VoidParam;)V
    .locals 2

    iget-object p1, p0, Lcom/ea/nimble/NimbleMeasureSdk$1;->this$0:Lcom/ea/nimble/NimbleMeasureSdk;

    sget-object v0, Lcom/ea/nimble/INimbleMeasureSdk$State;->INITED:Lcom/ea/nimble/INimbleMeasureSdk$State;

    invoke-static {p1, v0}, Lcom/ea/nimble/NimbleMeasureSdk;->access$002(Lcom/ea/nimble/NimbleMeasureSdk;Lcom/ea/nimble/INimbleMeasureSdk$State;)Lcom/ea/nimble/INimbleMeasureSdk$State;

    invoke-static {}, Lcom/ea/nimble/NimbleMeasureSdk;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init sdk ok, name :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ea/nimble/NimbleMeasureSdk$1;->this$0:Lcom/ea/nimble/NimbleMeasureSdk;

    invoke-static {v1}, Lcom/ea/nimble/NimbleMeasureSdk;->access$200(Lcom/ea/nimble/NimbleMeasureSdk;)Lcom/ea/games/measuresdk/MeasureSdkInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/games/measuresdk/MeasureSdkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic OnSucceed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/ea/games/measuresdk/VoidParam;

    invoke-virtual {p0, p1}, Lcom/ea/nimble/NimbleMeasureSdk$1;->OnSucceed(Lcom/ea/games/measuresdk/VoidParam;)V

    return-void
.end method
