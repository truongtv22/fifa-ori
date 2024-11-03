.class public Lcom/ea/nimble/MeasureSdk;
.super Ljava/lang/Object;
.source "MeasureSdk.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.measuresdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/INimbleMeasureSdk;
    .locals 1

    const-string v0, "com.ea.nimble.measuresdk"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/INimbleMeasureSdk;

    return-object v0
.end method

.method private static initialize()V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/NimbleMeasureSdk;->getInstance()Lcom/ea/nimble/NimbleMeasureSdk;

    move-result-object v0

    const-string v1, "com.ea.nimble.measuresdk"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method
