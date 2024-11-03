.class public Lcom/beetalk/sdk/data/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/data/Result$ResultCode;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x64b7d52919672bc8L


# instance fields
.field private final errorCode:Ljava/lang/Integer;

.field private final errorMessage:Ljava/lang/String;

.field private final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lcom/garena/pay/android/GGPayRequest;

.field private final resultCode:Lcom/beetalk/sdk/data/Result$ResultCode;


# direct methods
.method public constructor <init>(Lcom/garena/pay/android/GGPayRequest;Lcom/beetalk/sdk/data/Result$ResultCode;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/pay/android/GGPayRequest;",
            "Lcom/beetalk/sdk/data/Result$ResultCode;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/data/Result;->request:Lcom/garena/pay/android/GGPayRequest;

    iput-object p2, p0, Lcom/beetalk/sdk/data/Result;->resultCode:Lcom/beetalk/sdk/data/Result$ResultCode;

    iput-object p3, p0, Lcom/beetalk/sdk/data/Result;->errorMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/beetalk/sdk/data/Result;->errorCode:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/beetalk/sdk/data/Result;->extras:Ljava/util/Map;

    return-void
.end method

.method public static createCancelResult(Lcom/garena/pay/android/GGPayRequest;Ljava/lang/String;)Lcom/beetalk/sdk/data/Result;
    .locals 7

    new-instance v6, Lcom/beetalk/sdk/data/Result;

    sget-object v2, Lcom/beetalk/sdk/data/Result$ResultCode;->CANCEL:Lcom/beetalk/sdk/data/Result$ResultCode;

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/data/Result;-><init>(Lcom/garena/pay/android/GGPayRequest;Lcom/beetalk/sdk/data/Result$ResultCode;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    return-object v6
.end method

.method public static createErrorResult(Lcom/garena/pay/android/GGPayRequest;Lcom/garena/pay/android/GGErrorCode;Ljava/lang/String;)Lcom/beetalk/sdk/data/Result;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, ": "

    invoke-static {p2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance p2, Lcom/beetalk/sdk/data/Result;

    sget-object v3, Lcom/beetalk/sdk/data/Result$ResultCode;->ERROR:Lcom/beetalk/sdk/data/Result$ResultCode;

    invoke-virtual {p1}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/beetalk/sdk/data/Result;-><init>(Lcom/garena/pay/android/GGPayRequest;Lcom/beetalk/sdk/data/Result$ResultCode;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    return-object p2
.end method

.method public static createSuccessResult(Lcom/garena/pay/android/GGPayRequest;Ljava/util/Map;)Lcom/beetalk/sdk/data/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/garena/pay/android/GGPayRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/beetalk/sdk/data/Result;"
        }
    .end annotation

    new-instance v6, Lcom/beetalk/sdk/data/Result;

    sget-object v2, Lcom/beetalk/sdk/data/Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/data/Result$ResultCode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/beetalk/sdk/data/Result;-><init>(Lcom/garena/pay/android/GGPayRequest;Lcom/beetalk/sdk/data/Result$ResultCode;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    return-object v6
.end method

.method public static isError(Lcom/beetalk/sdk/data/Result$ResultCode;)Z
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/data/Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/data/Result$ResultCode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/beetalk/sdk/data/Result;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/Result;->errorCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/Result;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/garena/pay/android/GGPayRequest;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/Result;->request:Lcom/garena/pay/android/GGPayRequest;

    return-object v0
.end method

.method public getResultCode()Lcom/beetalk/sdk/data/Result$ResultCode;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/data/Result;->resultCode:Lcom/beetalk/sdk/data/Result$ResultCode;

    return-object v0
.end method
