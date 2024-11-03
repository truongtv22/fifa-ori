.class public Lcom/ea/EAMAudio/EAMAudioCoreWrapper;
.super Ljava/lang/Object;
.source "EAMAudioCoreWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native NativePause()V
.end method

.method public static native NativeResume()V
.end method

.method public static native NativeShutdown()V
.end method

.method public static native NativeStartup()V
.end method

.method public static init()V
    .locals 0

    invoke-static {}, Lcom/ea/EAMAudio/EAMAudioCoreWrapper;->NativeStartup()V

    return-void
.end method

.method public static pause()V
    .locals 0

    invoke-static {}, Lcom/ea/EAMAudio/EAMAudioCoreWrapper;->NativePause()V

    return-void
.end method

.method public static resume()V
    .locals 0

    invoke-static {}, Lcom/ea/EAMAudio/EAMAudioCoreWrapper;->NativeResume()V

    return-void
.end method

.method public static shutdown()V
    .locals 0

    invoke-static {}, Lcom/ea/EAMAudio/EAMAudioCoreWrapper;->NativeShutdown()V

    return-void
.end method
