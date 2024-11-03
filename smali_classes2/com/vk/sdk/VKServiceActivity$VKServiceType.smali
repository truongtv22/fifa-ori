.class public final enum Lcom/vk/sdk/VKServiceActivity$VKServiceType;
.super Ljava/lang/Enum;
.source "VKServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/VKServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VKServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/sdk/VKServiceActivity$VKServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/sdk/VKServiceActivity$VKServiceType;

.field public static final enum Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

.field public static final enum Captcha:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

.field public static final enum Validation:Lcom/vk/sdk/VKServiceActivity$VKServiceType;


# instance fields
.field private outerCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    const/16 v1, 0x28f5

    const-string v2, "Authorization"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Authorization:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    new-instance v1, Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    const/16 v2, 0x36ff

    const-string v4, "Captcha"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Captcha:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    new-instance v2, Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    const/16 v4, 0x2cd5

    const-string v6, "Validation"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/vk/sdk/VKServiceActivity$VKServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->Validation:Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->$VALUES:[Lcom/vk/sdk/VKServiceActivity$VKServiceType;

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

    iput p3, p0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->outerCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vk/sdk/VKServiceActivity$VKServiceType;
    .locals 1

    const-class v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    return-object p0
.end method

.method public static values()[Lcom/vk/sdk/VKServiceActivity$VKServiceType;
    .locals 1

    sget-object v0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->$VALUES:[Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    invoke-virtual {v0}, [Lcom/vk/sdk/VKServiceActivity$VKServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/sdk/VKServiceActivity$VKServiceType;

    return-object v0
.end method


# virtual methods
.method public getOuterCode()I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/VKServiceActivity$VKServiceType;->outerCode:I

    return v0
.end method
