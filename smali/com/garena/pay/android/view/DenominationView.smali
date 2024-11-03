.class public Lcom/garena/pay/android/view/DenominationView;
.super Ljava/lang/Object;
.source "DenominationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/view/DenominationView$DenominationCallback;
    }
.end annotation


# static fields
.field public static callback:Lcom/garena/pay/android/view/DenominationView$DenominationCallback;

.field private static popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Z)V
    .locals 1

    sget-object v0, Lcom/garena/pay/android/view/DenominationView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->dismiss(Z)V

    const/4 p0, 0x0

    sput-object p0, Lcom/garena/pay/android/view/DenominationView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    :cond_0
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/garena/pay/android/data/GGPayment$Denomination;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/garena/pay/android/view/DenominationView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    sget v1, Lcom/garena/msdk/R$string;->s_picker_header_text:I

    invoke-static {p0, v1}, Lcom/garena/pay/android/helper/Utils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->setHeaderText(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/garena/pay/android/data/GGPayment$Denomination;

    new-instance v3, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;

    invoke-direct {v3}, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;-><init>()V

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->keyCode:Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getPrice()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->btnText:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->isInPromotion()Z

    move-result v5

    iput-boolean v5, v3, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->isPromotion:Z

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getPromoPoints()I

    move-result v5

    if-lez v5, :cond_0

    sget v5, Lcom/garena/msdk/R$string;->txt_bonus:I

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/garena/pay/android/data/GGPayment$Denomination;->getPromoPoints()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;->subTitle:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/garena/pay/android/view/DenominationView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {v1, v3}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->addMenuItem(Lcom/garena/pay/android/view/GGPopMenuItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/garena/pay/android/view/DenominationView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    new-instance p2, Lcom/garena/pay/android/view/DenominationView$1;

    invoke-direct {p2, p1}, Lcom/garena/pay/android/view/DenominationView$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->setCallback(Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;)V

    return-void
.end method

.method public static setCallback(Lcom/garena/pay/android/view/DenominationView$DenominationCallback;)V
    .locals 0

    sput-object p0, Lcom/garena/pay/android/view/DenominationView;->callback:Lcom/garena/pay/android/view/DenominationView$DenominationCallback;

    return-void
.end method

.method public static showAtCenter(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/garena/pay/android/view/DenominationView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->setFooterVisibility(I)V

    sget-object v0, Lcom/garena/pay/android/view/DenominationView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {v0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->beforeShow()V

    sget-object v0, Lcom/garena/pay/android/view/DenominationView;->popupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {v0, p0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->showAtCenter(Landroid/view/View;)V

    return-void
.end method
