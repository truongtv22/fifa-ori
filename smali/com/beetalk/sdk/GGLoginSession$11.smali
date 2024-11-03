.class synthetic Lcom/beetalk/sdk/GGLoginSession$11;
.super Ljava/lang/Object;
.source "GGLoginSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/GGLoginSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$beetalk$sdk$SessionStatus:[I

.field static final synthetic $SwitchMap$com$beetalk$sdk$data$TokenProvider:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/beetalk/sdk/data/TokenProvider;->values()[Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v2}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    sget-object v3, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    sget-object v3, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_NATIVE_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    sget-object v3, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_WEB_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    sget-object v3, Lcom/beetalk/sdk/data/TokenProvider;->VK:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    sget-object v3, Lcom/beetalk/sdk/data/TokenProvider;->LINE:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    sget-object v3, Lcom/beetalk/sdk/data/TokenProvider;->GOOGLE:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    sget-object v3, Lcom/beetalk/sdk/data/TokenProvider;->TWITTER:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    sget-object v3, Lcom/beetalk/sdk/data/TokenProvider;->EMAIL:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v3

    const/16 v4, 0x9

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$data$TokenProvider:[I

    sget-object v3, Lcom/beetalk/sdk/data/TokenProvider;->PLAY_GAMES:Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    invoke-static {}, Lcom/beetalk/sdk/SessionStatus;->values()[Lcom/beetalk/sdk/SessionStatus;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$SessionStatus:[I

    :try_start_a
    sget-object v3, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {v3}, Lcom/beetalk/sdk/SessionStatus;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v1, Lcom/beetalk/sdk/GGLoginSession$11;->$SwitchMap$com$beetalk$sdk$SessionStatus:[I

    sget-object v2, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {v2}, Lcom/beetalk/sdk/SessionStatus;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
