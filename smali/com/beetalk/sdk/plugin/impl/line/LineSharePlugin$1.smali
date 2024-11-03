.class synthetic Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin$1;
.super Ljava/lang/Object;
.source "LineSharePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$beetalk$sdk$line$LinePostItem$PostType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/line/LinePostItem$PostType;->values()[Lcom/beetalk/sdk/line/LinePostItem$PostType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin$1;->$SwitchMap$com$beetalk$sdk$line$LinePostItem$PostType:[I

    :try_start_0
    sget-object v1, Lcom/beetalk/sdk/line/LinePostItem$PostType;->TEXT_LINK:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-virtual {v1}, Lcom/beetalk/sdk/line/LinePostItem$PostType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin$1;->$SwitchMap$com$beetalk$sdk$line$LinePostItem$PostType:[I

    sget-object v1, Lcom/beetalk/sdk/line/LinePostItem$PostType;->IMAGE:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-virtual {v1}, Lcom/beetalk/sdk/line/LinePostItem$PostType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/beetalk/sdk/plugin/impl/line/LineSharePlugin$1;->$SwitchMap$com$beetalk$sdk$line$LinePostItem$PostType:[I

    sget-object v1, Lcom/beetalk/sdk/line/LinePostItem$PostType;->VIDEO:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-virtual {v1}, Lcom/beetalk/sdk/line/LinePostItem$PostType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
