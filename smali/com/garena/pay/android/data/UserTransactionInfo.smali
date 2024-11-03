.class public Lcom/garena/pay/android/data/UserTransactionInfo;
.super Ljava/lang/Object;
.source "UserTransactionInfo.java"

# interfaces
.implements Lcom/beetalk/sdk/JsonSerializable;


# instance fields
.field public final accountId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field public final currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field public final region:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "region"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0, v0, v0}, Lcom/garena/pay/android/data/UserTransactionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/pay/android/data/UserTransactionInfo;->accountId:Ljava/lang/String;

    iput-object p2, p0, Lcom/garena/pay/android/data/UserTransactionInfo;->region:Ljava/lang/String;

    iput-object p3, p0, Lcom/garena/pay/android/data/UserTransactionInfo;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic toJson()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/beetalk/sdk/JsonSerializable$-CC;->$default$toJson(Lcom/beetalk/sdk/JsonSerializable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
