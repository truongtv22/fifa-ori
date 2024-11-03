.class public interface abstract Lcom/vk/sdk/dialogs/VKShareDialogBuilder$VKShareDialogListener;
.super Ljava/lang/Object;
.source "VKShareDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/dialogs/VKShareDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VKShareDialogListener"
.end annotation


# virtual methods
.method public abstract onVkShareCancel()V
.end method

.method public abstract onVkShareComplete(I)V
.end method

.method public abstract onVkShareError(Lcom/vk/sdk/api/VKError;)V
.end method
