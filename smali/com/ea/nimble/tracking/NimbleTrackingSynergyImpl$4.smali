.class Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$4;
.super Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$BlockingRunner;
.source "NimbleTrackingSynergyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->generateSessionInfoDictionary(Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$4;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$4;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager$BlockingRunner;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$4$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$4$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$4;)V

    invoke-interface {v0, v1}, Lcom/ea/nimble/IApplicationEnvironment;->retrieveAdvertisingId(Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;)V

    return-void
.end method
