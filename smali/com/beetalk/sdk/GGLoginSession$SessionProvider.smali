.class public final enum Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
.super Ljava/lang/Enum;
.source "GGLoginSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/GGLoginSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/GGLoginSession$SessionProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum REFRESH_TOKEN:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field public static final enum VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v1, "GARENA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    new-instance v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v4, "FACEBOOK"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    new-instance v4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v6, "GUEST"

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-direct {v4, v6, v7, v8}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    new-instance v6, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v9, "VK"

    const/4 v10, 0x5

    invoke-direct {v6, v9, v5, v10}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    new-instance v9, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v11, "LINE"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    new-instance v11, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v13, "GOOGLE"

    const/16 v14, 0x8

    invoke-direct {v11, v13, v10, v14}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    new-instance v13, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v15, "REFRESH_TOKEN"

    invoke-direct {v13, v15, v12, v2}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->REFRESH_TOKEN:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    new-instance v15, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/16 v12, 0xb

    const-string v10, "TWITTER"

    const/4 v8, 0x7

    invoke-direct {v15, v10, v8, v12}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    new-instance v10, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const-string v12, "EMAIL"

    const/16 v8, 0xd

    invoke-direct {v10, v12, v14, v8}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    new-instance v8, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/16 v12, 0xe

    const-string v14, "PLAY_GAMES"

    const/16 v5, 0x9

    invoke-direct {v8, v14, v5, v12}, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v7

    const/4 v0, 0x3

    aput-object v6, v12, v0

    const/4 v0, 0x4

    aput-object v9, v12, v0

    const/4 v0, 0x5

    aput-object v11, v12, v0

    const/4 v0, 0x6

    aput-object v13, v12, v0

    const/4 v0, 0x7

    aput-object v15, v12, v0

    const/16 v0, 0x8

    aput-object v10, v12, v0

    aput-object v8, v12, v5

    sput-object v12, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->$VALUES:[Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

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

    iput p3, p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->val:I

    return-void
.end method

.method public static isEqualToSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/data/TokenProvider;)Z
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->FACEBOOK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GUEST:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->REFRESH_TOKEN:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_WEB_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_NATIVE_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne p1, v0, :cond_4

    :cond_3
    return v1

    :cond_4
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->VK:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p0, v0, :cond_5

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->VK:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->LINE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p0, v0, :cond_6

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->LINE:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GOOGLE:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p0, v0, :cond_7

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->GOOGLE:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne p1, v0, :cond_7

    return v1

    :cond_7
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->TWITTER:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p0, v0, :cond_8

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->TWITTER:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne p1, v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->EMAIL:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p0, v0, :cond_9

    sget-object v0, Lcom/beetalk/sdk/data/TokenProvider;->EMAIL:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne p1, v0, :cond_9

    return v1

    :cond_9
    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->PLAY_GAMES:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/beetalk/sdk/data/TokenProvider;->PLAY_GAMES:Lcom/beetalk/sdk/data/TokenProvider;

    if-ne p1, p0, :cond_a

    return v1

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->$VALUES:[Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->val:I

    return v0
.end method
