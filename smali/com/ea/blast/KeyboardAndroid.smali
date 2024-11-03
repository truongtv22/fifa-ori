.class abstract Lcom/ea/blast/KeyboardAndroid;
.super Ljava/lang/Object;
.source "KeyboardAndroid.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final IsSystemKey(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final IsVirtualKeyboardEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private native NativeOnCharacter(II)V
.end method

.method private native NativeOnKeyDown(III)V
.end method

.method private native NativeOnKeyUp(III)V
.end method

.method private native NativeOnKeyboardForceSyncText(ILjava/lang/String;II)V
.end method

.method private native NativeOnKeyboardVisibilityChanged(IZ)V
.end method

.method private native NativeOnNavigationVisibilityChanged(IZ)V
.end method


# virtual methods
.method abstract GetModuleId()I
.end method

.method protected NativeOnCharacter(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/ea/blast/KeyboardAndroid;->NativeOnCharacter(II)V

    return-void
.end method

.method protected NativeOnKeyDown(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/ea/blast/KeyboardAndroid;->NativeOnKeyDown(III)V

    return-void
.end method

.method protected NativeOnKeyUp(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/ea/blast/KeyboardAndroid;->NativeOnKeyUp(III)V

    return-void
.end method

.method protected NativeOnKeyboardForceSyncText(Ljava/lang/String;II)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ea/blast/KeyboardAndroid;->NativeOnKeyboardForceSyncText(ILjava/lang/String;II)V

    return-void
.end method

.method protected NativeOnKeyboardVisibilityChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/ea/blast/KeyboardAndroid;->NativeOnKeyboardVisibilityChanged(IZ)V

    return-void
.end method

.method protected NativeOnNavigationVisibilityChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/blast/KeyboardAndroid;->GetModuleId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/ea/blast/KeyboardAndroid;->NativeOnNavigationVisibilityChanged(IZ)V

    return-void
.end method
