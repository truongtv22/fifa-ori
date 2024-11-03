.class public Lcom/ea/nimble/MarketingSdk;
.super Ljava/lang/Object;
.source "MarketingSdk.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.marketingsdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/INimbleMarketingSdk;
    .locals 1

    const-string v0, "com.ea.nimble.marketingsdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/INimbleMarketingSdk;

    return-object v0
.end method

.method private static initialize()V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/NimbleMarketingSdk;->getInstance()Lcom/ea/nimble/NimbleMarketingSdk;

    move-result-object v0

    const-string v1, "com.ea.nimble.marketingsdk"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method
