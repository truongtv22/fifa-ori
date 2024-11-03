.class public final enum Lcom/beetalk/sdk/line/LinePostItem$PostType;
.super Ljava/lang/Enum;
.source "LinePostItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/line/LinePostItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/line/LinePostItem$PostType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/line/LinePostItem$PostType;

.field public static final enum IMAGE:Lcom/beetalk/sdk/line/LinePostItem$PostType;

.field public static final enum TEXT_LINK:Lcom/beetalk/sdk/line/LinePostItem$PostType;

.field public static final enum VIDEO:Lcom/beetalk/sdk/line/LinePostItem$PostType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/line/LinePostItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;->IMAGE:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    new-instance v1, Lcom/beetalk/sdk/line/LinePostItem$PostType;

    const-string v3, "TEXT_LINK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/beetalk/sdk/line/LinePostItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/beetalk/sdk/line/LinePostItem$PostType;->TEXT_LINK:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    new-instance v3, Lcom/beetalk/sdk/line/LinePostItem$PostType;

    const-string v5, "VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/beetalk/sdk/line/LinePostItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/beetalk/sdk/line/LinePostItem$PostType;->VIDEO:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/beetalk/sdk/line/LinePostItem$PostType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/beetalk/sdk/line/LinePostItem$PostType;->$VALUES:[Lcom/beetalk/sdk/line/LinePostItem$PostType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/line/LinePostItem$PostType;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/line/LinePostItem$PostType;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/line/LinePostItem$PostType;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/line/LinePostItem$PostType;->$VALUES:[Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/line/LinePostItem$PostType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/line/LinePostItem$PostType;

    return-object v0
.end method
