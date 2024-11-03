.class public Lcom/bytedance/sdk/open/tiktok/share/Share$Request;
.super Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/open/tiktok/share/Share;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public extraShareOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mAnchorInfo:Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;

.field public mAnchorSourceType:Ljava/lang/String;

.field public mCallerPackage:Ljava/lang/String;

.field public mClientKey:Ljava/lang/String;

.field public mExtra:Ljava/lang/String;

.field public mHashTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMediaContent:Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

.field public mMicroAppInfo:Lcom/bytedance/sdk/open/tiktok/base/MicroAppInfo;

.field public mShareFormat:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

.field public mState:Ljava/lang/String;

.field public mTargetSceneType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mTargetSceneType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mTargetSceneType:I

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mMediaContent:Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

    if-nez v0, :cond_0

    const-string v0, "Aweme.OpenSDK.Share"

    const-string v1, "checkArgs fail ,mediaContent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/open/tiktok/base/MediaContent;->checkArgs()Z

    move-result v0

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "_aweme_open_sdk_params_caller_package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mCallerPackage:Ljava/lang/String;

    const-string v0, "_aweme_open_sdk_params_caller_local_entry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->callerLocalEntry:Ljava/lang/String;

    const-string v0, "_aweme_open_sdk_params_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mState:Ljava/lang/String;

    const-string v0, "_aweme_open_sdk_params_client_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mClientKey:Ljava/lang/String;

    const-string v0, "_aweme_open_sdk_params_target_landpage_scene"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mTargetSceneType:I

    const-string v0, "_aweme_open_sdk_params_hashtag_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mHashTagList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/bytedance/sdk/open/tiktok/base/MediaContent$Builder;->fromBundle(Landroid/os/Bundle;)Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mMediaContent:Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

    invoke-static {p1}, Lcom/bytedance/sdk/open/tiktok/base/MicroAppInfo;->unserialize(Landroid/os/Bundle;)Lcom/bytedance/sdk/open/tiktok/base/MicroAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mMicroAppInfo:Lcom/bytedance/sdk/open/tiktok/base/MicroAppInfo;

    invoke-static {p1}, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;->unserialize(Landroid/os/Bundle;)Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mAnchorInfo:Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;

    const-string v0, "_aweme_open_sdk_params_share_format"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->DEFAULT:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mShareFormat:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->GREEN_SCREEN:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    iput-object p1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mShareFormat:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    :goto_0
    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/bytedance/sdk/open/tiktok/common/model/BaseReq;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "_aweme_open_sdk_params_caller_local_entry"

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->callerLocalEntry:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_aweme_open_sdk_params_client_key"

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mClientKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_aweme_open_sdk_params_caller_package"

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_aweme_open_sdk_params_state"

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mMediaContent:Lcom/bytedance/sdk/open/tiktok/base/MediaContent;

    invoke-static {v0}, Lcom/bytedance/sdk/open/tiktok/base/MediaContent$Builder;->toBundle(Lcom/bytedance/sdk/open/tiktok/base/MediaContent;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "_aweme_open_sdk_params_target_landpage_scene"

    iget v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mTargetSceneType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mHashTagList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mHashTagList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_aweme_open_sdk_params_target_scene"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_aweme_open_sdk_params_hashtag_list"

    iget-object v1, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mHashTagList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mMicroAppInfo:Lcom/bytedance/sdk/open/tiktok/base/MicroAppInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/open/tiktok/base/MicroAppInfo;->serialize(Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mAnchorInfo:Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;->getAnchorBusinessType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mAnchorInfo:Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/open/tiktok/base/AnchorObject;->serialize(Landroid/os/Bundle;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Request;->mShareFormat:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    invoke-static {v0}, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->access$000(Lcom/bytedance/sdk/open/tiktok/share/Share$Format;)I

    move-result v0

    const-string v1, "_aweme_open_sdk_params_share_format"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
