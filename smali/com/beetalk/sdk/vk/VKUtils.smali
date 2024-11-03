.class public Lcom/beetalk/sdk/vk/VKUtils;
.super Ljava/lang/Object;
.source "VKUtils.java"


# static fields
.field public static final KEY_APP_ID:Ljava/lang/String; = "com_vk_sdk_AppId"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/beetalk/sdk/vk/VKUtils;->lookUpAppId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/vk/sdk/VKSdk;->isCustomInitialize()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5.131"

    invoke-static {p0, v0, v1}, Lcom/vk/sdk/VKSdk;->customInitialize(Landroid/content/Context;ILjava/lang/String;)Lcom/vk/sdk/VKSdk;

    :cond_0
    invoke-static {}, Lcom/vk/sdk/VKSdk;->logout()V

    :cond_1
    return-void
.end method

.method public static lookUpAppId(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "integer"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com_vk_sdk_AppId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method
