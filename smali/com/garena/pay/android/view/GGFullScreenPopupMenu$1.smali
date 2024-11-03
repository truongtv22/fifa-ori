.class Lcom/garena/pay/android/view/GGFullScreenPopupMenu$1;
.super Ljava/lang/Object;
.source "GGFullScreenPopupMenu.java"

# interfaces
.implements Lcom/garena/pay/android/view/GGBasePopupView$DismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->showAtCenter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/view/GGFullScreenPopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu$1;->this$0:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu$1;->this$0:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-static {v0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->access$000(Lcom/garena/pay/android/view/GGFullScreenPopupMenu;)Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;->onDismissed()V

    return-void
.end method
