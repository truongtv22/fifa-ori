.class public Lcom/ea/nimble/mtx/NimbleMTXError;
.super Lcom/ea/nimble/Error;
.source "NimbleMTXError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/NimbleMTXError$Code;
    }
.end annotation


# static fields
.field public static final ERROR_DOMAIN:Ljava/lang/String; = "NimbleMTXError"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/Error;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "NimbleMTXError"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "NimbleMTXError"

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
