.class public Lcom/beetalk/sdk/AuthClient$Result;
.super Ljava/lang/Object;
.source "AuthClient.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/AuthClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/AuthClient$Result$ResultCode;
    }
.end annotation


# static fields
.field public static final NO_ERROR:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final errorCode:I

.field final errorMessage:Ljava/lang/String;

.field final openId:Ljava/lang/String;

.field final platform:I

.field final request:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

.field final resultCode:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

.field final token:Lcom/beetalk/sdk/data/AuthToken;


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/AuthClient$Result$ResultCode;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/beetalk/sdk/AuthClient$Result;->resultCode:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    iput-object p3, p0, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    iput-object p4, p0, Lcom/beetalk/sdk/AuthClient$Result;->errorMessage:Ljava/lang/String;

    iput p5, p0, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient$Result;->request:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    iput-object p6, p0, Lcom/beetalk/sdk/AuthClient$Result;->openId:Ljava/lang/String;

    iput p7, p0, Lcom/beetalk/sdk/AuthClient$Result;->platform:I

    return-void
.end method

.method static createCancelResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 9

    new-instance v8, Lcom/beetalk/sdk/AuthClient$Result;

    sget-object v2, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->CANCEL:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/beetalk/sdk/AuthClient$Result;-><init>(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/AuthClient$Result$ResultCode;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v8
.end method

.method static createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;I)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0, v0, p1}, Lcom/beetalk/sdk/AuthClient$Result;->createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;

    move-result-object p0

    return-object p0
.end method

.method static createErrorResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Ljava/lang/String;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, ": "

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Lcom/beetalk/sdk/AuthClient$Result;

    sget-object v3, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->ERROR:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p0

    move v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/beetalk/sdk/AuthClient$Result;-><init>(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/AuthClient$Result$ResultCode;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;ILjava/lang/String;I)V

    return-object p1
.end method

.method static createTokenResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/data/AuthToken;)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 9

    new-instance v8, Lcom/beetalk/sdk/AuthClient$Result;

    sget-object v2, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/beetalk/sdk/AuthClient$Result;-><init>(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/AuthClient$Result$ResultCode;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v8
.end method

.method static createTokenResult(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;I)Lcom/beetalk/sdk/AuthClient$Result;
    .locals 9

    new-instance v8, Lcom/beetalk/sdk/AuthClient$Result;

    sget-object v2, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/beetalk/sdk/AuthClient$Result;-><init>(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;Lcom/beetalk/sdk/AuthClient$Result$ResultCode;Lcom/beetalk/sdk/data/AuthToken;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v8
.end method

.method public static isError(Lcom/beetalk/sdk/AuthClient$Result$ResultCode;)Z
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/AuthClient$Result$ResultCode;->SUCCESS:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result{resultCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->resultCode:Lcom/beetalk/sdk/AuthClient$Result$ResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->token:Lcom/beetalk/sdk/data/AuthToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", openId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->request:Lcom/beetalk/sdk/AuthClient$AuthClientRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/beetalk/sdk/AuthClient$Result;->platform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
