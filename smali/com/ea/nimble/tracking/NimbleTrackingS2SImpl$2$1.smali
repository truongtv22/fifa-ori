.class Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2$1;
.super Ljava/lang/Object;
.source "NimbleTrackingS2SImpl.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;->val$tempMap:Ljava/util/Map;

    const-string v1, "advertiserID"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;

    iget-object p1, p1, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;->val$tempMap:Ljava/util/Map;

    const-string v0, "limitAdTracking"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;

    invoke-virtual {p1}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl$2;->setDone()V

    return-void
.end method
