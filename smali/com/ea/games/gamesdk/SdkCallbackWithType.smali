.class public interface abstract Lcom/ea/games/gamesdk/SdkCallbackWithType;
.super Ljava/lang/Object;
.source "SdkCallbackWithType.java"


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
.method public abstract OnError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract OnFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract OnSucceed(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method
