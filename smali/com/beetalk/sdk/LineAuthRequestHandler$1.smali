.class Lcom/beetalk/sdk/LineAuthRequestHandler$1;
.super Ljava/lang/Object;
.source "LineAuthRequestHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/LineAuthRequestHandler;->onLoggedIn(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/LineAuthRequestHandler;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/LineAuthRequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/LineAuthRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/LineAuthRequestHandler;

    iget-object p1, p1, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    iget-object v0, p0, Lcom/beetalk/sdk/LineAuthRequestHandler$1;->this$0:Lcom/beetalk/sdk/LineAuthRequestHandler;

    iget-object v0, v0, Lcom/beetalk/sdk/LineAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v0

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method
