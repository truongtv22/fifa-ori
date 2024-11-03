.class public Lcom/ea/InAppBilling/InAppBilling2;
.super Ljava/lang/Object;
.source "InAppBilling2.java"


# static fields
.field private static SENDER_ID:Ljava/lang/String; = ""

.field public static gInstanceCount:I

.field public static mActivity:Landroid/app/Activity;

.field public static mContext:Landroid/content/Context;

.field public static mStore:Lcom/ea/InAppBilling/Store;

.field public static mViewGroup:Landroid/view/ViewGroup;


# instance fields
.field public mInstanceID:I

.field public mLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/InAppBilling/InAppBilling2;->mInstanceID:I

    return-void
.end method

.method public static native OnConsumed(ILjava/lang/String;)V
.end method

.method public static native OnPurchaseFailed(IILjava/lang/String;)V
.end method

.method public static native OnPurchaseSucceeded(ILjava/lang/String;)V
.end method

.method public static native OnReceivedPaymentSeq(ILjava/lang/String;)V
.end method

.method public static Shutdown()V
    .locals 0

    invoke-static {}, Lcom/ea/InAppBilling/InAppBilling2;->ShutdownNativeImpl()V

    return-void
.end method

.method private static native ShutdownNativeImpl()V
.end method

.method public static Startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    sput-object p0, Lcom/ea/InAppBilling/InAppBilling2;->mActivity:Landroid/app/Activity;

    sput-object p1, Lcom/ea/InAppBilling/InAppBilling2;->mViewGroup:Landroid/view/ViewGroup;

    sput-object p0, Lcom/ea/InAppBilling/InAppBilling2;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ea/InAppBilling/InAppBilling2;->StartupNativeImpl()V

    return-void
.end method

.method private static native StartupNativeImpl()V
.end method


# virtual methods
.method public InAppBilling2()V
    .locals 0

    return-void
.end method

.method public consume(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ea/InAppBilling/InAppBilling2;->mStore:Lcom/ea/InAppBilling/Store;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ea/InAppBilling/Store;->Consume(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    sget-object v0, Lcom/ea/InAppBilling/InAppBilling2;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ea/InAppBilling/InAppBilling2$2;

    invoke-direct {v1, p0}, Lcom/ea/InAppBilling/InAppBilling2$2;-><init>(Lcom/ea/InAppBilling/InAppBilling2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public init(IZ)V
    .locals 2

    sget v0, Lcom/ea/InAppBilling/InAppBilling2;->gInstanceCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/ea/InAppBilling/InAppBilling2;->gInstanceCount:I

    iput v0, p0, Lcom/ea/InAppBilling/InAppBilling2;->mInstanceID:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InAppBilling2"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/ea/InAppBilling/InAppBilling2;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/ea/InAppBilling/InAppBilling2$1;

    invoke-direct {v0, p0, p1}, Lcom/ea/InAppBilling/InAppBilling2$1;-><init>(Lcom/ea/InAppBilling/InAppBilling2;I)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "InAppBilling2"

    const-string v1, "onActivityResult is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ea/InAppBilling/InAppBilling2;->mStore:Lcom/ea/InAppBilling/Store;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ea/InAppBilling/Store;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ea/InAppBilling/InAppBilling2;->mStore:Lcom/ea/InAppBilling/Store;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ea/InAppBilling/Store;->Purchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unCompletedPurchase(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ea/InAppBilling/InAppBilling2;->mStore:Lcom/ea/InAppBilling/Store;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ea/InAppBilling/Store;->UnCompletedPurchase(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
