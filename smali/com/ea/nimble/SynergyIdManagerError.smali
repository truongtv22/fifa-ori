.class public Lcom/ea/nimble/SynergyIdManagerError;
.super Lcom/ea/nimble/Error;
.source "SynergyIdManagerError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/SynergyIdManagerError$Code;
    }
.end annotation


# static fields
.field public static final ERROR_DOMAIN:Ljava/lang/String; = "NimbleSynergyIdManager"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/ea/nimble/SynergyIdManagerError$Code;Ljava/lang/String;)V
    .locals 1

    const-string v0, "NimbleSynergyIdManager"

    invoke-virtual {p1}, Lcom/ea/nimble/SynergyIdManagerError$Code;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/SynergyIdManagerError$Code;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "NimbleSynergyIdManager"

    invoke-virtual {p1}, Lcom/ea/nimble/SynergyIdManagerError$Code;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
