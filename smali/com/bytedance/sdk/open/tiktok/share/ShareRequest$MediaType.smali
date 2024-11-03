.class public final enum Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;
.super Ljava/lang/Enum;
.source "ShareRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/open/tiktok/share/ShareRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

.field public static final enum IMAGE:Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

.field public static final enum VIDEO:Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;->IMAGE:Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    new-instance v1, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;->VIDEO:Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;->$VALUES:[Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;->$VALUES:[Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/open/tiktok/share/ShareRequest$MediaType;

    return-object v0
.end method
