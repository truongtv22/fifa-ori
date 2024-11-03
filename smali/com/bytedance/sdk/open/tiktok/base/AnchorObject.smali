.class public Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;
.super Ljava/lang/Object;
.source "AnchorObject.java"


# instance fields
.field mAnchorBusinessType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "anchor_business_type"
    .end annotation
.end field

.field mAnchorContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "anchor_content"
    .end annotation
.end field

.field mAnchorTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "anchor_title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unserialize(Landroid/os/Bundle;)Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "_aweme_open_sdk_params_anchor_info"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAnchorBusinessType()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;->mAnchorBusinessType:I

    return v0
.end method

.method public getAnchorContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;->mAnchorContent:Ljava/lang/String;

    return-object v0
.end method

.method public getAnchorTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;->mAnchorTitle:Ljava/lang/String;

    return-object v0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_aweme_open_sdk_params_anchor_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnchorBusinessType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;->mAnchorBusinessType:I

    return-void
.end method

.method public setAnchorContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;->mAnchorContent:Ljava/lang/String;

    return-void
.end method

.method public setAnchorTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;->mAnchorTitle:Ljava/lang/String;

    return-void
.end method
