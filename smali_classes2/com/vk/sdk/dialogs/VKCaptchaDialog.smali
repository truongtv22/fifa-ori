.class public Lcom/vk/sdk/dialogs/VKCaptchaDialog;
.super Ljava/lang/Object;
.source "VKCaptchaDialog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCaptchaAnswer:Landroid/widget/EditText;

.field private final mCaptchaError:Lcom/vk/sdk/api/VKError;

.field private mCaptchaImage:Landroid/widget/ImageView;

.field private mDensity:F

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/vk/sdk/api/VKError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaError:Lcom/vk/sdk/api/VKError;

    return-void
.end method

.method static synthetic access$000(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->sendAnswer()V

    return-void
.end method

.method static synthetic access$100(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)Lcom/vk/sdk/api/VKError;
    .locals 0

    iget-object p0, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaError:Lcom/vk/sdk/api/VKError;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->loadImage()V

    return-void
.end method

.method private loadImage()V
    .locals 2

    new-instance v0, Lcom/vk/sdk/api/httpClient/VKImageOperation;

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaError:Lcom/vk/sdk/api/VKError;

    iget-object v1, v1, Lcom/vk/sdk/api/VKError;->captchaImg:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vk/sdk/api/httpClient/VKImageOperation;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mDensity:F

    iput v1, v0, Lcom/vk/sdk/api/httpClient/VKImageOperation;->imageDensity:F

    new-instance v1, Lcom/vk/sdk/dialogs/VKCaptchaDialog$5;

    invoke-direct {v1, p0}, Lcom/vk/sdk/dialogs/VKCaptchaDialog$5;-><init>(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)V

    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/httpClient/VKImageOperation;->setImageOperationListener(Lcom/vk/sdk/api/httpClient/VKImageOperation$VKImageOperationListener;)V

    invoke-static {v0}, Lcom/vk/sdk/api/httpClient/VKHttpClient;->enqueueOperation(Lcom/vk/sdk/api/httpClient/VKAbstractOperation;)V

    return-void
.end method

.method private sendAnswer()V
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaError:Lcom/vk/sdk/api/VKError;

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaAnswer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaAnswer:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/vk/sdk/api/VKError;->answerCaptcha(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    sget v0, Lcom/vk/sdk/R$layout;->vk_captcha_dialog:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/vk/sdk/R$id;->captchaAnswer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaAnswer:Landroid/widget/EditText;

    sget v1, Lcom/vk/sdk/R$id;->imageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaImage:Landroid/widget/ImageView;

    sget v1, Lcom/vk/sdk/R$id;->progressBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mDensity:F

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaAnswer:Landroid/widget/EditText;

    new-instance v2, Lcom/vk/sdk/dialogs/VKCaptchaDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/vk/sdk/dialogs/VKCaptchaDialog$1;-><init>(Lcom/vk/sdk/dialogs/VKCaptchaDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->mCaptchaAnswer:Landroid/widget/EditText;

    new-instance v2, Lcom/vk/sdk/dialogs/VKCaptchaDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/vk/sdk/dialogs/VKCaptchaDialog$2;-><init>(Lcom/vk/sdk/dialogs/VKCaptchaDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/vk/sdk/dialogs/VKCaptchaDialog$3;

    invoke-direct {v1, p0}, Lcom/vk/sdk/dialogs/VKCaptchaDialog$3;-><init>(Lcom/vk/sdk/dialogs/VKCaptchaDialog;)V

    const/4 v2, -0x2

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/vk/sdk/dialogs/VKCaptchaDialog$4;

    invoke-direct {p1, p0, v0}, Lcom/vk/sdk/dialogs/VKCaptchaDialog$4;-><init>(Lcom/vk/sdk/dialogs/VKCaptchaDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/vk/sdk/dialogs/VKCaptchaDialog;->loadImage()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
