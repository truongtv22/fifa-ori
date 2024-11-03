.class Lcom/ea/games/gamesdk/GarenaSdk$1;
.super Ljava/lang/Object;
.source "GarenaSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/games/gamesdk/GarenaSdk;->login(Landroid/app/Activity;)V
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

    iput-object p1, p0, Lcom/ea/games/gamesdk/GarenaSdk$1;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk$1;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v0}, Lcom/ea/games/gamesdk/GarenaSdk;->access$000(Lcom/ea/games/gamesdk/GarenaSdk;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->getLastLoginSession(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$Builder;

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk$1;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v1}, Lcom/ea/games/gamesdk/GarenaSdk;->access$000(Lcom/ea/games/gamesdk/GarenaSdk;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk$1;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v1}, Lcom/ea/games/gamesdk/GarenaSdk;->access$200(Lcom/ea/games/gamesdk/GarenaSdk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk$1;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v1}, Lcom/ea/games/gamesdk/GarenaSdk;->access$100(Lcom/ea/games/gamesdk/GarenaSdk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/AuthMode;->LEGACY_ENABLED:Lcom/beetalk/sdk/AuthMode;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/GGLoginSession$Builder;->setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/GGLoginSession$Builder;->build()Lcom/beetalk/sdk/GGLoginSession;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/GGPlatform;->initialize(Lcom/beetalk/sdk/GGLoginSession;)V

    :cond_0
    iget-object v0, p0, Lcom/ea/games/gamesdk/GarenaSdk$1;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v0}, Lcom/ea/games/gamesdk/GarenaSdk;->access$000(Lcom/ea/games/gamesdk/GarenaSdk;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/games/gamesdk/GarenaSdk$1;->this$0:Lcom/ea/games/gamesdk/GarenaSdk;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GGPlatform;->login(Landroid/app/Activity;Lcom/beetalk/sdk/GGLoginSession$SessionCallback;)V

    return-void
.end method
