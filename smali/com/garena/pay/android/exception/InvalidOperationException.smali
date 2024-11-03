.class public Lcom/garena/pay/android/exception/InvalidOperationException;
.super Ljava/lang/RuntimeException;
.source "InvalidOperationException.java"


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/garena/pay/android/exception/InvalidOperationException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/exception/InvalidOperationException;->message:Ljava/lang/String;

    return-object v0
.end method
