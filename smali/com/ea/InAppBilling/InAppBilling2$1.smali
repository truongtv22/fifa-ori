.class Lcom/ea/InAppBilling/InAppBilling2$1;
.super Ljava/lang/Object;
.source "InAppBilling2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppBilling/InAppBilling2;->init(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/InAppBilling/InAppBilling2;

.field final synthetic val$store:I


# direct methods
.method constructor <init>(Lcom/ea/InAppBilling/InAppBilling2;I)V
    .locals 0

    iput-object p1, p0, Lcom/ea/InAppBilling/InAppBilling2$1;->this$0:Lcom/ea/InAppBilling/InAppBilling2;

    iput p2, p0, Lcom/ea/InAppBilling/InAppBilling2$1;->val$store:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/ea/InAppBilling/Store;

    invoke-direct {v0}, Lcom/ea/InAppBilling/Store;-><init>()V

    sput-object v0, Lcom/ea/InAppBilling/InAppBilling2;->mStore:Lcom/ea/InAppBilling/Store;

    return-void
.end method
