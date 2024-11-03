.class public Lcom/ea/games/gamesdk/PushOption;
.super Ljava/lang/Object;
.source "PushOption.java"


# instance fields
.field private pushAgree:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPushAgree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ea/games/gamesdk/PushOption;->pushAgree:Z

    return v0
.end method

.method public setPushAgree(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ea/games/gamesdk/PushOption;->pushAgree:Z

    return-void
.end method
