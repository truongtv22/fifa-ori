.class Lcom/beetalk/sdk/GoogleAuthRequestHandler$RequestSessionTokenTask;
.super Landroid/os/AsyncTask;
.source "GoogleAuthRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/GoogleAuthRequestHandler;
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
.field final synthetic this$0:Lcom/beetalk/sdk/GoogleAuthRequestHandler;


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/GoogleAuthRequestHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler$RequestSessionTokenTask;->this$0:Lcom/beetalk/sdk/GoogleAuthRequestHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/GoogleAuthRequestHandler;Lcom/beetalk/sdk/GoogleAuthRequestHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler$RequestSessionTokenTask;-><init>(Lcom/beetalk/sdk/GoogleAuthRequestHandler;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 2

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler$RequestSessionTokenTask;->this$0:Lcom/beetalk/sdk/GoogleAuthRequestHandler;

    iget-object v1, v0, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v1}, Lcom/beetalk/sdk/AuthClient;->getPendingRequest()Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->access$100(Lcom/beetalk/sdk/GoogleAuthRequestHandler;Ljava/lang/String;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler$RequestSessionTokenTask;->doInBackground([Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/beetalk/sdk/AuthClient$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/GoogleAuthRequestHandler$RequestSessionTokenTask;->this$0:Lcom/beetalk/sdk/GoogleAuthRequestHandler;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler;->access$200(Lcom/beetalk/sdk/GoogleAuthRequestHandler;Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/beetalk/sdk/AuthClient$Result;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/GoogleAuthRequestHandler$RequestSessionTokenTask;->onPostExecute(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method
