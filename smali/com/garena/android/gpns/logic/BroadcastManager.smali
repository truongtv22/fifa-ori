.class public Lcom/garena/android/gpns/logic/BroadcastManager;
.super Ljava/lang/Object;
.source "BroadcastManager.java"


# instance fields
.field private internalReceiver:Landroid/content/BroadcastReceiver;

.field private isNetworkChangeRegistered:Z

.field private final mContext:Landroid/content/Context;

.field private final mNetworkChangeReceiver:Lcom/garena/android/gpns/logic/NetworkChangeReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->isNetworkChangeRegistered:Z

    iput-object p1, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/garena/android/gpns/logic/NetworkChangeReceiver;

    invoke-direct {p1}, Lcom/garena/android/gpns/logic/NetworkChangeReceiver;-><init>()V

    iput-object p1, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->mNetworkChangeReceiver:Lcom/garena/android/gpns/logic/NetworkChangeReceiver;

    return-void
.end method


# virtual methods
.method public registerLocalHandler(Landroid/content/BroadcastReceiver;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.garena.android.gpns.local"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lcom/beetalk/sdk/exts/ContextExtsKt;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    iput-object p1, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->internalReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public registerNetworkChangeReceiver()V
    .locals 4

    iget-boolean v0, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->isNetworkChangeRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->mNetworkChangeReceiver:Lcom/garena/android/gpns/logic/NetworkChangeReceiver;

    invoke-static {v2, v3, v0, v1}, Lcom/beetalk/sdk/exts/ContextExtsKt;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->isNetworkChangeRegistered:Z

    return-void
.end method

.method public unregisterLocalHandler()V
    .locals 2

    iget-object v0, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->internalReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public unregisterNetworkChangeReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->isNetworkChangeRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->mNetworkChangeReceiver:Lcom/garena/android/gpns/logic/NetworkChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/garena/android/gpns/logic/BroadcastManager;->isNetworkChangeRegistered:Z

    return-void
.end method
