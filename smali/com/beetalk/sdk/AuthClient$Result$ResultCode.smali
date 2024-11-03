.class final enum Lcom/beetalk/sdk/AuthClient$Result$ResultCode;
.super Ljava/lang/Enum;
.source "AuthClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/AuthClient$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/AuthClient$Result$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

.field public static final enum CANCEL:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

.field public static final enum ERROR:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

.field public static final enum SUCCESS:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const-string v1, "success"

    const-string v2, "SUCCESS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    new-instance v1, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const-string v2, "cancel"

    const-string v4, "CANCEL"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->CANCEL:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    new-instance v2, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const-string v4, "error"

    const-string v6, "ERROR"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->ERROR:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->$VALUES:[Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result$ResultCode;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/AuthClient$Result$ResultCode;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->$VALUES:[Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    return-object v0
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->value:Ljava/lang/String;

    return-object v0
.end method
