.class public Lcom/ea/InAppWebBrowser/BrowserAndroid;
.super Ljava/lang/Object;
.source "BrowserAndroid.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z

.field public static gInstanceCount:I

.field public static mActivity:Landroid/app/Activity;


# instance fields
.field public final EAMIO_REPORTED_DATA_DIRECTORY:Ljava/lang/String;

.field public final JAVASCRIPT_CALLBACK:Ljava/lang/String;

.field public final JAVASCRIPT_DISABLE:I

.field public final JAVASCRIPT_ENABLE:I

.field public final SAVEFORMDATA_DISABLE:I

.field public final SAVEFORMDATA_ENABLE:I

.field public final SCROLLBARSTYLE_DEFAULT:I

.field public final SCROLLBARSTYLE_INSIDE_INSET:I

.field public final SCROLLBARSTYLE_INSIDE_OVERLAY:I

.field public final SCROLLBARSTYLE_OUTSIDE_INSET:I

.field public final SCROLLBARSTYLE_OUTSIDE_OVERLAY:I

.field public final SCROLLBAR_INVISIBLE:I

.field public final SCROLLBAR_VISIBLE:I

.field public final WEBVIEW_COMPATIBLE_DATA_DIRECTORY:Ljava/lang/String;

.field public mInstanceID:I

.field private mLock:Ljava/lang/Object;

.field public mWebView:Landroid/webkit/WebView;

.field public mWebViewClient:Lcom/ea/InAppWebBrowser/InAppWebBrowserWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SCROLLBAR_VISIBLE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SCROLLBAR_INVISIBLE:I

    iput v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->JAVASCRIPT_DISABLE:I

    iput v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->JAVASCRIPT_ENABLE:I

    iput v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SAVEFORMDATA_DISABLE:I

    iput v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SAVEFORMDATA_ENABLE:I

    iput v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SCROLLBARSTYLE_DEFAULT:I

    iput v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SCROLLBARSTYLE_INSIDE_OVERLAY:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SCROLLBARSTYLE_INSIDE_INSET:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SCROLLBARSTYLE_OUTSIDE_OVERLAY:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->SCROLLBARSTYLE_OUTSIDE_INSET:I

    const-string v1, "appbundle:/"

    iput-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->EAMIO_REPORTED_DATA_DIRECTORY:Ljava/lang/String;

    const-string v1, "file:///android_asset/"

    iput-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->WEBVIEW_COMPATIBLE_DATA_DIRECTORY:Ljava/lang/String;

    const-string v1, "EAAndroidJavascriptCallback"

    iput-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->JAVASCRIPT_CALLBACK:Ljava/lang/String;

    iput v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mInstanceID:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static native NativeCreateViewCallback(ILjava/lang/Object;IIII)V
.end method

.method public static Shutdown()V
    .locals 0

    invoke-static {}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->ShutdownNativeImpl()V

    return-void
.end method

.method private static native ShutdownNativeImpl()V
.end method

.method public static Startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    sput-object p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->StartupNativeImpl()V

    return-void
.end method

.method private static native StartupNativeImpl()V
.end method

.method static synthetic access$000(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public BrowserAndroid()V
    .locals 0

    return-void
.end method

.method public EvaluateJavaScript(Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Evaluate Javascript - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ea/InAppWebBrowser/BrowserAndroid$6;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;II)V

    sget-object p1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "...Evaluate Javascript - App Thread: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public GetWebView()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public LoadFromFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load From File - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;

    invoke-direct {v0, p0, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid$2;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "...Load From File - App Thread: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public LoadHTML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load HTML - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid$4;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "...Load HTML - App Thread: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public OpenUrl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Open URL - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;

    invoke-direct {v0, p0, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid$3;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "...Open URL - App Thread: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public StopLoading()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stop Loading - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/InAppWebBrowser/BrowserAndroid$5;

    invoke-direct {v0, p0}, Lcom/ea/InAppWebBrowser/BrowserAndroid$5;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;)V

    invoke-virtual {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "...Stop Loading - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroy - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;

    invoke-direct {v0, p0}, Lcom/ea/InAppWebBrowser/BrowserAndroid$7;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;)V

    sget-object v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "...Destroy - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public init(IIIIIIIIIZZI)V
    .locals 11

    move-object v8, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "..."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    sget v0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->gInstanceCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/ea/InAppWebBrowser/BrowserAndroid;->gInstanceCount:I

    iput v0, v8, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mInstanceID:I

    new-instance v10, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p11

    move/from16 v3, p10

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/ea/InAppWebBrowser/BrowserAndroid$1;-><init>(Lcom/ea/InAppWebBrowser/BrowserAndroid;ZZIIII)V

    invoke-virtual {p0, v10}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native Create View Callback - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mWebView:Landroid/webkit/WebView;

    move/from16 p6, p1

    move-object/from16 p7, v0

    move/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move/from16 p11, p5

    invoke-static/range {p6 .. p11}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->NativeCreateViewCallback(ILjava/lang/Object;IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "...Native Create View Callback - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "...Init - App Thread: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    return-void
.end method

.method public notifyUiThreadOperationCompleted()V
    .locals 3

    const-string v0, "notify: "

    iget-object v1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runOnUiThreadAndWait(Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "...wait: "

    const-string/jumbo v1, "wait: "

    iget-object v2, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq p1, v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/InAppWebBrowser/BrowserAndroid;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ea/InAppWebBrowser/BrowserAndroid;->Log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
