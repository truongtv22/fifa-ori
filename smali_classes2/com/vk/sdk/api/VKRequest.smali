.class public Lcom/vk/sdk/api/VKRequest;
.super Lcom/vk/sdk/VKObject;
.source "VKRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/api/VKRequest$VKRequestListener;,
        Lcom/vk/sdk/api/VKRequest$HttpMethod;,
        Lcom/vk/sdk/api/VKRequest$VKProgressType;
    }
.end annotation


# instance fields
.field public attempts:I

.field public final context:Landroid/content/Context;

.field private mAttemptsUsed:I

.field private mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

.field private mLooper:Landroid/os/Looper;

.field private final mMethodParameters:Lcom/vk/sdk/api/VKParameters;

.field private mModelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/sdk/api/model/VKApiModel;",
            ">;"
        }
    .end annotation
.end field

.field private mModelParser:Lcom/vk/sdk/api/VKParser;

.field private mPostRequestsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/vk/sdk/api/VKRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredLang:Ljava/lang/String;

.field private mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

.field private mUseLooperForCallListener:Z

.field public final methodName:Ljava/lang/String;

.field public parseModel:Z

.field public requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

.field public response:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vk/sdk/api/VKResponse;",
            ">;"
        }
    .end annotation
.end field

.field public secure:Z

.field public shouldInterruptUI:Z

.field public useSystemLanguage:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vk/sdk/api/VKRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vk/sdk/api/VKRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Lcom/vk/sdk/api/VKRequest$HttpMethod;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/VKParameters;",
            "Lcom/vk/sdk/api/VKRequest$HttpMethod;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/sdk/api/model/VKApiModel;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/vk/sdk/api/VKRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vk/sdk/api/VKParameters;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/VKParameters;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/sdk/api/model/VKApiModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/VKObject;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/sdk/api/VKRequest;->mUseLooperForCallListener:Z

    invoke-static {}, Lcom/vk/sdk/VKUIHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/vk/sdk/api/VKRequest;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest;->methodName:Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance p2, Lcom/vk/sdk/api/VKParameters;

    invoke-direct {p2}, Lcom/vk/sdk/api/VKParameters;-><init>()V

    :cond_0
    new-instance p1, Lcom/vk/sdk/api/VKParameters;

    invoke-direct {p1, p2}, Lcom/vk/sdk/api/VKParameters;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest;->mMethodParameters:Lcom/vk/sdk/api/VKParameters;

    const/4 p1, 0x0

    iput p1, p0, Lcom/vk/sdk/api/VKRequest;->mAttemptsUsed:I

    iput-boolean v0, p0, Lcom/vk/sdk/api/VKRequest;->secure:Z

    iput v0, p0, Lcom/vk/sdk/api/VKRequest;->attempts:I

    const-string p1, "en"

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest;->mPreferredLang:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/vk/sdk/api/VKRequest;->useSystemLanguage:Z

    iput-boolean v0, p0, Lcom/vk/sdk/api/VKRequest;->shouldInterruptUI:Z

    invoke-virtual {p0, p3}, Lcom/vk/sdk/api/VKRequest;->setModelClass(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vk/sdk/api/VKRequest;Lcom/vk/sdk/api/VKError;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/VKRequest;->processCommonError(Lcom/vk/sdk/api/VKError;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/vk/sdk/api/VKRequest;Lcom/vk/sdk/api/VKError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/VKRequest;->provideError(Lcom/vk/sdk/api/VKError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vk/sdk/api/VKRequest;)Lcom/vk/sdk/api/httpClient/VKAbstractOperation;
    .locals 0

    iget-object p0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vk/sdk/api/VKRequest;Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vk/sdk/api/VKRequest;->provideResponse(Lorg/json/JSONObject;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vk/sdk/api/VKRequest;)I
    .locals 0

    iget p0, p0, Lcom/vk/sdk/api/VKRequest;->mAttemptsUsed:I

    return p0
.end method

.method static synthetic access$404(Lcom/vk/sdk/api/VKRequest;)I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/VKRequest;->mAttemptsUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vk/sdk/api/VKRequest;->mAttemptsUsed:I

    return v0
.end method

.method static synthetic access$500(Lcom/vk/sdk/api/VKRequest;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vk/sdk/api/VKRequest;->runOnLooper(Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/vk/sdk/api/VKRequest;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/vk/sdk/api/VKRequest;->mPostRequestsQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addPostRequest(Lcom/vk/sdk/api/VKRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mPostRequestsQueue:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mPostRequestsQueue:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mPostRequestsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private generateSig(Lcom/vk/sdk/VKAccessToken;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

    invoke-static {v0}, Lcom/vk/sdk/util/VKStringJoiner;->joinParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vk/sdk/api/VKRequest;->methodName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "/method/%s?%s"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/vk/sdk/VKAccessToken;->secret:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vk/sdk/util/VKUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getHttpListener()Lcom/vk/sdk/api/httpClient/VKJsonOperation$VKJSONOperationCompleteListener;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/VKRequest$1;

    invoke-direct {v0, p0}, Lcom/vk/sdk/api/VKRequest$1;-><init>(Lcom/vk/sdk/api/VKRequest;)V

    return-object v0
.end method

.method private getLang()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mPreferredLang:Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vk/sdk/api/VKRequest;->useSystemLanguage:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ua"

    :cond_0
    const-string v1, "ru"

    const-string v2, "en"

    const-string v3, "ua"

    const-string v4, "es"

    const-string v5, "fi"

    const-string v6, "de"

    const-string v7, "it"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mPreferredLang:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static getRegisteredRequest(J)Lcom/vk/sdk/api/VKRequest;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/sdk/api/VKRequest;->getRegisteredObject(J)Lcom/vk/sdk/VKObject;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/VKRequest;

    return-object p0
.end method

.method private processCommonError(Lcom/vk/sdk/api/VKError;)Z
    .locals 4

    iget v0, p1, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/vk/sdk/api/VKError;->apiError:Lcom/vk/sdk/api/VKError;

    invoke-static {v0}, Lcom/vk/sdk/VKSdk;->notifySdkAboutApiError(Lcom/vk/sdk/api/VKError;)V

    iget v1, v0, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-boolean v3, p1, Lcom/vk/sdk/VKAccessToken;->httpsRequired:Z

    invoke-virtual {p1}, Lcom/vk/sdk/VKAccessToken;->save()V

    :cond_0
    invoke-virtual {p0}, Lcom/vk/sdk/api/VKRequest;->repeat()V

    return v3

    :cond_1
    iget-boolean v1, p0, Lcom/vk/sdk/api/VKRequest;->shouldInterruptUI:Z

    if-eqz v1, :cond_3

    iput-object p0, v0, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    iget-object p1, p1, Lcom/vk/sdk/api/VKError;->apiError:Lcom/vk/sdk/api/VKError;

    iget p1, p1, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v1, 0xe

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest;->context:Landroid/content/Context;

    sget-object v1, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Captcha:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-static {p1, v0, v1}, Lcom/vk/sdk/VKServiceActivity;->interruptWithError(Landroid/content/Context;Lcom/vk/sdk/api/VKError;Lcom/vk/sdk/VKServiceActivity$VKServiceType;)V

    return v3

    :cond_2
    iget p1, v0, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v1, 0x11

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest;->context:Landroid/content/Context;

    sget-object v1, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Validation:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-static {p1, v0, v1}, Lcom/vk/sdk/VKServiceActivity;->interruptWithError(Landroid/content/Context;Lcom/vk/sdk/api/VKError;Lcom/vk/sdk/VKServiceActivity$VKServiceType;)V

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private provideError(Lcom/vk/sdk/api/VKError;)V
    .locals 2

    iput-object p0, p1, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    iget-boolean v0, p0, Lcom/vk/sdk/api/VKRequest;->mUseLooperForCallListener:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onError(Lcom/vk/sdk/api/VKError;)V

    :cond_0
    new-instance v1, Lcom/vk/sdk/api/VKRequest$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/vk/sdk/api/VKRequest$2;-><init>(Lcom/vk/sdk/api/VKRequest;ZLcom/vk/sdk/api/VKError;)V

    invoke-direct {p0, v1}, Lcom/vk/sdk/api/VKRequest;->runOnLooper(Ljava/lang/Runnable;)V

    return-void
.end method

.method private provideResponse(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/VKResponse;

    invoke-direct {v0}, Lcom/vk/sdk/api/VKResponse;-><init>()V

    iput-object p0, v0, Lcom/vk/sdk/api/VKResponse;->request:Lcom/vk/sdk/api/VKRequest;

    iput-object p1, v0, Lcom/vk/sdk/api/VKResponse;->json:Lorg/json/JSONObject;

    iput-object p2, v0, Lcom/vk/sdk/api/VKResponse;->parsedModel:Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest;->response:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    instance-of p2, p1, Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    invoke-virtual {p1}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->getResponseString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/vk/sdk/api/VKResponse;->responseString:Ljava/lang/String;

    :cond_0
    iget-boolean p1, p0, Lcom/vk/sdk/api/VKRequest;->mUseLooperForCallListener:Z

    new-instance p2, Lcom/vk/sdk/api/VKRequest$3;

    invoke-direct {p2, p0, p1, v0}, Lcom/vk/sdk/api/VKRequest$3;-><init>(Lcom/vk/sdk/api/VKRequest;ZLcom/vk/sdk/api/VKResponse;)V

    invoke-direct {p0, p2}, Lcom/vk/sdk/api/VKRequest;->runOnLooper(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKRequest$VKRequestListener;->onComplete(Lcom/vk/sdk/api/VKResponse;)V

    :cond_1
    return-void
.end method

.method private runOnLooper(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vk/sdk/api/VKRequest;->runOnLooper(Ljava/lang/Runnable;I)V

    return-void
.end method

.method private runOnLooper(Ljava/lang/Runnable;I)V
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLooper:Landroid/os/Looper;

    :cond_0
    if-lez p2, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLooper:Landroid/os/Looper;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private runOnMainLooper(Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addExtraParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mMethodParameters:Lcom/vk/sdk/api/VKParameters;

    invoke-virtual {v0, p1, p2}, Lcom/vk/sdk/api/VKParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addExtraParameters(Lcom/vk/sdk/api/VKParameters;)V
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mMethodParameters:Lcom/vk/sdk/api/VKParameters;

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/VKParameters;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/sdk/api/httpClient/VKAbstractOperation;->cancel()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vk/sdk/api/VKError;

    const/16 v1, -0x66

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/VKError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/vk/sdk/api/VKRequest;->provideError(Lcom/vk/sdk/api/VKError;)V

    :goto_0
    return-void
.end method

.method public executeAfterRequest(Lcom/vk/sdk/api/VKRequest;Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V
    .locals 0

    iput-object p2, p0, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-direct {p1, p0}, Lcom/vk/sdk/api/VKRequest;->addPostRequest(Lcom/vk/sdk/api/VKRequest;)V

    return-void
.end method

.method public executeSyncWithListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/sdk/api/VKSyncRequestUtil;->executeSyncWithListener(Lcom/vk/sdk/api/VKRequest;Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    return-void
.end method

.method public executeWithListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    invoke-virtual {p0}, Lcom/vk/sdk/api/VKRequest;->start()V

    return-void
.end method

.method public getMethodParameters()Lcom/vk/sdk/api/VKParameters;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mMethodParameters:Lcom/vk/sdk/api/VKParameters;

    return-object v0
.end method

.method getOperation()Lcom/vk/sdk/api/httpClient/VKAbstractOperation;
    .locals 3

    iget-boolean v0, p0, Lcom/vk/sdk/api/VKRequest;->parseModel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mModelClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKModelOperation;

    invoke-virtual {p0}, Lcom/vk/sdk/api/VKRequest;->getPreparedRequest()Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/sdk/api/VKRequest;->mModelClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/api/httpClient/VKModelOperation;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mModelParser:Lcom/vk/sdk/api/VKParser;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKModelOperation;

    invoke-virtual {p0}, Lcom/vk/sdk/api/VKRequest;->getPreparedRequest()Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/sdk/api/VKRequest;->mModelParser:Lcom/vk/sdk/api/VKParser;

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/api/httpClient/VKModelOperation;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;Lcom/vk/sdk/api/VKParser;)V

    iput-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    if-nez v0, :cond_2

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKJsonOperation;

    invoke-virtual {p0}, Lcom/vk/sdk/api/VKRequest;->getPreparedRequest()Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/httpClient/VKJsonOperation;-><init>(Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;)V

    iput-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    :cond_2
    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    instance-of v1, v0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/vk/sdk/api/httpClient/VKHttpOperation;

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest;->getHttpListener()Lcom/vk/sdk/api/httpClient/VKJsonOperation$VKJSONOperationCompleteListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/httpClient/VKHttpOperation;->setHttpOperationListener(Lcom/vk/sdk/api/httpClient/VKAbstractOperation$VKAbstractCompleteListener;)V

    :cond_3
    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    return-object v0
.end method

.method public getPreparedParameters()Lcom/vk/sdk/api/VKParameters;
    .locals 4

    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

    if-nez v0, :cond_2

    new-instance v0, Lcom/vk/sdk/api/VKParameters;

    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest;->mMethodParameters:Lcom/vk/sdk/api/VKParameters;

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/VKParameters;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest;->mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

    const-string v2, "access_token"

    iget-object v3, v0, Lcom/vk/sdk/VKAccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/vk/sdk/api/VKParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lcom/vk/sdk/VKAccessToken;->httpsRequired:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vk/sdk/api/VKRequest;->secure:Z

    :cond_0
    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest;->mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

    const-string v2, "v"

    invoke-static {}, Lcom/vk/sdk/VKSdk;->getApiVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vk/sdk/api/VKParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest;->mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

    const-string v2, "lang"

    invoke-direct {p0}, Lcom/vk/sdk/api/VKRequest;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vk/sdk/api/VKParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/vk/sdk/api/VKRequest;->secure:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest;->mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

    const-string v2, "https"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/vk/sdk/api/VKParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/vk/sdk/VKAccessToken;->secret:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/vk/sdk/api/VKRequest;->generateSig(Lcom/vk/sdk/VKAccessToken;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest;->mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

    const-string v2, "sig"

    invoke-virtual {v1, v2, v0}, Lcom/vk/sdk/api/VKParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

    return-object v0
.end method

.method public getPreparedRequest()Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;
    .locals 2

    invoke-static {p0}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->requestWithVkRequest(Lcom/vk/sdk/api/VKRequest;)Lcom/vk/sdk/api/httpClient/VKHttpClient$VKHTTPRequest;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vk/sdk/api/VKError;

    const/16 v1, -0x67

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/VKError;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/vk/sdk/api/VKRequest;->provideError(Lcom/vk/sdk/api/VKError;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public repeat()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/sdk/api/VKRequest;->mAttemptsUsed:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mPreparedParameters:Lcom/vk/sdk/api/VKParameters;

    iput-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    invoke-virtual {p0}, Lcom/vk/sdk/api/VKRequest;->start()V

    return-void
.end method

.method public setModelClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/vk/sdk/api/model/VKApiModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest;->mModelClass:Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vk/sdk/api/VKRequest;->parseModel:Z

    :cond_0
    return-void
.end method

.method public setPreferredLang(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/sdk/api/VKRequest;->useSystemLanguage:Z

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest;->mPreferredLang:Ljava/lang/String;

    return-void
.end method

.method public setRequestListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest;->requestListener:Lcom/vk/sdk/api/VKRequest$VKRequestListener;

    return-void
.end method

.method public setResponseParser(Lcom/vk/sdk/api/VKParser;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/VKRequest;->mModelParser:Lcom/vk/sdk/api/VKParser;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vk/sdk/api/VKRequest;->parseModel:Z

    :cond_0
    return-void
.end method

.method public setUseLooperForCallListener(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vk/sdk/api/VKRequest;->mUseLooperForCallListener:Z

    return-void
.end method

.method public start()V
    .locals 1

    invoke-virtual {p0}, Lcom/vk/sdk/api/VKRequest;->getOperation()Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLooper:Landroid/os/Looper;

    :cond_1
    iget-object v0, p0, Lcom/vk/sdk/api/VKRequest;->mLoadingOperation:Lcom/vk/sdk/api/httpClient/VKAbstractOperation;

    invoke-static {v0}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->enqueueOperation(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/sdk/api/VKRequest;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vk/sdk/api/VKRequest;->getMethodParameters()Lcom/vk/sdk/api/VKParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/sdk/api/VKParameters;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Lcom/vk/sdk/api/VKParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
