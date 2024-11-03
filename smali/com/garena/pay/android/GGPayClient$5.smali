.class synthetic Lcom/garena/pay/android/GGPayClient$5;
.super Ljava/lang/Object;
.source "GGPayClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/GGPayClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$garena$pay$android$GGPayClient$PaymentState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/garena/pay/android/GGPayClient$PaymentState;->values()[Lcom/garena/pay/android/GGPayClient$PaymentState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/garena/pay/android/GGPayClient$5;->$SwitchMap$com$garena$pay$android$GGPayClient$PaymentState:[I

    :try_start_0
    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_CHANNEL:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayClient$PaymentState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/garena/pay/android/GGPayClient$5;->$SwitchMap$com$garena$pay$android$GGPayClient$PaymentState:[I

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->CHOOSE_ITEM:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayClient$PaymentState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/garena/pay/android/GGPayClient$5;->$SwitchMap$com$garena$pay$android$GGPayClient$PaymentState:[I

    sget-object v1, Lcom/garena/pay/android/GGPayClient$PaymentState;->READY_TO_PAY:Lcom/garena/pay/android/GGPayClient$PaymentState;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayClient$PaymentState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
