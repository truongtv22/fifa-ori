.class public Lcom/garena/pay/android/exception/GGException;
.super Ljava/lang/Exception;
.source "GGException.java"


# instance fields
.field private final errorCode:I

.field private final errorType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/garena/pay/android/exception/GGException;->errorCode:I

    const-string v0, "A Runtime Exception has occurred"

    iput-object v0, p0, Lcom/garena/pay/android/exception/GGException;->errorType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/garena/pay/android/exception/GGException;->errorType:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lcom/garena/pay/android/exception/GGException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/garena/pay/android/exception/GGException;->errorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/exception/GGException;->errorType:Ljava/lang/String;

    return-object v0
.end method
