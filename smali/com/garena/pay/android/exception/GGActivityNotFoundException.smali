.class public Lcom/garena/pay/android/exception/GGActivityNotFoundException;
.super Lcom/garena/pay/android/exception/GGException;
.source "GGActivityNotFoundException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Activity Not Found."

    invoke-direct {p0, v0}, Lcom/garena/pay/android/exception/GGException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/pay/android/exception/GGException;-><init>(Ljava/lang/String;)V

    return-void
.end method
