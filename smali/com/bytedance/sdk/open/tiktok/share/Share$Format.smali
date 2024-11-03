.class public final enum Lcom/bytedance/sdk/open/tiktok/share/Share$Format;
.super Ljava/lang/Enum;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/open/tiktok/share/Share;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/open/tiktok/share/Share$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

.field public static final enum DEFAULT:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

.field public static final enum GREEN_SCREEN:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->DEFAULT:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    new-instance v1, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    const-string v3, "GREEN_SCREEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->GREEN_SCREEN:Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->$VALUES:[Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

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

    iput p3, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/sdk/open/tiktok/share/Share$Format;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/open/tiktok/share/Share$Format;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/open/tiktok/share/Share$Format;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->$VALUES:[Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/open/tiktok/share/Share$Format;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/open/tiktok/share/Share$Format;->value:I

    return v0
.end method
