.class public interface abstract Lcom/beetalk/sdk/vk/VKAuthHelper$OnAuthResultListener;
.super Ljava/lang/Object;
.source "VKAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/vk/VKAuthHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAuthResultListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/vk/sdk/api/VKError;)V
.end method

.method public abstract onLoggedIn()V
.end method
