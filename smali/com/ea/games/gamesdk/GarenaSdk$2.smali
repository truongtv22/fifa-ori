.class Lcom/ea/games/gamesdk/GarenaSdk$2;
.super Ljava/lang/Object;
.source "GarenaSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/games/gamesdk/GarenaSdk;->logout(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/games/gamesdk/GarenaSdk;


# direct methods
.method constructor <init>(Lcom/ea/games/gamesdk/GarenaSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$2;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk$2;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/games/gamesdk/GarenaSdk;->access$302(Lcom/ea/games/gamesdk/GarenaSdk;Lcom/ea/games/gamesdk/AccountInfo;)Lcom/ea/games/gamesdk/AccountInfo;

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk$2;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v0}, Lcom/ea/games/gamesdk/GarenaSdk;->access$400(Lcom/ea/games/gamesdk/GarenaSdk;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lcom/beetalk/sdk/GGLoginSession;->clearSession()Z

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk$2;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    iget-object v0, v0, Lcom/ea/games/gamesdk/GarenaSdk;->mLogoutCB:Lcom/ea/games/gamesdk/SdkCallback;

    invoke-interface {v0, v1}, Lcom/ea/games/gamesdk/SdkCallback;->OnSucceed(Ljava/lang/Object;)V

    return-void
.end method
