.class public Lcom/ea/games/gamesdk/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private serverId:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userLevel:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/UserInfo;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/UserInfo;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLevel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/UserInfo;->userLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/UserInfo;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/UserInfo;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/UserInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserLevel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/UserInfo;->userLevel:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/UserInfo;->userName:Ljava/lang/String;

    return-void
.end method
