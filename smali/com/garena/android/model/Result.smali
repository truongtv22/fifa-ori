.class public abstract Lcom/garena/android/model/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/model/Result$Failure;,
        Lcom/garena/android/model/Result$Success;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static failure(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)Lcom/garena/android/model/Result$Failure;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/garena/pay/android/GGErrorCode;",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/garena/android/model/Result$Failure<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/garena/android/model/Result$Failure;

    invoke-direct {v0, p0, p1}, Lcom/garena/android/model/Result$Failure;-><init>(Lcom/garena/pay/android/GGErrorCode;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lcom/garena/android/model/Result$Success;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/garena/android/model/Result$Success<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/garena/android/model/Result$Success;

    invoke-direct {v0, p0}, Lcom/garena/android/model/Result$Success;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/garena/android/model/Result$Failure;

    iget-object v0, v0, Lcom/garena/android/model/Result$Failure;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public abstract isFailed()Z
.end method

.method public abstract isSucceed()Z
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object v0, p0

    check-cast v0, Lcom/garena/android/model/Result$Success;

    iget-object v0, v0, Lcom/garena/android/model/Result$Success;->data:Ljava/lang/Object;

    return-object v0
.end method
