.class Lcom/beetalk/sdk/GGLoginSession$5;
.super Ljava/lang/Object;
.source "GGLoginSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGLoginSession;->lambda$inspectGuestToken$4$com-beetalk-sdk-GGLoginSession(Lcom/beetalk/sdk/data/AuthToken;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GGLoginSession;

.field final synthetic val$guestToken:Lcom/beetalk/sdk/data/AuthToken;

.field final synthetic val$onTokenResultListener:Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GGLoginSession;Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$5;->this$0:Lcom/beetalk/sdk/GGLoginSession;

    iput-object p2, p0, Lcom/beetalk/sdk/GGLoginSession$5;->val$onTokenResultListener:Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;

    iput-object p3, p0, Lcom/beetalk/sdk/GGLoginSession$5;->val$guestToken:Lcom/beetalk/sdk/data/AuthToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$5;->val$onTokenResultListener:Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession$5;->val$guestToken:Lcom/beetalk/sdk/data/AuthToken;

    sget-object v2, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/beetalk/sdk/GGLoginSession$OnTokenResultListener;->onTokenResult(Lcom/beetalk/sdk/data/AuthToken;Lcom/garena/pay/android/GGErrorCode;)V

    return-void
.end method
