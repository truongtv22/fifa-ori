.class public Lcom/ea/games/gamesdk/AuthenticationInfo;
.super Ljava/lang/Object;
.source "AuthenticationInfo.java"


# instance fields
.field private authId:Ljava/lang/String;

.field private authToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/AuthenticationInfo;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/gamesdk/AuthenticationInfo;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/AuthenticationInfo;->authId:Ljava/lang/String;

    return-void
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/AuthenticationInfo;->authToken:Ljava/lang/String;

    return-void
.end method
