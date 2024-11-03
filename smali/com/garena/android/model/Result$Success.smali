.class public Lcom/garena/android/model/Result$Success;
.super Lcom/garena/android/model/Result;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/model/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Success"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/garena/android/model/Result<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/garena/android/model/Result;-><init>()V

    iput-object p1, p0, Lcom/garena/android/model/Result$Success;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isFailed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSucceed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
