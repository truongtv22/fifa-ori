.class public final enum Lcom/vk/sdk/VKSdk$LoginState;
.super Ljava/lang/Enum;
.source "VKSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/VKSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vk/sdk/VKSdk$LoginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vk/sdk/VKSdk$LoginState;

.field public static final enum LoggedIn:Lcom/vk/sdk/VKSdk$LoginState;

.field public static final enum LoggedOut:Lcom/vk/sdk/VKSdk$LoginState;

.field public static final enum Pending:Lcom/vk/sdk/VKSdk$LoginState;

.field public static final enum Unknown:Lcom/vk/sdk/VKSdk$LoginState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/vk/sdk/VKSdk$LoginState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vk/sdk/VKSdk$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vk/sdk/VKSdk$LoginState;->Unknown:Lcom/vk/sdk/VKSdk$LoginState;

    new-instance v1, Lcom/vk/sdk/VKSdk$LoginState;

    const-string v3, "LoggedOut"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/vk/sdk/VKSdk$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vk/sdk/VKSdk$LoginState;->LoggedOut:Lcom/vk/sdk/VKSdk$LoginState;

    new-instance v3, Lcom/vk/sdk/VKSdk$LoginState;

    const-string v5, "Pending"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/vk/sdk/VKSdk$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/vk/sdk/VKSdk$LoginState;->Pending:Lcom/vk/sdk/VKSdk$LoginState;

    new-instance v5, Lcom/vk/sdk/VKSdk$LoginState;

    const-string v7, "LoggedIn"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/vk/sdk/VKSdk$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/vk/sdk/VKSdk$LoginState;->LoggedIn:Lcom/vk/sdk/VKSdk$LoginState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/vk/sdk/VKSdk$LoginState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/vk/sdk/VKSdk$LoginState;->$VALUES:[Lcom/vk/sdk/VKSdk$LoginState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vk/sdk/VKSdk$LoginState;
    .locals 1

    const-class v0, Lcom/vk/sdk/VKSdk$LoginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/VKSdk$LoginState;

    return-object p0
.end method

.method public static values()[Lcom/vk/sdk/VKSdk$LoginState;
    .locals 1

    sget-object v0, Lcom/vk/sdk/VKSdk$LoginState;->$VALUES:[Lcom/vk/sdk/VKSdk$LoginState;

    invoke-virtual {v0}, [Lcom/vk/sdk/VKSdk$LoginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vk/sdk/VKSdk$LoginState;

    return-object v0
.end method
