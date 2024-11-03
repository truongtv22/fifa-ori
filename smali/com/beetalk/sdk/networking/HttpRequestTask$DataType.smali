.class final enum Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;
.super Ljava/lang/Enum;
.source "HttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/HttpRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

.field public static final enum JSON:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

.field public static final enum MAP:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    const-string v1, "MAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;->MAP:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    new-instance v1, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    const-string v3, "JSON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;->JSON:Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;->$VALUES:[Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;->$VALUES:[Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/networking/HttpRequestTask$DataType;

    return-object v0
.end method
