.class Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3$1;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3;->onComplete(Lcom/vk/sdk/api/httpClient/VKImageOperation;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3;


# direct methods
.method constructor <init>(Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3$1;->this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3$1;->this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3;

    iget-object v0, v0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3;->this$0:Lcom/vk/sdk/dialogs/VKShareDialogDelegate;

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3$1;->this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3;

    iget-object v1, v1, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3;->val$photoUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3$1;->this$1:Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3;

    iget v2, v2, Lcom/vk/sdk/dialogs/VKShareDialogDelegate$3;->val$attempt:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/vk/sdk/dialogs/VKShareDialogDelegate;->access$300(Lcom/vk/sdk/dialogs/VKShareDialogDelegate;Ljava/lang/String;I)V

    return-void
.end method
