.class public Lcom/vk/sdk/VKServiceActivity;
.super Landroid/app/Activity;
.source "VKServiceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/sdk/VKServiceActivity$VKServiceType;
    }
.end annotation


# static fields
.field private static final KEY_REQUEST:Ljava/lang/String; = "arg3"

.field private static final KEY_SCOPE_LIST:Ljava/lang/String; = "arg2"

.field private static final KEY_SDK_CUSTOM_INITIALIZE:Ljava/lang/String; = "arg4"

.field private static final KEY_TYPE:Ljava/lang/String; = "arg1"

.field private static final VK_APP_AUTH_ACTION:Ljava/lang/String; = "com.vkontakte.android.action.SDK_AUTH"

.field private static final VK_APP_FINGERPRINT:Ljava/lang/String; = "48761EEF50EE53AFC4CC9C5F10E6BDE7F8F5B82F"

.field private static final VK_APP_PACKAGE_ID:Ljava/lang/String; = "com.vkontakte.android"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vk/sdk/VKServiceActivity;)J
    .locals 2

    invoke-direct {p0}, Lcom/vk/sdk/VKServiceActivity;->getRequestId()J

    move-result-wide v0

    return-wide v0
.end method

.method private static createIntent(Landroid/content/Context;Lcom/vk/sdk/VKServiceActivity$VKServiceType;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vk/sdk/VKServiceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "arg1"

    invoke-virtual {p1}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "arg4"

    invoke-static {}, Lcom/vk/sdk/VKSdk;->isCustomInitialize()Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getRequestId()J
    .locals 4

    invoke-virtual {p0}, Lcom/vk/sdk/VKServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg3"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getScopeList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/vk/sdk/VKServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getType()Lcom/vk/sdk/VKServiceActivity$VKServiceType;
    .locals 2

    invoke-virtual {p0}, Lcom/vk/sdk/VKServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->valueOf(Ljava/lang/String;)Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    move-result-object v0

    return-object v0
.end method

.method public static interruptWithError(Landroid/content/Context;Lcom/vk/sdk/api/VKError;Lcom/vk/sdk/VKServiceActivity$VKServiceType;)V
    .locals 3

    invoke-static {p0, p2}, Lcom/vk/sdk/VKServiceActivity;->createIntent(Landroid/content/Context;Lcom/vk/sdk/VKServiceActivity$VKServiceType;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "arg3"

    invoke-virtual {p1}, Lcom/vk/sdk/api/VKError;->registerObject()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static startLoginActivity(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-static {v0, v1}, Lcom/vk/sdk/VKServiceActivity;->createIntent(Landroid/content/Context;Lcom/vk/sdk/VKServiceActivity$VKServiceType;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg2"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    sget-object p1, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {p1}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->getOuterCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static startLoginActivity(Landroid/app/Fragment;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-static {v0, v1}, Lcom/vk/sdk/VKServiceActivity;->createIntent(Landroid/content/Context;Lcom/vk/sdk/VKServiceActivity$VKServiceType;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg2"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    sget-object p1, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {p1}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->getOuterCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {v0}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->getOuterCode()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Validation:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {v0}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->getOuterCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance p1, Lcom/vk/sdk/VKServiceActivity$1;

    invoke-direct {p1, p0}, Lcom/vk/sdk/VKServiceActivity$1;-><init>(Lcom/vk/sdk/VKServiceActivity;)V

    invoke-static {p0, p2, p3, p1}, Lcom/vk/sdk/VKSdk;->processActivityResult(Landroid/content/Context;ILandroid/content/Intent;Lcom/vk/sdk/VKCallback;)Z

    :cond_1
    return-void
.end method

.method public onActivityResultPublic(IILandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/VKServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vk/sdk/VKServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg4"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, v2, v1}, Lcom/vk/sdk/VKSdk;->customInitialize(Landroid/content/Context;ILjava/lang/String;)Lcom/vk/sdk/VKSdk;

    :cond_0
    invoke-virtual {p0}, Lcom/vk/sdk/VKServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vk/sdk/VKSdk;->wakeUpSession(Landroid/content/Context;)Z

    sget-object v0, Lcom/vk/sdk/VKServiceActivity$2;->$SwitchMap$com$vk$sdk$VKServiceActivity$VKServiceType:[I

    invoke-direct {p0}, Lcom/vk/sdk/VKServiceActivity;->getType()Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 p1, 0x2

    if-eq v0, p1, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/vk/sdk/VKServiceActivity;->getRequestId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/vk/sdk/VKObject;->getRegisteredObject(J)Lcom/vk/sdk/VKObject;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/VKError;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/vk/sdk/api/VKError;->redirectUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/vk/sdk/api/VKError;->redirectUri:Ljava/lang/String;

    const-string v1, "&ui=vk_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/vk/sdk/api/VKError;->redirectUri:Ljava/lang/String;

    const-string v2, "?ui=vk_sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/vk/sdk/api/VKError;->redirectUri:Ljava/lang/String;

    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/vk/sdk/api/VKError;->redirectUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vk/sdk/api/VKError;->redirectUri:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/vk/sdk/api/VKError;->redirectUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vk/sdk/api/VKError;->redirectUri:Ljava/lang/String;

    :cond_3
    :goto_0
    new-instance v0, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    invoke-direct {v0}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Validation:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {v2}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->getOuterCode()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->show(Landroid/app/Activity;Landroid/os/Bundle;ILcom/vk/sdk/api/VKError;)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/vk/sdk/VKServiceActivity;->finish()V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/vk/sdk/VKServiceActivity;->getRequestId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/vk/sdk/VKObject;->getRegisteredObject(J)Lcom/vk/sdk/VKObject;

    move-result-object p1

    check-cast p1, Lcom/vk/sdk/api/VKError;

    if-eqz p1, :cond_6

    new-instance v0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;

    invoke-direct {v0, p1}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;-><init>(Lcom/vk/sdk/api/VKError;)V

    invoke-virtual {v0, p0, p0}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->show(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/vk/sdk/VKServiceActivity;->finish()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/vk/sdk/VKServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "version"

    invoke-static {}, Lcom/vk/sdk/VKSdk;->getApiVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "client_id"

    invoke-static {}, Lcom/vk/sdk/VKSdk;->getsCurrentAppId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "revoke"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/vk/sdk/VKServiceActivity;->getScopeList()Ljava/util/ArrayList;

    move-result-object v3

    const-string v5, ","

    invoke-static {v3, v5}, Lcom/vk/sdk/util/VKStringJoiner;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "scope"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.vkontakte.android"

    invoke-static {v0, v3}, Lcom/vk/sdk/util/VKUtil;->getCertificateFingerprint(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3}, Lcom/vk/sdk/util/VKUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "com.vkontakte.android.action.SDK_AUTH"

    invoke-static {v0, v6}, Lcom/vk/sdk/util/VKUtil;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    array-length v0, v5

    if-lez v0, :cond_8

    aget-object v0, v5, v2

    const-string v2, "48761EEF50EE53AFC4CC9C5F10E6BDE7F8F5B82F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_9

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {v0}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->getOuterCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/vk/sdk/VKServiceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;

    invoke-direct {p1}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;-><init>()V

    sget-object v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {v0}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->getOuterCode()I

    move-result v0

    invoke-virtual {p1, p0, v4, v0, v1}, Lcom/vk/sdk/dialogs/VKOpenAuthDialog;->show(Landroid/app/Activity;Landroid/os/Bundle;ILcom/vk/sdk/api/VKError;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/vk/sdk/VKServiceActivity;->finish()V

    return-void
.end method
