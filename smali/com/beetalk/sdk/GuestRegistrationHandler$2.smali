.class Lcom/beetalk/sdk/GuestRegistrationHandler$2;
.super Ljava/lang/Object;
.source "GuestRegistrationHandler.java"

# interfaces
.implements Lcom/beetalk/sdk/networking/HttpRequestTask$JSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GuestRegistrationHandler;->grantTokenForGuest(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GuestRegistrationHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$2;->this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$2;->this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/GuestRegistrationHandler;->access$200(Lcom/beetalk/sdk/GuestRegistrationHandler;Lorg/json/JSONObject;)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p1

    iget v0, p1, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    sget-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_GUEST_LOGIN:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/garena/pay/android/helper/UILoop;->getInstance()Lcom/garena/pay/android/helper/UILoop;

    move-result-object v0

    new-instance v1, Lcom/beetalk/sdk/GuestRegistrationHandler$2$1;

    invoke-direct {v1, p0}, Lcom/beetalk/sdk/GuestRegistrationHandler$2$1;-><init>(Lcom/beetalk/sdk/GuestRegistrationHandler$2;)V

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/helper/UILoop;->post(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$2;->this$0:Lcom/beetalk/sdk/GuestRegistrationHandler;

    iget-object v0, v0, Lcom/beetalk/sdk/GuestRegistrationHandler;->client:Lcom/beetalk/sdk/AuthClient;

    invoke-virtual {v0, p1}, Lcom/beetalk/sdk/AuthClient;->notifyListener(Lcom/beetalk/sdk/AuthClient$Result;)V

    return-void
.end method
