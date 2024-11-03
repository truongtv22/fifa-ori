.class public Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;
.super Ljava/lang/Object;
.source "GGPopupMenuItemWrapper.java"


# instance fields
.field protected ggFullScreenPopupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

.field protected mContext:Landroid/content/Context;

.field protected rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/garena/pay/android/view/GGFullScreenPopupMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->ggFullScreenPopupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    sget p2, Lcom/garena/msdk/R$layout;->msdk_picker_item_view:I

    invoke-virtual {p0, p1, p2}, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/garena/pay/android/view/GGFullScreenPopupMenu;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->ggFullScreenPopupMenu:Lcom/garena/pay/android/view/GGFullScreenPopupMenu;

    invoke-virtual {p0, p1, p3}, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->init(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->rootView:Landroid/view/View;

    return-object v0
.end method

.method protected init(Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->rootView:Landroid/view/View;

    return-void
.end method

.method protected loadImage(Lcom/garena/pay/android/view/GGPopMenuItem;Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p1, Lcom/garena/pay/android/view/GGPopMenuItem;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/garena/pay/android/helper/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/garena/pay/android/view/GGPopMenuItem;->imageId:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/garena/pay/android/view/GGPopMenuItem;->imageUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/helper/ImageLoader;->load(Ljava/lang/String;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    move-result-object p1

    sget v0, Lcom/garena/msdk/R$drawable;->msdk_default_icon:I

    invoke-virtual {p1, v0}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->placeholder(I)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->into(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public setInfo(Lcom/garena/pay/android/view/GGPopMenuItem;)V
    .locals 7

    iget-object v0, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->rootView:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v1, Lcom/garena/msdk/R$id;->picker_item_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->rootView:Landroid/view/View;

    sget v2, Lcom/garena/msdk/R$id;->picker_item_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->rootView:Landroid/view/View;

    sget v3, Lcom/garena/msdk/R$id;->currency_amount:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p0, p1, v1}, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->loadImage(Lcom/garena/pay/android/view/GGPopMenuItem;Landroid/widget/ImageView;)V

    iget-object v1, p1, Lcom/garena/pay/android/view/GGPopMenuItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/garena/pay/android/view/GGPopMenuItem;->subTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/garena/pay/android/view/GGPopMenuItem;->subTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/garena/msdk/R$color;->picker_sub_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x21

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p1, Lcom/garena/pay/android/view/GGPopMenuItem;->btnText:Ljava/lang/String;

    invoke-static {v0}, Lcom/garena/pay/android/helper/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/garena/pay/android/view/GGPopMenuItem;->btnText:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->rootView:Landroid/view/View;

    iget-object v1, p1, Lcom/garena/pay/android/view/GGPopMenuItem;->keyCode:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/garena/pay/android/view/GGPopMenuItem;->keyCode:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance p1, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper$1;

    invoke-direct {p1, p0}, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper$1;-><init>(Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;)V

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->rootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method
