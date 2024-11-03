.class public final enum Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;
.super Ljava/lang/Enum;
.source "HttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/HttpRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

.field public static final enum GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

.field public static final enum POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->GET:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    new-instance v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->POST:Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->$VALUES:[Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->$VALUES:[Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/networking/HttpRequestTask$RequestType;

    return-object v0
.end method
