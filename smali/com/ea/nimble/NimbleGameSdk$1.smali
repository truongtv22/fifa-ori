.class Lcom/ea/nimble/NimbleGameSdk$1;
.super Ljava/lang/Object;
.source "NimbleGameSdk.java"

# interfaces
.implements Lcom/ea/nimble/INimbleGameSdk$ILifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/NimbleGameSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDestory(Lcom/ea/nimble/INimbleGameSdk$Result;)V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/NimbleGameSdk;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "use default handleDestory."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleInit(Lcom/ea/nimble/INimbleGameSdk$Result;)V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/NimbleGameSdk;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "use default handleInit."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
