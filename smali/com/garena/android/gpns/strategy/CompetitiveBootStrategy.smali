.class public Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;
.super Lcom/garena/android/gpns/strategy/BootStrategy;
.source "CompetitiveBootStrategy.java"


# static fields
.field public static final INTENT_ACTION_COMMAND_KILL:I = 0x2

.field public static final INTENT_ACTION_COMMAND_QUERY:I = 0x1

.field public static final INTENT_ACTION_KEY:Ljava/lang/String; = "_action"

.field public static final INTENT_COMPONENT_NAME:Ljava/lang/String; = "component"

.field public static final INTENT_PROCESS_ID:Ljava/lang/String; = "process_id"

.field public static final INTENT_QUERY_INIT:Ljava/lang/String; = "com.garena.android.gpns.enquiry"

.field public static final INTENT_QUERY_RESPONSE:Ljava/lang/String; = "com.garena.android.gpns.check"

.field public static final INTENT_QUERY_VERSION:Ljava/lang/String; = "query_version"

.field public static final INTENT_STATUS:Ljava/lang/String; = "status_is_running"


# instance fields
.field private candidatePackage:Ljava/lang/String;

.field private count:I

.field filterResponse:Landroid/content/IntentFilter;

.field private final finalCheck:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private isWinnerRunning:Z

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private maxVersion:I

.field private winningCandidateComponent:Landroid/content/ComponentName;

.field private winningVersion:I


# direct methods
.method public constructor <init>(Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/garena/android/gpns/strategy/BootStrategy;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.garena.android.gpns.check"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->filterResponse:Landroid/content/IntentFilter;

    new-instance v0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$1;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$1;-><init>(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)V

    iput-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->maxVersion:I

    const-string v1, ""

    iput-object v1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->candidatePackage:Ljava/lang/String;

    new-instance v1, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$2;

    invoke-direct {v1, p0}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$2;-><init>(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)V

    iput-object v1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->finalCheck:Ljava/lang/Runnable;

    iput v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningVersion:I

    iput-boolean v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    iput-object p1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)I
    .locals 0

    iget p0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->count:I

    return p0
.end method

.method static synthetic access$002(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;I)I
    .locals 0

    iput p1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->count:I

    return p1
.end method

.method static synthetic access$100(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)I
    .locals 0

    iget p0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->maxVersion:I

    return p0
.end method

.method static synthetic access$200(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->candidatePackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static isSuperior(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private killService(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to kill:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.garena.android.gpns.enquiry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "_action"

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected fireStrategy(Landroid/content/Context;)V
    .locals 6

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.garena.android.gpns.enquiry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "_action"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "component"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->count:I

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;

    invoke-interface {p1}, Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;->onStrategySuccess()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.garena.sdk.push.version"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget v4, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->maxVersion:I

    if-gt v3, v4, :cond_3

    if-ne v3, v4, :cond_2

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->candidatePackage:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isSuperior(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "service_version:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "we have a better choice now:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iput v3, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->maxVersion:I

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->candidatePackage:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->finalCheck:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->filterResponse:Landroid/content/IntentFilter;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/beetalk/sdk/exts/ContextExtsKt;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    return-void
.end method

.method protected onResponse(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->count:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "receive query response on"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " count:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    const-string v0, "status_is_running"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "query_version"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "component"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "responder: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " v:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v5, " running"

    goto :goto_0

    :cond_0
    const-string v5, " not running"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    if-ge v3, v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->killService(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto/16 :goto_1

    :cond_1
    iget v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningVersion:I

    if-le v3, v0, :cond_3

    iget-boolean v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->killService(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_2
    iput v3, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningVersion:I

    iput-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "a winner is:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isSuperior(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v0}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->killService(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-boolean v2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    :cond_4
    iput v3, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningVersion:I

    iput-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "b winner is:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->killService(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningVersion:I

    const-string v1, "c winner is:"

    if-le v3, v0, :cond_8

    iget-boolean v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, v0}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->killService(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_7
    iput-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iput v3, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningVersion:I

    iput-boolean v2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    goto :goto_1

    :cond_8
    if-ne v3, v0, :cond_b

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_9

    iput-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iput v3, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningVersion:I

    iput-boolean v2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isSuperior(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v0}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->killService(Landroid/content/Context;Landroid/content/ComponentName;)V

    :cond_a
    iput-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iput v3, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningVersion:I

    iput-boolean v2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    :cond_b
    :goto_1
    iget p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->count:I

    if-nez p2, :cond_e

    const-string p2, "get all feedback"

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->finalCheck:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->isWinnerRunning:Z

    const-string v0, "start & bind service:"

    if-eqz p2, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-interface {p2, v0}, Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;->onStrategyFailure(Landroid/content/ComponentName;)V

    goto :goto_2

    :cond_c
    const-string p2, "no service running"

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    iget p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningVersion:I

    if-lez p2, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "found a better candidate rather than myself "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->winningCandidateComponent:Landroid/content/ComponentName;

    invoke-interface {p2, v0}, Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;->onStrategyFailure(Landroid/content/ComponentName;)V

    goto :goto_2

    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "I am the candidate to run "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/garena/android/gpns/utility/AppLogger;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;

    invoke-interface {p2}, Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;->onStrategySuccess()V

    :goto_2
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->mContext:Landroid/content/Context;

    :cond_e
    return-void
.end method
