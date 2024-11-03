.class Lcom/garena/android/gpns/logic/ServiceController$2;
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

    iput-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$2;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/garena/android/gpns/notification/event/NotifyEvent;)V
    .locals 4

    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$2;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$000(Lcom/garena/android/gpns/logic/ServiceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/garena/android/gpns/storage/LocalStorage;->getRegionRequestTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    cmp-long p1, v2, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$2;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$100(Lcom/garena/android/gpns/logic/ServiceController;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/garena/android/gpns/logic/ServiceController$2;->this$0:Lcom/garena/android/gpns/logic/ServiceController;

    invoke-static {p1}, Lcom/garena/android/gpns/logic/ServiceController;->access$200(Lcom/garena/android/gpns/logic/ServiceController;)V

    :goto_0
    return-void
.end method
