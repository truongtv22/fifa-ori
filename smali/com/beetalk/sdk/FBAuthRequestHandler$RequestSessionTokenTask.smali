.class Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;
.super Landroid/os/AsyncTask;
.source "FBAuthRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/FBAuthRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestSessionTokenTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/beetalk/sdk/AuthClient$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/FBAuthRequestHandler;


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/FBAuthRequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;->this$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/FBAuthRequestHandler;Lcom/beetalk/sdk/FBAuthRequestHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;-><init>(Lcom/beetalk/sdk/FBAuthRequestHandler;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;->this$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

    iget-object v1, v0, Lcom/beetalk/sdk/FBAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/beetalk/sdk/FBAuthRequestHandler;->access$300(Lcom/beetalk/sdk/FBAuthRequestHandler;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;->doInBackground([Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;->this$0:Lcom/beetalk/sdk/FBAuthRequestHandler;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/FBAuthRequestHandler;->access$400(Lcom/beetalk/sdk/FBAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/beetalk/sdk/AuthClient$Result;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/FBAuthRequestHandler$RequestSessionTokenTask;->onPostExecute(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method
