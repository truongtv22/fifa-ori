.class Lcom/garena/pay/android/view/WebDialog$3;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/pay/android/view/WebDialog;->setUpWebView(I)V
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

    iput-object p1, p0, Lcom/garena/pay/android/view/WebDialog$3;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iget-object p2, p0, Lcom/garena/pay/android/view/WebDialog$3;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-static {p2}, Lcom/garena/pay/android/view/WebDialog;->access$100(Lcom/garena/pay/android/view/WebDialog;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/garena/pay/android/view/WebDialog$3;->this$0:Lcom/garena/pay/android/view/WebDialog;

    invoke-static {p1}, Lcom/garena/pay/android/view/WebDialog;->access$100(Lcom/garena/pay/android/view/WebDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
