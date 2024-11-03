.class public Lcom/ea/nimble/QA;
.super Ljava/lang/Object;
.source "QA.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
