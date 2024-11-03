.class Lcom/ea/blast/PhysicalKeyboardAndroid;
.super Lcom/ea/blast/KeyboardAndroid;
.source "PhysicalKeyboardAndroid.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "EAMCore/PhysicalKeyboard"


# instance fields
.field private mNavigationVisibility:I

.field private mPhysicalKeyboardVisibility:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/blast/KeyboardAndroid;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mPhysicalKeyboardVisibility:I

    iput v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mNavigationVisibility:I

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method GetModuleId()I
    .locals 1

    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdPhysicalKeyboard:I

    return v0
.end method

.method protected OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "physical keyboard OnKeyDown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/PhysicalKeyboardAndroid;->Log(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->IsSystemKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyDown(IZ)V

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyDown(IZ)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected OnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "physical keyboard OnKeyUp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/PhysicalKeyboardAndroid;->Log(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->IsSystemKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyUp(IZ)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyUp(IZ)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnCharacter(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    iget v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mPhysicalKeyboardVisibility:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyboardVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnKeyboardVisibilityChanged(Z)V

    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mPhysicalKeyboardVisibility:I

    :cond_2
    iget v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mNavigationVisibility:I

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v0, v1, :cond_5

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnNavigationVisibilityChanged(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Lcom/ea/blast/PhysicalKeyboardAndroid;->NativeOnNavigationVisibilityChanged(Z)V

    :goto_1
    iget p1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput p1, p0, Lcom/ea/blast/PhysicalKeyboardAndroid;->mNavigationVisibility:I

    :cond_5
    return-void
.end method
