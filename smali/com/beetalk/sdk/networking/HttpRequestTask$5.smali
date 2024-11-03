.class synthetic Lcom/beetalk/sdk/networking/HttpRequestTask$5;
.super Ljava/lang/Object;
.source "HttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/HttpRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$beetalk$sdk$networking$HttpRequestTask$RequestType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->values()[Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask$5;->$SwitchMap$com$beetalk$sdk$networking$HttpRequestTask$RequestType:[I

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask$5;->$SwitchMap$com$beetalk$sdk$networking$HttpRequestTask$RequestType:[I

    sget-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-virtual {v1}, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
