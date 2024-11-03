.class public Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;
.super Lcom/beetalk/sdk/plugin/impl/friends/BaseLoadGroupPlugin;
.source "LoadGroupFriendsInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/beetalk/sdk/plugin/impl/friends/BaseLoadGroupPlugin<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/beetalk/sdk/data/DataModel$GroupFriendsInfoRet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/friends/BaseLoadGroupPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic executeAction(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;->executeAction(Landroid/app/Activity;Ljava/util/List;)V

    return-void
.end method

.method protected executeAction(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo$1;-><init>(Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;Ljava/util/List;Landroid/app/Activity;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "msdk.group.friend.info"

    return-object v0
.end method

.method public getRequestCode()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xb53

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
