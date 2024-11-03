.class Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper$1;
.super Ljava/lang/Object;
.source "GGPopupMenuDenominationWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->setInfo(Lcom/garena/pay/android/view/GGPopMenuDenominationItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper$1;->this$0:Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper$1;->this$0:Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;

    iget-object v0, v0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->ggFullScreenPopupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {v0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->getCallback()Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper$1;->this$0:Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;

    iget-object v0, v0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->ggFullScreenPopupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {v0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->getCallback()Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;->onMenuItemClick(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper$1;->this$0:Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;

    iget-object p1, p1, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;->ggFullScreenPopupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->dismiss(Z)V

    return-void
.end method
