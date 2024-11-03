.class Lcom/garena/pay/android/view/WebDialog$2;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/view/WebDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/pay/android/view/WebDialog;


# direct methods
.method constructor <init>(Lcom/garena/pay/android/view/WebDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/WebDialog$2;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$2;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-static {p1}, Lcom/garena/pay/android/view/WebDialog;->access$000(Lcom/garena/pay/android/view/WebDialog;)V

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$2;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-virtual {p1}, Lcom/garena/pay/android/view/WebDialog;->dismiss()V

    return-void
.end method
