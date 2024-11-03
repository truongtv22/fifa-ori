.class public Lcom/ea/nimble/INimbleGameSdk$Result;
.super Ljava/lang/Object;
.source "INimbleGameSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/INimbleGameSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/INimbleGameSdk$Result$Code;
    }
.end annotation


# instance fields
.field private code:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/INimbleGameSdk$Result$Code;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/INimbleGameSdk$Result;->code:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    const-string p1, ""

    iput-object p1, p0, Lcom/ea/nimble/INimbleGameSdk$Result;->reason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/INimbleGameSdk$Result$Code;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/INimbleGameSdk$Result;->code:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    iput-object p2, p0, Lcom/ea/nimble/INimbleGameSdk$Result;->reason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/ea/nimble/INimbleGameSdk$Result$Code;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/INimbleGameSdk$Result;->code:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/INimbleGameSdk$Result;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Lcom/ea/nimble/INimbleGameSdk$Result$Code;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/INimbleGameSdk$Result;->code:Lcom/ea/nimble/INimbleGameSdk$Result$Code;

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/INimbleGameSdk$Result;->reason:Ljava/lang/String;

    return-void
.end method
