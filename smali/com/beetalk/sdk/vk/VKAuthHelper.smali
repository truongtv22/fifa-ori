.class public Lcom/beetalk/sdk/vk/VKAuthHelper;
.super Ljava/lang/Object;
.source "VKAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;
    }
.end annotation


# static fields
.field private static final SCOPE:[Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAuthListener:Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "friends"

    const-string v1, "offline"

    const-string/jumbo v2, "wall"

    const-string v3, "photos"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/vk/VKAuthHelper;->SCOPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/vk/VKAuthHelper;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/vk/VKAuthHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/vk/VKAuthHelper;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/vk/VKAuthHelper;->verifyScopes(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/vk/VKAuthHelper;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/vk/VKAuthHelper;->startLogin(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/vk/VKAuthHelper;)Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/vk/VKAuthHelper;->mAuthListener:Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;

    return-object p0
.end method

.method private startLogin(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "vk login required, start login"

    invoke-static {v1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/beetalk/sdk/vk/VKAuthHelper;->SCOPE:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vk/sdk/VKSdk;->login(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method

.method private verifyScopes(Landroid/app/Activity;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/beetalk/sdk/vk/VKAuthHelper;->SCOPE:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string/jumbo v3, "vk verifying scopes: %s"

    invoke-static {v3, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/vk/sdk/VKAccessToken;->currentToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/vk/sdk/VKAccessToken;->hasScope([Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo p1, "vk scopes verified"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthHelper;->mAuthListener:Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;->onLoggedIn()V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "vk scopes verification failed"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/beetalk/sdk/helper/BBLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/vk/VKAuthHelper;->startLogin(Landroid/app/Activity;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .locals 2

    sget-object v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {v0}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->getOuterCode()I

    move-result v0

    new-instance v1, Lcom/beetalk/sdk/vk/VKAuthHelper$2;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/vk/VKAuthHelper$2;-><init>(Lcom/beetalk/sdk/vk/VKAuthHelper;)V

    invoke-static {v0, p1, p2, v1}, Lcom/vk/sdk/VKSdk;->onActivityResult(IILandroid/content/Intent;Lcom/vk/sdk/VKCallback;)Z

    move-result p1

    return p1
.end method

.method public setOnAuthResultListener(Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKAuthHelper;->mAuthListener:Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;

    return-void
.end method

.method public startLogin()V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/vk/VKAuthHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/beetalk/sdk/vk/VKAuthHelper$1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/vk/VKAuthHelper$1;-><init>(Lcom/beetalk/sdk/vk/VKAuthHelper;)V

    invoke-static {v0, v1}, Lcom/vk/sdk/VKSdk;->wakeUpSession(Landroid/content/Context;Lcom/vk/sdk/VKCallback;)Z

    return-void
.end method
