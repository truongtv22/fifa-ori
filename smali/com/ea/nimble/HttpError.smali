.class public Lcom/ea/nimble/HttpError;
.super Lcom/ea/nimble/Error;
.source "HttpError.java"


# static fields
.field public static final ERROR_DOMAIN:Ljava/lang/String; = "HttpError"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const-string v0, "HttpError"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "HttpError"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
