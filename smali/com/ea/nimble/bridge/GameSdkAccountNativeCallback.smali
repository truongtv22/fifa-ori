.class public Lcom/ea/nimble/bridge/GameSdkAccountNativeCallback;
.super Ljava/lang/Object;
.source "GameSdkAccountNativeCallback.java"

# interfaces
.implements Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;


# instance fields
.field private m_ids:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/bridge/GameSdkAccountNativeCallback;->m_ids:[I

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ea/nimble/bridge/GameSdkAccountNativeCallback;->m_ids:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v1, v1, v0

    invoke-static {v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleAuth(Lcom/ea/nimble/INimbleGameSdk$Result;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/bridge/GameSdkAccountNativeCallback;->m_ids:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public handleLogin(Lcom/ea/nimble/INimbleGameSdk$Result;Lcom/ea/games/gamesdk/AccountInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/bridge/GameSdkAccountNativeCallback;->m_ids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-static {v0, v2}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method

.method public handleLogout(Lcom/ea/nimble/INimbleGameSdk$Result;)V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/bridge/GameSdkAccountNativeCallback;->m_ids:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->sendNativeCallback(I[Ljava/lang/Object;)V

    return-void
.end method
