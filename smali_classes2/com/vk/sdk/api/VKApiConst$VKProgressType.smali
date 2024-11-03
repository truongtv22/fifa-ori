.class final enum Lcom/vk/sdk/api/VKApiConst$VKProgressType;
.super Ljava/lang/Enum;
.source "VKApiConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/VKApiConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VKProgressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/sdk/api/VKApiConst$VKProgressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/sdk/api/VKApiConst$VKProgressType;

.field public static final enum VKProgressTypeDownload:Lcom/vk/sdk/api/VKApiConst$VKProgressType;

.field public static final enum VKProgressTypeUpload:Lcom/vk/sdk/api/VKApiConst$VKProgressType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vk/sdk/api/VKApiConst$VKProgressType;

    const-string v1, "VKProgressTypeUpload"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/api/VKApiConst$VKProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/sdk/api/VKApiConst$VKProgressType;->VKProgressTypeUpload:Lcom/vk/sdk/api/VKApiConst$VKProgressType;

    new-instance v1, Lcom/vk/sdk/api/VKApiConst$VKProgressType;

    const-string v3, "VKProgressTypeDownload"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/vk/sdk/api/VKApiConst$VKProgressType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/sdk/api/VKApiConst$VKProgressType;->VKProgressTypeDownload:Lcom/vk/sdk/api/VKApiConst$VKProgressType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/vk/sdk/api/VKApiConst$VKProgressType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/vk/sdk/api/VKApiConst$VKProgressType;->$VALUES:[Lcom/vk/sdk/api/VKApiConst$VKProgressType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vk/sdk/api/VKApiConst$VKProgressType;
    .locals 1

    const-class v0, Lcom/vk/sdk/api/VKApiConst$VKProgressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/VKApiConst$VKProgressType;

    return-object p0
.end method

.method public static values()[Lcom/vk/sdk/api/VKApiConst$VKProgressType;
    .locals 1

    sget-object v0, Lcom/vk/sdk/api/VKApiConst$VKProgressType;->$VALUES:[Lcom/vk/sdk/api/VKApiConst$VKProgressType;

    invoke-virtual {v0}, [Lcom/vk/sdk/api/VKApiConst$VKProgressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/sdk/api/VKApiConst$VKProgressType;

    return-object v0
.end method
