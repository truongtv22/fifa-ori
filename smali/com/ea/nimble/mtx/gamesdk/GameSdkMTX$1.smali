.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1;
.super Landroid/content/BroadcastReceiver;
.source "GameSdkMTX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "refreshing catalog items after language change"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->refreshAvailableCatalogItems()V

    return-void
.end method
