.class public Lcom/garena/pay/android/view/GatewayView;
.super Ljava/lang/Object;
.source "GatewayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;
    }
.end annotation


# static fields
.field public static callback:Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;

.field private static popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Z)V
    .locals 1

    sget-object v0, Lcom/garena/pay/android/view/GatewayView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/garena/pay/android/GGPayRequestHandler;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/garena/pay/android/view/GatewayView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->dismiss(Z)V

    :cond_0
    new-instance v0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-direct {v0, p0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/garena/pay/android/view/GatewayView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    sget v1, Lcom/garena/msdk/R$string;->txt_choose_provider:I

    invoke-static {p0, v1}, Lcom/garena/pay/android/helper/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->setHeaderText(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/GGPayRequestHandler;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayRequestHandler;->getIconUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayRequestHandler;->getPaymentChannel()Lcom/garena/pay/android/data/GGPayment$PaymentChannel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/garena/pay/android/data/GGPayment$PaymentChannel;->getFlag()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    sget v3, Lcom/garena/msdk/R$string;->payment_item_new_text:I

    invoke-static {p0, v3}, Lcom/garena/pay/android/helper/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v7, v3

    goto :goto_2

    :cond_1
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    sget v3, Lcom/garena/msdk/R$string;->payment_item_hot_text:I

    invoke-static {p0, v3}, Lcom/garena/pay/android/helper/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    sget v3, Lcom/garena/msdk/R$string;->payment_item_sale_text:I

    invoke-static {p0, v3}, Lcom/garena/pay/android/helper/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, ""

    goto :goto_1

    :goto_2
    invoke-virtual {v1, p0}, Lcom/garena/pay/android/GGPayRequestHandler;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/garena/pay/android/helper/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v3, Lcom/garena/pay/android/view/GatewayView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayRequestHandler;->getIconUri()Ljava/lang/String;

    move-result-object v5

    sget v1, Lcom/garena/msdk/R$string;->text_pay:I

    invoke-static {p0, v1}, Lcom/garena/pay/android/helper/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->addMenuItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/garena/pay/android/view/GatewayView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {v1}, Lcom/garena/pay/android/GGPayRequestHandler;->getImageResId()I

    move-result v5

    sget v1, Lcom/garena/msdk/R$string;->text_pay:I

    invoke-static {p0, v1}, Lcom/garena/pay/android/helper/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->addMenuItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/garena/pay/android/view/GatewayView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    new-instance v0, Lcom/garena/pay/android/view/GatewayView$1;

    invoke-direct {v0, p1}, Lcom/garena/pay/android/view/GatewayView$1;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p0, v0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->setCallback(Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;)V

    return-void
.end method

.method public static setCallback(Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;)V
    .locals 0

    sput-object p0, Lcom/garena/pay/android/view/GatewayView;->callback:Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;

    return-void
.end method

.method public static showAtCenter(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/garena/pay/android/view/GatewayView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->setFooterVisibility(I)V

    sget-object v0, Lcom/garena/pay/android/view/GatewayView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {v0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->beforeShow()V

    sget-object v0, Lcom/garena/pay/android/view/GatewayView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {v0, p0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->showAtCenter(Landroid/view/View;)V

    return-void
.end method
