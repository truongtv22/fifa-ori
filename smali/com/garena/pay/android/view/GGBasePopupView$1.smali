.class Lcom/garena/pay/android/view/GGBasePopupView$1;
.super Ljava/lang/Object;
.source "GGBasePopupView.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/pay/android/view/GGBasePopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/view/GGBasePopupView;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/view/GGBasePopupView;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView$1;->this$0:Lcom/garena/pay/android/view/GGBasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView$1;->this$0:Lcom/garena/pay/android/view/GGBasePopupView;

    invoke-static {v0}, Lcom/garena/pay/android/view/GGBasePopupView;->access$000(Lcom/garena/pay/android/view/GGBasePopupView;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView$1;->this$0:Lcom/garena/pay/android/view/GGBasePopupView;

    invoke-static {v0, v1}, Lcom/garena/pay/android/view/GGBasePopupView;->access$002(Lcom/garena/pay/android/view/GGBasePopupView;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/garena/pay/android/view/GGBasePopupView$1;->this$0:Lcom/garena/pay/android/view/GGBasePopupView;

    invoke-static {v0}, Lcom/garena/pay/android/view/GGBasePopupView;->access$100(Lcom/garena/pay/android/view/GGBasePopupView;)V

    return-void
.end method
