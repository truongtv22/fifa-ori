.class public Lcom/beetalk/sdk/plugin/GGPluginManager;
.super Ljava/lang/Object;
.source "GGPluginManager.java"


# static fields
.field private static volatile ourInstance:Lcom/beetalk/sdk/plugin/GGPluginManager;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mLongTermPluginCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOneShotPluginCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnconsumedResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/beetalk/sdk/plugin/GGPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->pluginMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->mOneShotPluginCallback:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->mLongTermPluginCallback:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->mUnconsumedResults:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->mPluginDatas:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->initPlugins()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->mOneShotPluginCallback:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->mPluginDatas:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->pluginMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/plugin/GGPluginManager;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->consumeInOneShotCallbacks(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/beetalk/sdk/plugin/GGPluginManager;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager;->consumeInLongTermCallbacks(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->mUnconsumedResults:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/beetalk/sdk/plugin/GGPluginManager;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->mLongTermPluginCallback:Ljava/util/HashMap;

    return-object p0
.end method

.method private consumeInLongTermCallbacks(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->mLongTermPluginCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beetalk/sdk/plugin/GGPluginCallback;

    invoke-interface {v0, p2}, Lcom/beetalk/sdk/plugin/GGPluginCallback;->onPluginResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private consumeInOneShotCallbacks(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->mOneShotPluginCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/plugin/GGPluginCallback;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginCallback;->onPluginResult(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static getInstance()Lcom/beetalk/sdk/plugin/GGPluginManager;
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/plugin/GGPluginManager;->ourInstance:Lcom/beetalk/sdk/plugin/GGPluginManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/beetalk/sdk/plugin/GGPluginManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/plugin/GGPluginManager;->ourInstance:Lcom/beetalk/sdk/plugin/GGPluginManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/beetalk/sdk/plugin/GGPluginManager;

    invoke-direct {v1}, Lcom/beetalk/sdk/plugin/GGPluginManager;-><init>()V

    sput-object v1, Lcom/beetalk/sdk/plugin/GGPluginManager;->ourInstance:Lcom/beetalk/sdk/plugin/GGPluginManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/beetalk/sdk/plugin/GGPluginManager;->ourInstance:Lcom/beetalk/sdk/plugin/GGPluginManager;

    return-object v0
.end method

.method private initPlugins()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/user/GetUserInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/friends/LoadFriendGroupList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/friends/LoadInAppFriendGroupList;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/friends/LoadInAppFriendGroupList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/friends/LoadGroupFriendsInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/gas/GasTextSharePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/gas/GasTextSharePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/gas/GasPhotoSharePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/gas/GasPhotoSharePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/gas/GasUrlSharePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/gas/GasUrlSharePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBSharePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBUserInfoPlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBMessagePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBFallbackSharePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBGameMessagePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareImageToMessengerPlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBReelsPlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/FBShareVideoPlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/fb/FBShareVideoPlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKSharePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/twitter/TwitterSharePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;-><init>()V

    invoke-virtual {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addPlugin(Lcom/beetalk/sdk/plugin/GGPlugin;)V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->pluginMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/GGPlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->pluginMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/GGPlugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Plugin Already exists for Key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/beetalk/sdk/plugin/GGPlugin;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlugin(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/GGPlugin;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/GGPluginManager;->pluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/beetalk/sdk/plugin/GGPlugin;

    return-object p1
.end method

.method public invokePlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/beetalk/sdk/plugin/GGPluginCallback<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v6, Lcom/beetalk/sdk/plugin/GGPluginManager$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/plugin/GGPluginManager$1;-><init>(Lcom/beetalk/sdk/plugin/GGPluginManager;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;Ljava/lang/Object;Landroid/app/Activity;)V

    invoke-direct {p0, v6}, Lcom/beetalk/sdk/plugin/GGPluginManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public publishResult(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/beetalk/sdk/plugin/GGPluginManager$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager$2;-><init>(Lcom/beetalk/sdk/plugin/GGPluginManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method realExecute(Lcom/beetalk/sdk/plugin/GGPlugin;Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/plugin/GGPluginManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager$5;-><init>(Lcom/beetalk/sdk/plugin/GGPluginManager;Lcom/beetalk/sdk/plugin/GGPlugin;Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public register(Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/plugin/GGPluginManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/beetalk/sdk/plugin/GGPluginManager$4;-><init>(Lcom/beetalk/sdk/plugin/GGPluginManager;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unregister(Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/plugin/GGPluginManager$3;

    invoke-direct {v0, p0, p1}, Lcom/beetalk/sdk/plugin/GGPluginManager$3;-><init>(Lcom/beetalk/sdk/plugin/GGPluginManager;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/plugin/GGPluginManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
