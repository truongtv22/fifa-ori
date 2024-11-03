.class Lcom/beetalk/sdk/GarenaAuthActivity$1;
.super Landroid/webkit/WebViewClient;
.source "GarenaAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GarenaAuthActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GarenaAuthActivity;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GarenaAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity$1;->this$0:Lcom/beetalk/sdk/GarenaAuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$shouldOverrideUrlLoading$0$com-beetalk-sdk-GarenaAuthActivity$1(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity$1;->this$0:Lcom/beetalk/sdk/GarenaAuthActivity;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->access$500(Lcom/beetalk/sdk/GarenaAuthActivity;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$shouldOverrideUrlLoading$1$com-beetalk-sdk-GarenaAuthActivity$1()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity$1;->this$0:Lcom/beetalk/sdk/GarenaAuthActivity;

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/beetalk/sdk/GarenaAuthActivity;->access$400(Lcom/beetalk/sdk/GarenaAuthActivity;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity$1;->this$0:Lcom/beetalk/sdk/GarenaAuthActivity;

    invoke-static {p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->access$000(Lcom/beetalk/sdk/GarenaAuthActivity;)Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object p1

    sget-object p2, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p2}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    iget-object p2, p0, Lcom/beetalk/sdk/GarenaAuthActivity$1;->this$0:Lcom/beetalk/sdk/GarenaAuthActivity;

    invoke-static {p2, p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->access$100(Lcom/beetalk/sdk/GarenaAuthActivity;Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getGarenaOAuthRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/beetalk/sdk/GarenaAuthActivity$1;->this$0:Lcom/beetalk/sdk/GarenaAuthActivity;

    invoke-static {v0}, Lcom/beetalk/sdk/GarenaAuthActivity;->access$200(Lcom/beetalk/sdk/GarenaAuthActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const-string p1, "code="

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    aput-object p1, v1, v0

    const-string/jumbo p2, "web code 1%s %s"

    invoke-static {p2, v1}, Lcom/beetalk/sdk/helper/BBLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lcom/beetalk/sdk/GarenaAuthActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/beetalk/sdk/GarenaAuthActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity$1;Ljava/lang/String;)V

    invoke-static {p2}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    goto :goto_1

    :cond_2
    const-string p1, "error="

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_3

    new-instance p1, Lcom/beetalk/sdk/GarenaAuthActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/beetalk/sdk/GarenaAuthActivity$1$$ExternalSyntheticLambda1;-><init>(Lcom/beetalk/sdk/GarenaAuthActivity$1;)V

    invoke-static {p1}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x6

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "access_denied"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/beetalk/sdk/GarenaAuthActivity$1;->this$0:Lcom/beetalk/sdk/GarenaAuthActivity;

    invoke-static {p1}, Lcom/beetalk/sdk/GarenaAuthActivity;->access$300(Lcom/beetalk/sdk/GarenaAuthActivity;)V

    :cond_4
    :goto_1
    return v0
.end method
