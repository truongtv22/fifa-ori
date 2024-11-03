.class public Lcom/ea/blast/VirtualKeyboardAndroidDelegate;
.super Lcom/ea/blast/KeyboardAndroid;
.source "VirtualKeyboardAndroidDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "EAMCore/VirtualKeyboard"

.field private static final DEBUG_SHOW_TEXT_FIELD:Z = false

.field public static final IME_FLAG_NO_FULLSCREEN:I = 0x2000000

.field private static final kEnterKeyLabelDefault:I

.field private static final kEnterKeyLabelDone:I

.field private static final kEnterKeyLabelGo:I

.field private static final kEnterKeyLabelNext:I

.field private static final kEnterKeyLabelSearch:I

.field private static final kEnterKeyLabelSend:I

.field private static final kLayoutDefault:I

.field private static final kLayoutDigits:I

.field private static final kLayoutEmail:I

.field private static final kLayoutPhone:I

.field private static final kLayoutUrl:I


# instance fields
.field private volatile mEnterkeyLabel:I

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private volatile mKeyboardLayout:I

.field private mMainActivity:Lcom/ea/blast/MainActivity;

.field public mMainViewGroup:Landroid/view/ViewGroup;

.field public mMaxChar:I

.field private mPhysicalKeyboardVisible:Z

.field public mRelativeLayout:Landroid/widget/RelativeLayout;

.field mRelativeLayoutParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private volatile mShiftFlag:I

.field private mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

.field public mTextRegex:Ljava/lang/String;

.field private mVisibleRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetLayoutDefault()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutDefault:I

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetLayoutDigits()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutDigits:I

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetLayoutEmail()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutEmail:I

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetLayoutPhone()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutPhone:I

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetLayoutUrl()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutUrl:I

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelDefault()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelDefault:I

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelGo()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelGo:I

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelNext()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelNext:I

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelSearch()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelSearch:I

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelSend()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelSend:I

    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelDone()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelDone:I

    return-void
.end method

.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/ea/blast/KeyboardAndroid;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mKeyboardLayout:I

    iput v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mEnterkeyLabel:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mShiftFlag:I

    iput-boolean v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mVisibleRequested:Z

    iput-boolean v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mPhysicalKeyboardVisible:Z

    const/16 v2, 0x800

    iput v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMaxChar:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextRegex:Ljava/lang/String;

    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iput-object v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    iget-object v2, v2, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v2}, Lcom/ea/blast/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mPhysicalKeyboardVisible:Z

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc8

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayoutParam:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;

    invoke-direct {v0, p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private ClearBuffer()V
    .locals 2

    new-instance v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$4;

    invoke-direct {v0, p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$4;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Hide()V
    .locals 2

    const-string v0, "Hide() from game thread"

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$2;

    invoke-direct {v0, p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$2;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static native NativeGetEnterKeyLabelDefault()I
.end method

.method public static native NativeGetEnterKeyLabelDone()I
.end method

.method public static native NativeGetEnterKeyLabelGo()I
.end method

.method public static native NativeGetEnterKeyLabelNext()I
.end method

.method public static native NativeGetEnterKeyLabelSearch()I
.end method

.method public static native NativeGetEnterKeyLabelSend()I
.end method

.method public static native NativeGetLayoutDefault()I
.end method

.method public static native NativeGetLayoutDigits()I
.end method

.method public static native NativeGetLayoutEmail()I
.end method

.method public static native NativeGetLayoutPhone()I
.end method

.method public static native NativeGetLayoutUrl()I
.end method

.method private SetTextFieldMaxChars(I)V
    .locals 0

    iput p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMaxChar:I

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->SetTextInputFilters()V

    return-void
.end method

.method private SetTextFieldRegex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextRegex:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->SetTextInputFilters()V

    return-void
.end method

.method private SetTextFieldSelection(II)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetTextFieldSelection start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  end "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;IIII)V

    iget-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {p1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private SetTextInputFilters()V
    .locals 4

    iget v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMaxChar:I

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextRegex:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maxchar "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "textRegex "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    new-instance v2, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, v2}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Show()V
    .locals 2

    const-string v0, "Show() from game thread"

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$3;

    invoke-direct {v0, p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$3;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final StdToRawEnterKeyLabel(I)I
    .locals 2

    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelDefault:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelGo:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelNext:I

    if-ne p0, v0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelSearch:I

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelSend:I

    if-ne p0, v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelDone:I

    if-ne p0, v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    return v1
.end method

.method public static final StdToRawLayout(I)I
    .locals 2

    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutDefault:I

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutEmail:I

    if-ne p0, v0, :cond_1

    const/16 p0, 0x21

    return p0

    :cond_1
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutUrl:I

    if-ne p0, v0, :cond_2

    const/16 p0, 0x11

    return p0

    :cond_2
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutDigits:I

    if-ne p0, v0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutPhone:I

    if-ne p0, v0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    return v1
.end method

.method private SynchronizeTextFieldText(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;

    invoke-direct {v0, p0, p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {p1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;
    .locals 0

    iget-object p0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    return-object p0
.end method

.method static synthetic access$002(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I
    .locals 0

    iget p0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mKeyboardLayout:I

    return p0
.end method

.method static synthetic access$600(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I
    .locals 0

    iget p0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mShiftFlag:I

    return p0
.end method

.method static synthetic access$700(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I
    .locals 0

    iget p0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mEnterkeyLabel:I

    return p0
.end method


# virtual methods
.method GetModuleId()I
    .locals 1

    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdVirtualKeyboard:I

    return v0
.end method

.method public IsVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OnPhysicalKeyboardVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mPhysicalKeyboardVisible:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Hide()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mVisibleRequested:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public SetEnterKeyLabel(I)V
    .locals 0

    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->StdToRawEnterKeyLabel(I)I

    move-result p1

    iput p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mEnterkeyLabel:I

    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->UpdateDisplay()V

    return-void
.end method

.method public SetLayout(I)V
    .locals 0

    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->StdToRawLayout(I)I

    move-result p1

    iput p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mKeyboardLayout:I

    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->UpdateDisplay()V

    return-void
.end method

.method public SetShiftEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mShiftFlag:I

    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->UpdateDisplay()V

    return-void
.end method

.method public Shutdown()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->UserSetVisible(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainViewGroup:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    return-void
.end method

.method public UpdateDisplay()V
    .locals 1

    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->IsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UpdateDisplay()"

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Hide()V

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Show()V

    :cond_0
    return-void
.end method

.method public UserSetVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mVisibleRequested:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mPhysicalKeyboardVisible:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Show()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Hide()V

    :cond_1
    :goto_0
    return-void
.end method
