.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$500(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Z)V

    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$600(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)[Lcom/vk/sdk/api/photo/VKUploadImage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/vk/sdk/VKSdk;->getAccessToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/vk/sdk/VKSdk;->getAccessToken()Lcom/vk/sdk/VKAccessToken;

    move-result-object p1

    iget-object p1, p1, Lcom/vk/sdk/VKAccessToken;->userId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance p1, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;

    iget-object v2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    invoke-static {v2}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$600(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;)[Lcom/vk/sdk/api/photo/VKUploadImage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p1, v2, v0, v1, v3}, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;-><init>([Lcom/vk/sdk/api/photo/VKUploadImage;JI)V

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5$1;

    invoke-direct {v0, p0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5$1;-><init>(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5;)V

    invoke-virtual {p1, v0}, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->executeWithListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$5;->this$0:Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;->access$700(Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;Lcom/vk/sdk/api/model/VKAttachments;)V

    :goto_0
    return-void
.end method
