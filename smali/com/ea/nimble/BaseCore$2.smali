.class synthetic Lcom/ea/nimble/BaseCore$2;
.super Ljava/lang/Object;
.source "BaseCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/BaseCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ea$nimble$BaseCore$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ea/nimble/BaseCore$State;->values()[Lcom/ea/nimble/BaseCore$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    :try_start_0
    sget-object v1, Lcom/ea/nimble/BaseCore$State;->INACTIVE:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->MANUAL_TEARDOWN:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->DESTROY:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->QUITTING:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->FAKE_DESTROY:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
