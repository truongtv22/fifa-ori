.class public final enum Lcom/garena/pay/android/data/TransactionStatus;
.super Ljava/lang/Enum;
.source "TransactionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/garena/pay/android/data/TransactionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum CLOSED:Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum CREATED:Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum OPENED:Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum OPENING:Lcom/garena/pay/android/data/TransactionStatus;

.field public static final enum PROCESSED:Lcom/garena/pay/android/data/TransactionStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v1, 0x1771

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CREATED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/garena/pay/android/data/TransactionStatus;->CREATED:Lcom/garena/pay/android/data/TransactionStatus;

    new-instance v1, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v2, 0x1772

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "OPENING"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v1, Lcom/garena/pay/android/data/TransactionStatus;->OPENING:Lcom/garena/pay/android/data/TransactionStatus;

    new-instance v2, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v4, 0x1773

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "OPENED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lcom/garena/pay/android/data/TransactionStatus;->OPENED:Lcom/garena/pay/android/data/TransactionStatus;

    new-instance v4, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v6, 0x1774

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "PROCESSED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v4, Lcom/garena/pay/android/data/TransactionStatus;->PROCESSED:Lcom/garena/pay/android/data/TransactionStatus;

    new-instance v6, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v8, 0x1775

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "CLOSED"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v6, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED:Lcom/garena/pay/android/data/TransactionStatus;

    new-instance v8, Lcom/garena/pay/android/data/TransactionStatus;

    const/16 v10, 0x1776

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "CLOSED_WITH_ERROR"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/garena/pay/android/data/TransactionStatus;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v8, Lcom/garena/pay/android/data/TransactionStatus;->CLOSED_WITH_ERROR:Lcom/garena/pay/android/data/TransactionStatus;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/garena/pay/android/data/TransactionStatus;

    aput-object v0, v10, v3

    aput-object v1, v10, v5

    aput-object v2, v10, v7

    aput-object v4, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    sput-object v10, Lcom/garena/pay/android/data/TransactionStatus;->$VALUES:[Lcom/garena/pay/android/data/TransactionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/garena/pay/android/data/TransactionStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/garena/pay/android/data/TransactionStatus;
    .locals 1

    const-class v0, Lcom/garena/pay/android/data/TransactionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/garena/pay/android/data/TransactionStatus;

    return-object p0
.end method

.method public static values()[Lcom/garena/pay/android/data/TransactionStatus;
    .locals 1

    sget-object v0, Lcom/garena/pay/android/data/TransactionStatus;->$VALUES:[Lcom/garena/pay/android/data/TransactionStatus;

    invoke-virtual {v0}, [Lcom/garena/pay/android/data/TransactionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/garena/pay/android/data/TransactionStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/garena/pay/android/data/TransactionStatus;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
