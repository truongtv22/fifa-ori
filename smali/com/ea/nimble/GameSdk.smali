.class public Lcom/ea/nimble/GameSdk;
.super Ljava/lang/Object;
.source "GameSdk.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.gamesdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/INimbleGameSdk;
    .locals 5

    const-string v0, "com.ea.nimble.gamesdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const-string v1, "More than one  component registered!"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "GameSdk"

    invoke-static {v4, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    aget-object v0, v0, v3

    check-cast v0, Lcom/ea/nimble/INimbleGameSdk;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
