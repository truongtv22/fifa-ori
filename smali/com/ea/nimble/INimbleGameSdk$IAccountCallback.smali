.class public interface abstract Lcom/ea/nimble/INimbleGameSdk$IAccountCallback;
.super Ljava/lang/Object;
.source "INimbleGameSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/INimbleGameSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAccountCallback"
.end annotation


# virtual methods
.method public abstract handleAuth(Lcom/ea/nimble/INimbleGameSdk$Result;)V
.end method

.method public abstract handleLogin(Lcom/ea/nimble/INimbleGameSdk$Result;Lcom/ea/games/gamesdk/AccountInfo;)V
.end method

.method public abstract handleLogout(Lcom/ea/nimble/INimbleGameSdk$Result;)V
.end method
