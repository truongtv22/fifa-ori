.class Lcom/garena/android/BaseTokenUpdateReceiver$1;
.super Ljava/lang/Object;
.source "BaseTokenUpdateReceiver.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/garena/android/BaseTokenUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/android/BaseTokenUpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/garena/android/BaseTokenUpdateReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/BaseTokenUpdateReceiver$1;->this$0:Lcom/garena/android/BaseTokenUpdateReceiver;

    iput-object p2, p0, Lcom/garena/android/BaseTokenUpdateReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/garena/android/BaseTokenUpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/garena/android/BaseTokenUpdateReceiver$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/garena/android/BaseTokenUpdateReceiver$1;->this$0:Lcom/garena/android/BaseTokenUpdateReceiver;

    iget-object v1, p0, Lcom/garena/android/BaseTokenUpdateReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/garena/android/BaseTokenUpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/garena/android/BaseTokenUpdateReceiver;->access$000(Lcom/garena/android/BaseTokenUpdateReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x0

    return-object v0
.end method
