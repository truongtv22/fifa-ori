.class Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/dialogs/VKShareDialogDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;


# direct methods
.method constructor <init>(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$500(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;Z)V

    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {p1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$600(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)[Lcom/vk/sdk/api/photo/VKUploadImage;

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

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-instance v0, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    invoke-static {v1}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$600(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;)[Lcom/vk/sdk/api/photo/VKUploadImage;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;-><init>([Lcom/vk/sdk/api/photo/VKUploadImage;JI)V

    new-instance p1, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5$1;

    invoke-direct {p1, p0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5$1;-><init>(Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;)V

    invoke-virtual {v0, p1}, Lcom/vk/sdk/api/photo/VKUploadWallPhotoRequest;->executeWithListener(Lcom/vk/sdk/api/VKRequest$VKRequestListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$5;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$700(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;Lcom/vk/sdk/api/model/VKAttachments;)V

    :goto_0
    return-void
.end method
