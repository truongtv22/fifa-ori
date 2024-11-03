.class public Lcom/ea/Sentry/Sentry2;
.super Ljava/lang/Object;
.source "Sentry2.java"


# static fields
.field public static gInstanceCount:I = 0x0

.field public static mActivity:Landroid/app/Activity; = null

.field public static mContext:Landroid/content/Context; = null

.field private static mTAG:Ljava/lang/String; = "EA_ANDROID"

.field private static mThis:Lcom/ea/Sentry/Sentry2;

.field public static mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Shutdown()V
    .locals 0

    invoke-static {}, Lcom/ea/Sentry/Sentry2;->ShutdownNativeImpl()V

    return-void
.end method

.method private static native ShutdownNativeImpl()V
.end method

.method public static Startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    sput-object p0, Lcom/ea/Sentry/Sentry2;->mActivity:Landroid/app/Activity;

    sput-object p1, Lcom/ea/Sentry/Sentry2;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ea/Sentry/Sentry2;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ea/Sentry/Sentry2;->StartupNativeImpl()V

    return-void
.end method

.method private static native StartupNativeImpl()V
.end method

.method public static declared-synchronized getInstance()Lcom/ea/Sentry/Sentry2;
    .locals 2

    const-class v0, Lcom/ea/Sentry/Sentry2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ea/Sentry/Sentry2;->mThis:Lcom/ea/Sentry/Sentry2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public Sentry2()V
    .locals 1

    sget v0, Lcom/ea/Sentry/Sentry2;->gInstanceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ea/Sentry/Sentry2;->gInstanceCount:I

    sput-object p0, Lcom/ea/Sentry/Sentry2;->mThis:Lcom/ea/Sentry/Sentry2;

    return-void
.end method

.method public addTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lio/sentry/Sentry;->getContext()Lio/sentry/context/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/sentry/context/Context;->addTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public initSentry(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lio/sentry/android/AndroidSentryClientFactory;

    sget-object v1, Lcom/ea/Sentry/Sentry2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/sentry/android/AndroidSentryClientFactory;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lio/sentry/Sentry;->init(Ljava/lang/String;Lio/sentry/SentryClientFactory;)Lio/sentry/SentryClient;

    return-void
.end method

.method public sendAS3ErrorCapture(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lio/sentry/event/EventBuilder;

    invoke-direct {v0}, Lio/sentry/event/EventBuilder;-><init>()V

    invoke-virtual {v0, p2}, Lio/sentry/event/EventBuilder;->withCulprit(Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/sentry/event/EventBuilder;->withMessage(Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    move-result-object p1

    sget-object p2, Lio/sentry/event/Event$Level;->ERROR:Lio/sentry/event/Event$Level;

    invoke-virtual {p1, p2}, Lio/sentry/event/EventBuilder;->withLevel(Lio/sentry/event/Event$Level;)Lio/sentry/event/EventBuilder;

    move-result-object p1

    const-class p2, Lcom/ea/Sentry/Sentry2;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/event/EventBuilder;->withLogger(Ljava/lang/String;)Lio/sentry/event/EventBuilder;

    move-result-object p1

    invoke-static {p1}, Lio/sentry/Sentry;->capture(Lio/sentry/event/EventBuilder;)V

    return-void
.end method

.method public sendErrorCapture(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/sentry/Sentry;->capture(Ljava/lang/Throwable;)V

    return-void
.end method
