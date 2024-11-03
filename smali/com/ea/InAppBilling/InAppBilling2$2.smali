.class Lcom/ea/InAppBilling/InAppBilling2$2;
.super Ljava/lang/Object;
.source "InAppBilling2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/InAppBilling/InAppBilling2;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/InAppBilling/InAppBilling2;


# direct methods
.method constructor <init>(Lcom/ea/InAppBilling/InAppBilling2;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/InAppBilling/InAppBilling2$2;->this$0:Lcom/ea/InAppBilling/InAppBilling2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/ea/InAppBilling/InAppBilling2;->mStore:Lcom/ea/InAppBilling/Store;

    invoke-virtual {v0}, Lcom/ea/InAppBilling/Store;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/ea/InAppBilling/InAppBilling2;->mStore:Lcom/ea/InAppBilling/Store;

    return-void
.end method
