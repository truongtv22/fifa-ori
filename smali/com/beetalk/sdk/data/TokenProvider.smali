.class public final enum Lcom/beetalk/sdk/data/TokenProvider;
.super Ljava/lang/Enum;
.source "TokenProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/data/TokenProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum EMAIL:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum GARENA_NATIVE_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum GARENA_OTHERS:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum GARENA_WEB_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum GOOGLE:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum GUEST:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum LINE:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum OTHERS:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum PLAY_GAMES:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum TWITTER:Lcom/beetalk/sdk/data/TokenProvider;

.field public static final enum VK:Lcom/beetalk/sdk/data/TokenProvider;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v1, "GARENA_NATIVE_ANDROID"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_NATIVE_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v1, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v4, "GARENA_WEB_ANDROID"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_WEB_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v4, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v7, "GARENA_OTHERS"

    const/4 v8, 0x2

    const/4 v9, 0x5

    invoke-direct {v4, v7, v8, v9}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_OTHERS:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v7, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v10, "FACEBOOK"

    const/4 v11, 0x6

    invoke-direct {v7, v10, v3, v11}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v10, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v12, "OTHERS"

    const/4 v13, 0x7

    invoke-direct {v10, v12, v6, v13}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/beetalk/sdk/data/TokenProvider;->OTHERS:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v12, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v14, "GUEST"

    const/16 v15, 0x8

    invoke-direct {v12, v14, v9, v15}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v14, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v9, "VK"

    const/16 v6, 0x9

    invoke-direct {v14, v9, v11, v6}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/beetalk/sdk/data/TokenProvider;->VK:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v9, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v11, "LINE"

    const/16 v3, 0xa

    invoke-direct {v9, v11, v13, v3}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/beetalk/sdk/data/TokenProvider;->LINE:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v11, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v13, "GOOGLE"

    const/16 v8, 0xb

    invoke-direct {v11, v13, v15, v8}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/beetalk/sdk/data/TokenProvider;->GOOGLE:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v13, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v15, "TWITTER"

    const/16 v5, 0xd

    invoke-direct {v13, v15, v6, v5}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/beetalk/sdk/data/TokenProvider;->TWITTER:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v5, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v15, "EMAIL"

    const/16 v6, 0xe

    invoke-direct {v5, v15, v3, v6}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/beetalk/sdk/data/TokenProvider;->EMAIL:Lcom/beetalk/sdk/data/TokenProvider;

    new-instance v6, Lcom/beetalk/sdk/data/TokenProvider;

    const-string v15, "PLAY_GAMES"

    const/16 v3, 0xf

    invoke-direct {v6, v15, v8, v3}, Lcom/beetalk/sdk/data/TokenProvider;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/beetalk/sdk/data/TokenProvider;->PLAY_GAMES:Lcom/beetalk/sdk/data/TokenProvider;

    const/16 v3, 0xc

    new-array v3, v3, [Lcom/beetalk/sdk/data/TokenProvider;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v10, v3, v0

    const/4 v0, 0x5

    aput-object v12, v3, v0

    const/4 v0, 0x6

    aput-object v14, v3, v0

    const/4 v0, 0x7

    aput-object v9, v3, v0

    const/16 v0, 0x8

    aput-object v11, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v5, v3, v0

    aput-object v6, v3, v8

    sput-object v3, Lcom/beetalk/sdk/data/TokenProvider;->$VALUES:[Lcom/beetalk/sdk/data/TokenProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/beetalk/sdk/data/TokenProvider;->value:I

    return-void
.end method

.method public static getTokenProviderFromPlatform(I)Lcom/beetalk/sdk/data/TokenProvider;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/16 v0, 0x8

    if-eq p0, v0, :cond_7

    const/16 v0, 0xb

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->PLAY_GAMES:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0

    :cond_1
    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->EMAIL:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0

    :cond_2
    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->LINE:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0

    :cond_3
    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->VK:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0

    :cond_4
    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0

    :cond_5
    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0

    :cond_6
    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->TWITTER:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0

    :cond_7
    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->GOOGLE:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0

    :cond_8
    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_NATIVE_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0
.end method

.method public static valueOf(I)Lcom/beetalk/sdk/data/TokenProvider;
    .locals 5

    invoke-static {}, Lcom/beetalk/sdk/data/TokenProvider;->values()[Lcom/beetalk/sdk/data/TokenProvider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/beetalk/sdk/data/TokenProvider;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->OTHERS:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/data/TokenProvider;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/data/TokenProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/data/TokenProvider;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/data/TokenProvider;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->$VALUES:[Lcom/beetalk/sdk/data/TokenProvider;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/data/TokenProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/data/TokenProvider;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/data/TokenProvider;->value:I

    return v0
.end method
