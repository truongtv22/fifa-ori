.class public Lcom/ea/games/gamesdk/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# instance fields
.field private rawUid:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/AccountInfo;->rawUid:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/AccountInfo;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/AccountInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/AccountInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setRawUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/AccountInfo;->rawUid:Ljava/lang/String;

    return-void
.end method

.method protected setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/AccountInfo;->sid:Ljava/lang/String;

    return-void
.end method

.method protected setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/AccountInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method protected setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/AccountInfo;->userName:Ljava/lang/String;

    return-void
.end method
