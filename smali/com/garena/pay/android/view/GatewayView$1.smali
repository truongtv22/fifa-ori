.class Lcom/garena/pay/android/view/GatewayView$1;
.super Ljava/lang/Object;
.source "GatewayView.java"

# interfaces
.implements Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/view/GatewayView;->initialize(Landroid/app/Activity;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handlerList:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/GatewayView$1;->val$handlerList:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 1

    sget-object v0, Lcom/garena/pay/android/view/GatewayView;->callback:Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;

    invoke-interface {v0}, Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;->onDismissed()V

    return-void
.end method

.method public onMenuItemClick(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/garena/pay/android/view/GatewayView;->callback:Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/garena/pay/android/view/GatewayView;->callback:Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;

    iget-object v1, p0, Lcom/garena/pay/android/view/GatewayView$1;->val$handlerList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/garena/pay/android/GGPayRequestHandler;

    invoke-interface {v0, p1}, Lcom/garena/pay/android/view/GatewayView$GatewayViewCallback;->onGatewayChosen(Lcom/garena/pay/android/GGPayRequestHandler;)V

    :cond_0
    return-void
.end method
