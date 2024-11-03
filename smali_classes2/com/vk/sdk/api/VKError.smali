.class public Lcom/vk/sdk/api/VKError;
.super Lcom/vk/sdk/VKObject;
.source "VKError.java"


# static fields
.field private static final ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"

.field private static final ERROR_REASON:Ljava/lang/String; = "error_reason"

.field private static final FAIL:Ljava/lang/String; = "fail"

.field public static final VK_API_ERROR:I = -0x65

.field public static final VK_CANCELED:I = -0x66

.field public static final VK_JSON_FAILED:I = -0x68

.field public static final VK_REQUEST_HTTP_FAILED:I = -0x69

.field public static final VK_REQUEST_NOT_PREPARED:I = -0x67


# instance fields
.field public apiError:Lcom/vk/sdk/api/VKError;

.field public captchaImg:Ljava/lang/String;

.field public captchaSid:Ljava/lang/String;

.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public errorReason:Ljava/lang/String;

.field public httpError:Ljava/lang/Exception;

.field public redirectUri:Ljava/lang/String;

.field public request:Lcom/vk/sdk/api/VKRequest;

.field public requestParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/VKObject;-><init>()V

    iput p1, p0, Lcom/vk/sdk/api/VKError;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/VKObject;-><init>()V

    const/16 v0, -0x65

    iput v0, p0, Lcom/vk/sdk/api/VKError;->errorCode:I

    const-string v0, "error_reason"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/vk/sdk/api/VKError;->errorReason:Ljava/lang/String;

    const-string v0, "error_description"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/VKError;->errorMessage:Ljava/lang/String;

    const-string v0, "fail"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Action failed"

    iput-object v0, p0, Lcom/vk/sdk/api/VKError;->errorReason:Ljava/lang/String;

    :cond_0
    const-string v0, "cancel"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, -0x66

    iput p1, p0, Lcom/vk/sdk/api/VKError;->errorCode:I

    const-string p1, "User canceled request"

    iput-object p1, p0, Lcom/vk/sdk/api/VKError;->errorReason:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/vk/sdk/VKObject;-><init>()V

    new-instance v0, Lcom/vk/sdk/api/VKError;

    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/VKError;-><init>(I)V

    const-string v1, "error_msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vk/sdk/api/VKError;->errorMessage:Ljava/lang/String;

    const-string v1, "request_params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/vk/sdk/util/VKJsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vk/sdk/api/VKError;->requestParams:Ljava/util/ArrayList;

    iget v1, v0, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    const-string v1, "captcha_img"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vk/sdk/api/VKError;->captchaImg:Ljava/lang/String;

    const-string v1, "captcha_sid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vk/sdk/api/VKError;->captchaSid:Ljava/lang/String;

    :cond_0
    iget v1, v0, Lcom/vk/sdk/api/VKError;->errorCode:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    const-string v1, "redirect_uri"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/vk/sdk/api/VKError;->redirectUri:Ljava/lang/String;

    :cond_1
    const/16 p1, -0x65

    iput p1, p0, Lcom/vk/sdk/api/VKError;->errorCode:I

    iput-object v0, p0, Lcom/vk/sdk/api/VKError;->apiError:Lcom/vk/sdk/api/VKError;

    return-void
.end method

.method private appendFields(Ljava/lang/StringBuilder;)V
    .locals 5

    iget-object v0, p0, Lcom/vk/sdk/api/VKError;->errorReason:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "; %s"

    if-eqz v0, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/VKError;->errorMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static getRegisteredError(J)Lcom/vk/sdk/api/VKError;
    .locals 0

    invoke-static {p0, p1}, Lcom/vk/sdk/api/VKError;->getRegisteredObject(J)Lcom/vk/sdk/VKObject;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/VKError;

    return-object p0
.end method


# virtual methods
.method public answerCaptcha(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/vk/sdk/api/VKParameters;

    invoke-direct {v0}, Lcom/vk/sdk/api/VKParameters;-><init>()V

    const-string v1, "captcha_sid"

    iget-object v2, p0, Lcom/vk/sdk/api/VKError;->captchaSid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vk/sdk/api/VKParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "captcha_key"

    invoke-virtual {v0, v1, p1}, Lcom/vk/sdk/api/VKParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/VKRequest;->addExtraParameters(Lcom/vk/sdk/api/VKParameters;)V

    iget-object p1, p0, Lcom/vk/sdk/api/VKError;->request:Lcom/vk/sdk/api/VKRequest;

    invoke-virtual {p1}, Lcom/vk/sdk/api/VKRequest;->repeat()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VKError ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vk/sdk/api/VKError;->errorCode:I

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "code: %d; "

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v1, "API error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/sdk/api/VKError;->apiError:Lcom/vk/sdk/api/VKError;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vk/sdk/api/VKError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "Canceled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, "Request wasn\'t prepared"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, "JSON failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v1, "HTTP failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/vk/sdk/api/VKError;->appendFields(Ljava/lang/StringBuilder;)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x69
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
