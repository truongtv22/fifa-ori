.class Lcom/beetalk/sdk/networking/service/AppService$1;
.super Ljava/util/HashMap;
.source "AppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/networking/service/AppService;->postFeedbackSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$feedback:Ljava/lang/String;

.field final synthetic val$openId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/beetalk/sdk/networking/service/AppService$1;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/service/AppService$1;->val$openId:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/networking/service/AppService$1;->val$feedback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "app_id"

    invoke-virtual {p0, v0, p1}, Lcom/beetalk/sdk/networking/service/AppService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "open_id"

    invoke-virtual {p0, p1, p2}, Lcom/beetalk/sdk/networking/service/AppService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "feedback"

    invoke-virtual {p0, p1, p3}, Lcom/beetalk/sdk/networking/service/AppService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
