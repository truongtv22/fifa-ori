.class public final enum Lcom/vk/sdk/api/VKRequest$VKProgressType;
.super Ljava/lang/Enum;
.source "VKRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/VKRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VKProgressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/sdk/api/VKRequest$VKProgressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/sdk/api/VKRequest$VKProgressType;

.field public static final enum Download:Lcom/vk/sdk/api/VKRequest$VKProgressType;

.field public static final enum Upload:Lcom/vk/sdk/api/VKRequest$VKProgressType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vk/sdk/api/VKRequest$VKProgressType;

    const-string v1, "Download"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/api/VKRequest$VKProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/sdk/api/VKRequest$VKProgressType;->Download:Lcom/vk/sdk/api/VKRequest$VKProgressType;

    new-instance v1, Lcom/vk/sdk/api/VKRequest$VKProgressType;

    const-string v3, "Upload"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/vk/sdk/api/VKRequest$VKProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/sdk/api/VKRequest$VKProgressType;->Upload:Lcom/vk/sdk/api/VKRequest$VKProgressType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/vk/sdk/api/VKRequest$VKProgressType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/vk/sdk/api/VKRequest$VKProgressType;->$VALUES:[Lcom/vk/sdk/api/VKRequest$VKProgressType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vk/sdk/api/VKRequest$VKProgressType;
    .locals 1

    const-class v0, Lcom/vk/sdk/api/VKRequest$VKProgressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/VKRequest$VKProgressType;

    return-object p0
.end method

.method public static values()[Lcom/vk/sdk/api/VKRequest$VKProgressType;
    .locals 1

    sget-object v0, Lcom/vk/sdk/api/VKRequest$VKProgressType;->$VALUES:[Lcom/vk/sdk/api/VKRequest$VKProgressType;

    invoke-virtual {v0}, [Lcom/vk/sdk/api/VKRequest$VKProgressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/sdk/api/VKRequest$VKProgressType;

    return-object v0
.end method
