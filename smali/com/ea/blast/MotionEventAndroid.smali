.class Lcom/ea/blast/MotionEventAndroid;
.super Ljava/lang/Object;
.source "MotionEventAndroid.java"


# static fields
.field private static final UI_SLEEP_TIME_MS:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/ea/blast/MouseAndroid;->kIdUndefined:I

    sget v1, Lcom/ea/blast/TouchSurfaceAndroid;->kIdUndefined:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASSERTION: MouseAndroid.kIdUndefined != TouchSurfaceAndroid.kIdUndefined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static ActionToBlastRawMsgId(II)I
    .locals 5

    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchPad:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v0, :cond_7

    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    if-ne p0, v0, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    sget p0, Lcom/ea/blast/MouseAndroid;->kIdUndefined:I

    return p0

    :cond_1
    sget p0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseUp:I

    return p0

    :cond_2
    sget p0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseDown:I

    return p0

    :cond_3
    sget p0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseMove:I

    return p0

    :cond_4
    sget p0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseUp:I

    return p0

    :cond_5
    sget p0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseDown:I

    return p0

    :cond_6
    sget p0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdUndefined:I

    return p0

    :cond_7
    :goto_0
    if-eqz p1, :cond_d

    if-eq p1, v4, :cond_c

    if-eq p1, v3, :cond_b

    const/4 p0, 0x3

    if-eq p1, p0, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_8

    sget p0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdUndefined:I

    return p0

    :cond_8
    sget p0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerUp:I

    return p0

    :cond_9
    sget p0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerDown:I

    return p0

    :cond_a
    sget p0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerCancel:I

    return p0

    :cond_b
    sget p0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerMove:I

    return p0

    :cond_c
    sget p0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerUp:I

    return p0

    :cond_d
    sget p0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerDown:I

    return p0
.end method

.method private GetBlastModuleId(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const v0, 0x100008

    if-ne p1, v0, :cond_0

    sget p1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchPad:I

    return p1

    :cond_0
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_1

    sget p1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    return p1

    :cond_1
    const/16 v0, 0x2002

    if-ne p1, v0, :cond_2

    sget p1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    return p1

    :cond_2
    const/16 v0, 0x5002

    if-eq p1, v0, :cond_6

    const v0, 0xd002

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x6002

    if-ne p1, v0, :cond_4

    sget p1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    return p1

    :cond_4
    const/16 v0, 0x4002

    if-ne p1, v0, :cond_5

    sget p1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    return p1

    :cond_5
    sget p1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdInvalid:I

    return p1

    :cond_6
    :goto_0
    sget p1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    return p1
.end method

.method private static GetBlastMouseButton(Landroid/view/MotionEvent;I)I
    .locals 1

    sget v0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseDown:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    sget p0, Lcom/ea/blast/MouseAndroid;->kMouseButtonNone:I

    return p0

    :cond_0
    sget p0, Lcom/ea/blast/MouseAndroid;->kMouseButtonCenter:I

    return p0

    :cond_1
    sget p0, Lcom/ea/blast/MouseAndroid;->kMouseButtonRight:I

    return p0

    :cond_2
    sget p0, Lcom/ea/blast/MouseAndroid;->kMouseButtonLeft:I

    return p0

    :cond_3
    sget p0, Lcom/ea/blast/MouseAndroid;->kMouseButtonNone:I

    return p0
.end method

.method private SendMotionEventInternal(Landroid/view/MotionEvent;IIIFF)V
    .locals 7

    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchPad:I

    if-eq p4, v0, :cond_1

    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    if-ne p4, p2, :cond_2

    invoke-static {p1, p3}, Lcom/ea/blast/MotionEventAndroid;->GetBlastMouseButton(Landroid/view/MotionEvent;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p3

    move v1, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/ea/blast/MouseAndroid;->NativeOnMouseEvent(IIIIIFF)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-static {p3, p4, p1, p5, p6}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeOnPointerEvent(IIIFF)V

    :cond_2
    :goto_1
    return-void
.end method

.method private SendRawHistoricMotionEvent(Landroid/view/MotionEvent;IIII)V
    .locals 7

    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v5

    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/ea/blast/MotionEventAndroid;->SendMotionEventInternal(Landroid/view/MotionEvent;IIIFF)V

    return-void
.end method

.method private SendRawMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 7

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/ea/blast/MotionEventAndroid;->SendMotionEventInternal(Landroid/view/MotionEvent;IIIFF)V

    return-void
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const-wide/16 v2, 0xc

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/ea/blast/MotionEventAndroid;->GetBlastModuleId(Landroid/view/MotionEvent;)I

    move-result v7

    invoke-static {v7, v0}, Lcom/ea/blast/MotionEventAndroid;->ActionToBlastRawMsgId(II)I

    move-result v8

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v0, :cond_1

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v9, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, v11

    move v4, v12

    move v5, v8

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/ea/blast/MotionEventAndroid;->SendRawHistoricMotionEvent(Landroid/view/MotionEvent;IIII)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v10, v9, :cond_3

    invoke-direct {p0, p1, v10, v8, v7}, Lcom/ea/blast/MotionEventAndroid;->SendRawMotionEvent(Landroid/view/MotionEvent;III)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0, v8, v7}, Lcom/ea/blast/MotionEventAndroid;->SendRawMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_3
    const-wide/16 v0, 0xc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1
.end method
