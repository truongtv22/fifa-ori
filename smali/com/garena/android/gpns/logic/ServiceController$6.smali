.class Lcom/garena/android/gpns/logic/ServiceController$6;
.super Ljava/lang/Object;
.source "ServiceController.java"

# interfaces
.implements Lcom/garena/android/gpns/notification/NotifyItem;


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

    iput-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$6;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/garena/android/gpns/notification/event/NotifyEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$6;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$800(Lcom/garena/android/gpns/logic/ServiceController;)V

    return-void
.end method
