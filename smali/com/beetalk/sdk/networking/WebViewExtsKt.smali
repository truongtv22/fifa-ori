.class public final Lcom/beetalk/sdk/networking/WebViewExtsKt;
.super Ljava/lang/Object;
.source "WebViewExts.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a(\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0000\u00a8\u0006\t"
    }
    d2 = {
        "loadUrlWithAutoSwitch",
        "",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "callback",
        "Lkotlin/Function1;",
        "",
        "Ljava/lang/Void;",
        "ChimbleGarena-GarenaMSDK_android-arm64-clang-opt"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$1a_VxnU5JD5J6iJWgdaK2RC5M8c(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;Lbolts/Task;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/beetalk/sdk/networking/WebViewExtsKt;->loadUrlWithAutoSwitch$lambda-3(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;Lbolts/Task;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dHL93Dk9g46aMf9vm4o_yz0dt9M(Ljava/lang/String;)Lkotlin/Result;
    .locals 0

    invoke-static {p0}, Lcom/beetalk/sdk/networking/WebViewExtsKt;->loadUrlWithAutoSwitch$lambda-0(Ljava/lang/String;)Lkotlin/Result;

    move-result-object p0

    return-object p0
.end method

.method public static final loadUrlWithAutoSwitch(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object p1

    new-instance v0, Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda1;-><init>(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    return-void
.end method

.method private static final loadUrlWithAutoSwitch$lambda-0(Ljava/lang/String;)Lkotlin/Result;
    .locals 1

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/beetalk/sdk/networking/OkHttpClientManager;->INSTANCE:Lcom/beetalk/sdk/networking/OkHttpClientManager;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->autoSwitchHost-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p0

    return-object p0
.end method

.method private static final loadUrlWithAutoSwitch$lambda-3(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;Lbolts/Task;)Ljava/lang/Void;
    .locals 1

    const-string v0, "$this_loadUrlWithAutoSwitch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "result.result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    :goto_0
    return-object p0
.end method
