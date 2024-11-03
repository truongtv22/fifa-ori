.class public final Lcom/ea/nimble/DummyMeasureSdk;
.super Lcom/ea/games/measuresdk/MeasureSdkBase;
.source "DummyMeasureSdk.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DummyMeasureSdk"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/games/measuresdk/MeasureSdkBase;-><init>()V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 2

    sget-object v0, Lcom/ea/nimble/DummyMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "destory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "DummyMeasureSdk"

    return-object v0
.end method

.method public initApp(Landroid/content/Context;Z)V
    .locals 0

    sget-object p1, Lcom/ea/nimble/DummyMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string p2, "initApp"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ea/nimble/DummyMeasureSdk;->mInitCB:Lcom/ea/games/measuresdk/SdkCallback;

    new-instance p2, Lcom/ea/games/measuresdk/VoidParam;

    invoke-direct {p2}, Lcom/ea/games/measuresdk/VoidParam;-><init>()V

    invoke-interface {p1, p2}, Lcom/ea/games/measuresdk/SdkCallback;->OnSucceed(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/ea/nimble/DummyMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resume()V
    .locals 2

    sget-object v0, Lcom/ea/nimble/DummyMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startWork(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p1, Lcom/ea/nimble/DummyMeasureSdk;->LOG_TAG:Ljava/lang/String;

    const-string p2, "startWork"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public trackEvent(Lcom/ea/games/measuresdk/MeasureEvent;)V
    .locals 3

    sget-object v0, Lcom/ea/nimble/DummyMeasureSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "trackEvent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ea/games/measuresdk/MeasureEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
