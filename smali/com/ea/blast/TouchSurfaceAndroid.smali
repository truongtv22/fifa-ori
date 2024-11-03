.class Lcom/ea/blast/TouchSurfaceAndroid;
.super Ljava/lang/Object;
.source "TouchSurfaceAndroid.java"


# static fields
.field protected static final kIdRawPointerCancel:I

.field protected static final kIdRawPointerDown:I

.field protected static final kIdRawPointerMove:I

.field protected static final kIdRawPointerUp:I

.field protected static final kIdUndefined:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdUndefined()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdUndefined:I

    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerCancel()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerCancel:I

    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerDown()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerDown:I

    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerMove()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerMove:I

    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerUp()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerUp:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsTouchScreenMultiTouch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected static native NativeGetIdRawPointerCancel()I
.end method

.method protected static native NativeGetIdRawPointerDown()I
.end method

.method protected static native NativeGetIdRawPointerMove()I
.end method

.method protected static native NativeGetIdRawPointerUp()I
.end method

.method protected static native NativeGetIdUndefined()I
.end method

.method protected static native NativeOnPointerEvent(IIIFF)V
.end method
