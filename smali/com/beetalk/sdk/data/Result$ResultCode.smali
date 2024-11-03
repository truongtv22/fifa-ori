.class public final enum Lcom/beetalk/sdk/data/Result$ResultCode;
.super Ljava/lang/Enum;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/data/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/data/Result$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/data/Result$ResultCode;

.field public static final enum CANCEL:Lcom/beetalk/sdk/data/Result$ResultCode;

.field public static final enum ERROR:Lcom/beetalk/sdk/data/Result$ResultCode;

.field public static final enum SUCCESS:Lcom/beetalk/sdk/data/Result$ResultCode;


# instance fields
.field private final value:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/beetalk/sdk/data/Result$ResultCode;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/beetalk/sdk/data/Result$ResultCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/beetalk/sdk/data/Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/data/Result$ResultCode;

    new-instance v2, Lcom/beetalk/sdk/data/Result$ResultCode;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "CANCEL"

    invoke-direct {v2, v5, v3, v4}, Lcom/beetalk/sdk/data/Result$ResultCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/beetalk/sdk/data/Result$ResultCode;->CANCEL:Lcom/beetalk/sdk/data/Result$ResultCode;

    new-instance v4, Lcom/beetalk/sdk/data/Result$ResultCode;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ERROR"

    invoke-direct {v4, v7, v5, v6}, Lcom/beetalk/sdk/data/Result$ResultCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v4, Lcom/beetalk/sdk/data/Result$ResultCode;->ERROR:Lcom/beetalk/sdk/data/Result$ResultCode;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/beetalk/sdk/data/Result$ResultCode;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/beetalk/sdk/data/Result$ResultCode;->$VALUES:[Lcom/beetalk/sdk/data/Result$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/beetalk/sdk/data/Result$ResultCode;->value:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/data/Result$ResultCode;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/data/Result$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/data/Result$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/data/Result$ResultCode;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/data/Result$ResultCode;->$VALUES:[Lcom/beetalk/sdk/data/Result$ResultCode;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/data/Result$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/data/Result$ResultCode;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/Result$ResultCode;->value:Ljava/lang/Integer;

    return-object v0
.end method
