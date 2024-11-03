.class Lcom/garena/android/gpns/logic/ServiceController$9;
.super Lcom/garena/android/gpns/utility/AppLogger$NetworkThreadExceptionHandler;
.source "ServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/logic/ServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/android/gpns/logic/ServiceController;


# direct methods
.method constructor <init>(Lcom/garena/android/gpns/logic/ServiceController;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$9;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-direct {p0}, Lcom/garena/android/gpns/utility/AppLogger$NetworkThreadExceptionHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/garena/android/gpns/utility/AppLogger$NetworkThreadExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$9;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$900(Lcom/garena/android/gpns/logic/ServiceController;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/garena/android/gpns/logic/ServiceController;->access$500(Lcom/garena/android/gpns/logic/ServiceController;I)V

    return-void
.end method
