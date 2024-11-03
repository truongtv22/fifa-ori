.class public final synthetic Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Landroid/webkit/WebView;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda1;->f$0:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda1;->f$0:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p1}, Lcom/beetalk/sdk/networking/WebViewExtsKt;->$r8$lambda$1a_VxnU5JD5J6iJWgdaK2RC5M8c(Landroid/webkit/WebView;Lkotlin/jvm/functions/Function1;Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
