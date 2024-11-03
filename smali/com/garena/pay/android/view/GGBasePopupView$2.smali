.class Lcom/garena/pay/android/view/GGBasePopupView$2;
.super Ljava/lang/Object;
.source "GGBasePopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/view/GGBasePopupView;-><init>(Landroid/view/View;ZZ)V
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

    iput-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView$2;->this$0:Lcom/garena/pay/android/view/GGBasePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/garena/pay/android/view/GGBasePopupView$2;->this$0:Lcom/garena/pay/android/view/GGBasePopupView;

    invoke-virtual {p1}, Lcom/garena/pay/android/view/GGBasePopupView;->dismiss()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
