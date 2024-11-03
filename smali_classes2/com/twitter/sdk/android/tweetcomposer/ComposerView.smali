.class public Lcom/twitter/sdk/android/tweetcomposer/ComposerView;
.super Landroid/widget/LinearLayout;
.source "ComposerView.java"


# instance fields
.field private avatarView:Landroid/widget/ImageView;

.field private callbacks:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;

.field private charCountView:Landroid/widget/TextView;

.field private closeView:Landroid/widget/ImageView;

.field private divider:Landroid/view/View;

.field private imageView:Landroid/widget/ImageView;

.field private mediaBg:Landroid/graphics/drawable/ColorDrawable;

.field private scrollView:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

.field private tweetButton:Landroid/widget/Button;

.field private tweetEditView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->callbacks:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/garena/msdk/R$color;->tw__composer_light_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->mediaBg:Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/garena/msdk/R$layout;->tw__composer_view:I

    invoke-static {p1, v0, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method findSubviews()V
    .locals 1

    sget v0, Lcom/garena/msdk/R$id;->tw__author_avatar:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->avatarView:Landroid/widget/ImageView;

    sget v0, Lcom/garena/msdk/R$id;->tw__composer_close:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->closeView:Landroid/widget/ImageView;

    sget v0, Lcom/garena/msdk/R$id;->tw__edit_tweet:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->tweetEditView:Landroid/widget/EditText;

    sget v0, Lcom/garena/msdk/R$id;->tw__char_count:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->charCountView:Landroid/widget/TextView;

    sget v0, Lcom/garena/msdk/R$id;->tw__post_tweet:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->tweetButton:Landroid/widget/Button;

    sget v0, Lcom/garena/msdk/R$id;->tw__composer_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->scrollView:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    sget v0, Lcom/garena/msdk/R$id;->tw__composer_profile_divider:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->divider:Landroid/view/View;

    sget v0, Lcom/garena/msdk/R$id;->tw__image_view:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method getTweetText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->tweetEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onFinishInflate$0$com-twitter-sdk-android-tweetcomposer-ComposerView(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->callbacks:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;

    invoke-interface {p1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;->onCloseClick()V

    return-void
.end method

.method synthetic lambda$onFinishInflate$1$com-twitter-sdk-android-tweetcomposer-ComposerView(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->callbacks:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getTweetText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;->onTweetPost(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onFinishInflate$2$com-twitter-sdk-android-tweetcomposer-ComposerView(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->callbacks:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getTweetText()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;->onTweetPost(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$onFinishInflate$3$com-twitter-sdk-android-tweetcomposer-ComposerView(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->divider:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->divider:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->findSubviews()V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->closeView:Landroid/widget/ImageView;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$$ExternalSyntheticLambda0;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->tweetButton:Landroid/widget/Button;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$$ExternalSyntheticLambda1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->tweetEditView:Landroid/widget/EditText;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$$ExternalSyntheticLambda2;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->tweetEditView:Landroid/widget/EditText;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$1;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->tweetEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->scrollView:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$$ExternalSyntheticLambda3;-><init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;->setScrollViewListener(Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$ScrollViewListener;)V

    return-void
.end method

.method postTweetEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->tweetButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method setCallbacks(Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->callbacks:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;

    return-void
.end method

.method setCharCount(I)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->charCountView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setCharCountTextStyle(I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->charCountView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method setImage(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setImageView(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/beetalk/sdk/helper/ImageLoader;->load(Ljava/io/File;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->mediaBg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method setProfilePhotoView(Lcom/twitter/sdk/android/core/models/User;)V
    .locals 1

    sget-object v0, Lcom/twitter/sdk/android/core/internal/UserUtils$AvatarSize;->REASONABLY_SMALL:Lcom/twitter/sdk/android/core/internal/UserUtils$AvatarSize;

    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/internal/UserUtils;->getProfileImageUrlHttps(Lcom/twitter/sdk/android/core/models/User;Lcom/twitter/sdk/android/core/internal/UserUtils$AvatarSize;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/ImageLoader;->load(Ljava/lang/String;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->mediaBg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->avatarView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method setTweetText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->tweetEditView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->tweetEditView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
