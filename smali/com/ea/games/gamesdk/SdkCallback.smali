.class public interface abstract Lcom/ea/games/gamesdk/SdkCallback;
.super Ljava/lang/Object;
.source "SdkCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract OnError(Ljava/lang/String;)V
.end method

.method public abstract OnFailed(Ljava/lang/String;)V
.end method

.method public abstract OnSucceed(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
