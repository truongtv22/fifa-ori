.class final enum Lcom/garena/pay/android/GGPayClient$PaymentState;
.super Ljava/lang/Enum;
.source "GGPayClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/GGPayClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PaymentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/garena/pay/android/GGPayClient$PaymentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/garena/pay/android/GGPayClient$PaymentState;

.field public static final enum CHOOSE_CHANNEL:Lcom/garena/pay/android/GGPayClient$PaymentState;

.field public static final enum CHOOSE_ITEM:Lcom/garena/pay/android/GGPayClient$PaymentState;

.field public static final enum DONE:Lcom/garena/pay/android/GGPayClient$PaymentState;

.field public static final enum INIT:Lcom/garena/pay/android/GGPayClient$PaymentState;

.field public static final enum READY_TO_PAY:Lcom/garena/pay/android/GGPayClient$PaymentState;


# instance fields
.field private final step:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/garena/pay/android/GGPayClient$PaymentState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/garena/pay/android/GGPayClient$PaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->INIT:Lcom/garena/pay/android/GGPayClient$PaymentState;

    new-instance v1, Lcom/garena/pay/android/GGPayClient$PaymentState;

    const-string v3, "CHOOSE_CHANNEL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/garena/pay/android/GGPayClient$PaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_CHANNEL:Lcom/garena/pay/android/GGPayClient$PaymentState;

    new-instance v3, Lcom/garena/pay/android/GGPayClient$PaymentState;

    const-string v5, "CHOOSE_ITEM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/garena/pay/android/GGPayClient$PaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_ITEM:Lcom/garena/pay/android/GGPayClient$PaymentState;

    new-instance v5, Lcom/garena/pay/android/GGPayClient$PaymentState;

    const-string v7, "READY_TO_PAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/garena/pay/android/GGPayClient$PaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/garena/pay/android/GGPayClient$PaymentState;->READY_TO_PAY:Lcom/garena/pay/android/GGPayClient$PaymentState;

    new-instance v7, Lcom/garena/pay/android/GGPayClient$PaymentState;

    const-string v9, "DONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/garena/pay/android/GGPayClient$PaymentState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/garena/pay/android/GGPayClient$PaymentState;->DONE:Lcom/garena/pay/android/GGPayClient$PaymentState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/garena/pay/android/GGPayClient$PaymentState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/garena/pay/android/GGPayClient$PaymentState;->$VALUES:[Lcom/garena/pay/android/GGPayClient$PaymentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/garena/pay/android/GGPayClient$PaymentState;->step:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 1

    const-class v0, Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/garena/pay/android/GGPayClient$PaymentState;

    return-object p0
.end method

.method public static values()[Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 1

    sget-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->$VALUES:[Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-virtual {v0}, [Lcom/garena/pay/android/GGPayClient$PaymentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/garena/pay/android/GGPayClient$PaymentState;

    return-object v0
.end method


# virtual methods
.method public getStep()I
    .locals 1

    iget v0, p0, Lcom/garena/pay/android/GGPayClient$PaymentState;->step:I

    return v0
.end method

.method public previousStep()Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 1

    sget-object v0, Lcom/garena/pay/android/GGPayClient$PaymentState;->INIT:Lcom/garena/pay/android/GGPayClient$PaymentState;

    if-ne p0, v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/garena/pay/android/GGPayClient$PaymentState;->getStep()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/garena/pay/android/GGPayClient$PaymentState;->stateOfValue(I)Lcom/garena/pay/android/GGPayClient$PaymentState;

    move-result-object v0

    return-object v0
.end method

.method public stateOfValue(I)Lcom/garena/pay/android/GGPayClient$PaymentState;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/garena/pay/android/GGPayClient$PaymentState;->values()[Lcom/garena/pay/android/GGPayClient$PaymentState;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/garena/pay/android/GGPayClient$PaymentState;->DONE:Lcom/garena/pay/android/GGPayClient$PaymentState;

    return-object p1
.end method
