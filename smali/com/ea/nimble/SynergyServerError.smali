.class public Lcom/ea/nimble/SynergyServerError;
.super Lcom/ea/nimble/Error;
.source "SynergyServerError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/SynergyServerError$Code;
    }
.end annotation


# static fields
.field public static final ERROR_DOMAIN:Ljava/lang/String; = "SynergyServerError"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const-string v0, "SynergyServerError"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "SynergyServerError"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public isError(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/SynergyServerError;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
