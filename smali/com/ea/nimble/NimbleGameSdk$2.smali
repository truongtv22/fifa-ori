.class Lcom/ea/nimble/NimbleGameSdk$2;
.super Ljava/lang/Object;
.source "NimbleGameSdk.java"

# interfaces
.implements Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;


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
.method public handleAuth(Lcom/ea/nimble/INimbleGameSdk$Result;)V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/NimbleGameSdk;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "use default handleAuth."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleLogin(Lcom/ea/nimble/INimbleGameSdk$Result;Lcom/ea/games/gamesdk/AccountInfo;)V
    .locals 0

    invoke-static {}, Lcom/ea/nimble/NimbleGameSdk;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "use default handleLogin."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleLogout(Lcom/ea/nimble/INimbleGameSdk$Result;)V
    .locals 1

    invoke-static {}, Lcom/ea/nimble/NimbleGameSdk;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "use default handleLogout."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
