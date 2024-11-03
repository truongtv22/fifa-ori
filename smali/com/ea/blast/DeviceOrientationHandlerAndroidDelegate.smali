.class public Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;
.super Landroid/view/OrientationEventListener;
.source "DeviceOrientationHandlerAndroidDelegate.java"


# static fields
.field private static final kOrientationBottomSideUp:I

.field private static final kOrientationFrontSideUp:I

.field private static final kOrientationLeftSideUp:I

.field private static final kOrientationRightSideUp:I

.field private static final kOrientationTopSideUp:I

.field private static final kOrientationUnknown:I

.field private static final kThreshold:I = 0x1e


# instance fields
.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationUnknown()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationUnknown:I

    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationTopSideUp()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationTopSideUp:I

    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationLeftSideUp()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationLeftSideUp:I

    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationRightSideUp()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationRightSideUp:I

    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationBottomSideUp()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationBottomSideUp:I

    invoke-static {}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeGetDeviceOrientationFrontSideUp()I

    move-result v0

    sput v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationFrontSideUp:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-direct {p0, v0}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationUnknown:I

    iput v0, p0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->mOrientation:I

    return-void
.end method

.method public static native NativeGetDeviceOrientationBottomSideUp()I
.end method

.method public static native NativeGetDeviceOrientationFrontSideUp()I
.end method

.method public static native NativeGetDeviceOrientationLeftSideUp()I
.end method

.method public static native NativeGetDeviceOrientationRightSideUp()I
.end method

.method public static native NativeGetDeviceOrientationTopSideUp()I
.end method

.method public static native NativeGetDeviceOrientationUnknown()I
.end method

.method public static native NativeOnDeviceOrientationChange(I)V
.end method

.method private UpdateOrientation(I)V
    .locals 1

    iget v0, p0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->mOrientation:I

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->NativeOnDeviceOrientationChange(I)V

    iput p1, p0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->mOrientation:I

    :cond_0
    return-void
.end method


# virtual methods
.method OnLifeCycleFocusGained()V
    .locals 1

    sget v0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationUnknown:I

    iput v0, p0, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->mOrientation:I

    return-void
.end method

.method SetEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->enable()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->disable()V

    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    sget p1, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationFrontSideUp:I

    invoke-direct {p0, p1}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->UpdateOrientation(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x14a

    if-ge p1, v0, :cond_4

    if-ltz p1, :cond_1

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_2

    const/16 v0, 0x78

    if-gt p1, v0, :cond_2

    sget p1, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationLeftSideUp:I

    invoke-direct {p0, p1}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->UpdateOrientation(I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0xf0

    if-lt p1, v0, :cond_3

    const/16 v0, 0x12c

    if-gt p1, v0, :cond_3

    sget p1, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationRightSideUp:I

    invoke-direct {p0, p1}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->UpdateOrientation(I)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x96

    if-lt p1, v0, :cond_5

    const/16 v0, 0xd2

    if-gt p1, v0, :cond_5

    sget p1, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationBottomSideUp:I

    invoke-direct {p0, p1}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->UpdateOrientation(I)V

    goto :goto_1

    :cond_4
    :goto_0
    sget p1, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->kOrientationTopSideUp:I

    invoke-direct {p0, p1}, Lcom/ea/blast/DeviceOrientationHandlerAndroidDelegate;->UpdateOrientation(I)V

    :cond_5
    :goto_1
    return-void
.end method
