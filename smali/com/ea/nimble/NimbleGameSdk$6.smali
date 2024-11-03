.class Lcom/ea/nimble/NimbleGameSdk$6;
.super Ljava/lang/Object;
.source "NimbleGameSdk.java"

# interfaces
.implements Lcom/ea/games/gamesdk/SdkCallbackWithType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/NimbleGameSdk;->init(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ea/games/gamesdk/SdkCallbackWithType<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/NimbleGameSdk;


# direct methods
.method constructor <init>(Lcom/ea/nimble/NimbleGameSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/NimbleGameSdk$6;->this$0:Lcom/ea/nimble/NimbleGameSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/ea/nimble/NimbleGameSdk;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notify error, name :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/NimbleGameSdk$6;->this$0:Lcom/ea/nimble/NimbleGameSdk;

    invoke-virtual {v2}, Lcom/ea/nimble/NimbleGameSdk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msg :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk$6;->this$0:Lcom/ea/nimble/NimbleGameSdk;

    invoke-static {v0}, Lcom/ea/nimble/NimbleGameSdk;->access$100(Lcom/ea/nimble/NimbleGameSdk;)Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/INimbleGameSdk$Result;

    sget-object v2, Lcom/ea/nimble/INimbleGameSdk$Result$Code;->ERROR:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    invoke-direct {v1, v2, p2}, Lcom/ea/nimble/INimbleGameSdk$Result;-><init>(Lcom/ea/nimble/INimbleGameSdk$Result$Code;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;->handleNotify(Lcom/ea/nimble/INimbleGameSdk$Result;Ljava/lang/String;)V

    return-void
.end method

.method public OnFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/ea/nimble/NimbleGameSdk;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notify failed, name :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/NimbleGameSdk$6;->this$0:Lcom/ea/nimble/NimbleGameSdk;

    invoke-virtual {v2}, Lcom/ea/nimble/NimbleGameSdk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", msg :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk$6;->this$0:Lcom/ea/nimble/NimbleGameSdk;

    invoke-static {v0}, Lcom/ea/nimble/NimbleGameSdk;->access$100(Lcom/ea/nimble/NimbleGameSdk;)Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/INimbleGameSdk$Result;

    sget-object v2, Lcom/ea/nimble/INimbleGameSdk$Result$Code;->FAILED:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    invoke-direct {v1, v2, p2}, Lcom/ea/nimble/INimbleGameSdk$Result;-><init>(Lcom/ea/nimble/INimbleGameSdk$Result$Code;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;->handleNotify(Lcom/ea/nimble/INimbleGameSdk$Result;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic OnSucceed(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ea/nimble/NimbleGameSdk$6;->OnSucceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/ea/nimble/NimbleGameSdk;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notify succeed, name :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/NimbleGameSdk$6;->this$0:Lcom/ea/nimble/NimbleGameSdk;

    invoke-virtual {v2}, Lcom/ea/nimble/NimbleGameSdk;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/nimble/NimbleGameSdk$6;->this$0:Lcom/ea/nimble/NimbleGameSdk;

    invoke-static {v0}, Lcom/ea/nimble/NimbleGameSdk;->access$100(Lcom/ea/nimble/NimbleGameSdk;)Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/INimbleGameSdk$Result;

    sget-object v2, Lcom/ea/nimble/INimbleGameSdk$Result$Code;->SUCCEED:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    invoke-direct {v1, v2, p2}, Lcom/ea/nimble/INimbleGameSdk$Result;-><init>(Lcom/ea/nimble/INimbleGameSdk$Result$Code;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Lcom/ea/nimble/INimbleGameSdk$INotifyCallback;->handleNotify(Lcom/ea/nimble/INimbleGameSdk$Result;Ljava/lang/String;)V

    return-void
.end method
