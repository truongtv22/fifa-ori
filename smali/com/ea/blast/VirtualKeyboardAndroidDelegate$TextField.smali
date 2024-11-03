.class public Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;
.super Landroid/widget/EditText;
.source "VirtualKeyboardAndroidDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/blast/VirtualKeyboardAndroidDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextField"
.end annotation


# instance fields
.field private bChangeTextEvent:Z

.field final synthetic this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;


# direct methods
.method constructor <init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$100(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/MainActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->bChangeTextEvent:Z

    return-void
.end method

.method private GetInputType()I
    .locals 2

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$500(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$500(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$500(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I

    move-result v0

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$600(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    return v0
.end method

.method private Hide()V
    .locals 3

    const-string v0, "Hide() from UiThread"

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->clearFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$100(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$100(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$700(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v0, v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v1, v1, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {v0, v2}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyboardVisibilityChanged(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method private Show()V
    .locals 2

    const-string v0, "Show() from UiThread"

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->GetInputType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setInputType(I)V

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$800(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I

    move-result v0

    const/high16 v1, 0x12000000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setImeOptions(I)V

    :try_start_0
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v0, v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v1, v1, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->requestFocus()Z

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$100(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$700(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyboardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->Hide()V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->Show()V

    return-void
.end method


# virtual methods
.method public SetTextToInputText(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->bChangeTextEvent:Z

    invoke-virtual {p0, p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->bChangeTextEvent:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetTextToInputText : \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEditorAction(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEditorAction actionCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    const/16 v0, 0x42

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyDown(IZ)V

    iget-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {p1, v0, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyUp(IZ)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyDown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ea/blast/KeyboardAndroid;->IsVirtualKeyboardEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyPreIme: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->Hide()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyUp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyDown(IZ)V

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyUp(IZ)V

    :cond_0
    invoke-static {p2}, Lcom/ea/blast/KeyboardAndroid;->IsVirtualKeyboardEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-boolean v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->bChangeTextEvent:Z

    if-nez v0, :cond_0

    const-string p1, "onTextChanged bChangeTextEvent"

    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onTextChanged text:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " start:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->getSelectionStart()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " end:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->getSelectionEnd()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->getSelectionStart()I

    move-result p2

    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->getSelectionEnd()I

    move-result p3

    invoke-virtual {p1, v0, p2, p3}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyboardForceSyncText(Ljava/lang/String;II)V

    return-void
.end method
