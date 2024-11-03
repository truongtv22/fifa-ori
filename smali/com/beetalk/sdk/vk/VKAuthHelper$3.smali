.class synthetic Lcom/beetalk/sdk/vk/VKAuthHelper$3;
.super Ljava/lang/Object;
.source "VKAuthHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/vk/VKAuthHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$vk$sdk$VKSdk$LoginState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/vk/sdk/VKSdk$LoginState;->values()[Lcom/vk/sdk/VKSdk$LoginState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/beetalk/sdk/vk/VKAuthHelper$3;->$SwitchMap$com$vk$sdk$VKSdk$LoginState:[I

    :try_start_0
    sget-object v1, Lcom/vk/sdk/VKSdk$LoginState;->Pending:Lcom/vk/sdk/VKSdk$LoginState;

    invoke-virtual {v1}, Lcom/vk/sdk/VKSdk$LoginState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/beetalk/sdk/vk/VKAuthHelper$3;->$SwitchMap$com$vk$sdk$VKSdk$LoginState:[I

    sget-object v1, Lcom/vk/sdk/VKSdk$LoginState;->LoggedIn:Lcom/vk/sdk/VKSdk$LoginState;

    invoke-virtual {v1}, Lcom/vk/sdk/VKSdk$LoginState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/beetalk/sdk/vk/VKAuthHelper$3;->$SwitchMap$com$vk$sdk$VKSdk$LoginState:[I

    sget-object v1, Lcom/vk/sdk/VKSdk$LoginState;->LoggedOut:Lcom/vk/sdk/VKSdk$LoginState;

    invoke-virtual {v1}, Lcom/vk/sdk/VKSdk$LoginState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/beetalk/sdk/vk/VKAuthHelper$3;->$SwitchMap$com$vk$sdk$VKSdk$LoginState:[I

    sget-object v1, Lcom/vk/sdk/VKSdk$LoginState;->Unknown:Lcom/vk/sdk/VKSdk$LoginState;

    invoke-virtual {v1}, Lcom/vk/sdk/VKSdk$LoginState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
