.class public Lcom/garena/pay/android/view/GGFullScreenPopupMenu;
.super Ljava/lang/Object;
.source "GGFullScreenPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private callback:Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;

.field private final context:Landroid/content/Context;

.field private footerVisibility:I

.field private headerText:Ljava/lang/String;

.field private final popMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/pay/android/view/GGPopMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private popupDialog:Landroid/view/ViewGroup;

.field private popupView:Lcom/garena/pay/android/view/GGBasePopupView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popMenuItems:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->headerText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->footerVisibility:I

    iput-object p1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/garena/pay/android/view/GGFullScreenPopupMenu;)Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;
    .locals 0

    iget-object p0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->callback:Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;

    return-object p0
.end method

.method private buildMenuItem()V
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/garena/msdk/R$layout;->msdk_picker_view:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popupDialog:Landroid/view/ViewGroup;

    sget v1, Lcom/garena/msdk/R$id;->picker_item_list:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popupDialog:Landroid/view/ViewGroup;

    sget v2, Lcom/garena/msdk/R$id;->picker_header_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->headerText:Ljava/lang/String;

    invoke-static {v2}, Lcom/garena/pay/android/helper/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->headerText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popupDialog:Landroid/view/ViewGroup;

    sget v2, Lcom/garena/msdk/R$id;->btn_footer:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->footerVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/garena/pay/android/view/GGPopMenuItem;

    instance-of v3, v2, Lcom/garena/pay/android/view/GGPopMenuDenominationItem;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;

    iget-object v4, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->context:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/garena/pay/android/view/GGPopupMenuDenominationWrapper;-><init>(Landroid/content/Context;Lcom/garena/pay/android/view/GGFullScreenPopupMenu;)V

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;

    iget-object v4, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->context:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;-><init>(Landroid/content/Context;Lcom/garena/pay/android/view/GGFullScreenPopupMenu;)V

    :goto_2
    invoke-virtual {v3, v2}, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->setInfo(Lcom/garena/pay/android/view/GGPopMenuItem;)V

    invoke-virtual {v3}, Lcom/garena/pay/android/view/GGPopupMenuItemWrapper;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addMenuItem(Lcom/garena/pay/android/view/GGPopMenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMenuItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/garena/pay/android/view/GGPopMenuItem;

    invoke-direct {v0}, Lcom/garena/pay/android/view/GGPopMenuItem;-><init>()V

    iput p2, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->imageId:I

    iput-object p1, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->title:Ljava/lang/String;

    iput-object p4, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->keyCode:Ljava/lang/Object;

    iput-object p3, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->btnText:Ljava/lang/String;

    iget-object p1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popMenuItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMenuItem(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    new-instance p4, Lcom/garena/pay/android/view/GGPopMenuItem;

    invoke-direct {p4}, Lcom/garena/pay/android/view/GGPopMenuItem;-><init>()V

    iput p2, p4, Lcom/garena/pay/android/view/GGPopMenuItem;->imageId:I

    iput-object p1, p4, Lcom/garena/pay/android/view/GGPopMenuItem;->title:Ljava/lang/String;

    iput-object p5, p4, Lcom/garena/pay/android/view/GGPopMenuItem;->keyCode:Ljava/lang/Object;

    iput-object p3, p4, Lcom/garena/pay/android/view/GGPopMenuItem;->btnText:Ljava/lang/String;

    iget-object p1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popMenuItems:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/garena/pay/android/view/GGPopMenuItem;

    invoke-direct {v0}, Lcom/garena/pay/android/view/GGPopMenuItem;-><init>()V

    iput-object p2, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->imageUrl:Ljava/lang/String;

    iput-object p1, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->title:Ljava/lang/String;

    iput-object p4, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->keyCode:Ljava/lang/Object;

    iput-object p3, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->btnText:Ljava/lang/String;

    iget-object p1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popMenuItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMenuItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/garena/pay/android/view/GGPopMenuItem;

    invoke-direct {v0}, Lcom/garena/pay/android/view/GGPopMenuItem;-><init>()V

    iput-object p2, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->imageUrl:Ljava/lang/String;

    iput-object p1, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->title:Ljava/lang/String;

    iput-object p5, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->keyCode:Ljava/lang/Object;

    iput-object p3, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->btnText:Ljava/lang/String;

    iput-object p4, v0, Lcom/garena/pay/android/view/GGPopMenuItem;->subTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popMenuItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beforeShow()V
    .locals 0

    invoke-direct {p0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->buildMenuItem()V

    return-void
.end method

.method public dismiss(Z)V
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popupView:Lcom/garena/pay/android/view/GGBasePopupView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/garena/pay/android/view/GGBasePopupView;->dismiss()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/garena/pay/android/view/GGBasePopupView;->successfulDismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCallback()Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->callback:Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popupView:Lcom/garena/pay/android/view/GGBasePopupView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/garena/pay/android/view/GGBasePopupView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCallback(Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->callback:Lcom/garena/pay/android/view/GGFullScreenPopupMenu$GGPopupFullscreenMenuCallback;

    return-void
.end method

.method public setFooterVisibility(I)V
    .locals 0

    iput p1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->footerVisibility:I

    return-void
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->headerText:Ljava/lang/String;

    return-void
.end method

.method public showAtCenter(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/garena/pay/android/view/GGBasePopupView;

    iget-object v1, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popupDialog:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/garena/pay/android/view/GGBasePopupView;-><init>(Landroid/view/View;ZZ)V

    iput-object v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popupView:Lcom/garena/pay/android/view/GGBasePopupView;

    new-instance v1, Lcom/garena/pay/android/view/GGFullScreenPopupMenu$1;

    invoke-direct {v1, p0}, Lcom/garena/pay/android/view/GGFullScreenPopupMenu$1;-><init>(Lcom/garena/pay/android/view/GGFullScreenPopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/garena/pay/android/view/GGBasePopupView;->setListener(Lcom/garena/pay/android/view/GGBasePopupView$DismissListener;)V

    iget-object v0, p0, Lcom/garena/pay/android/view/GGFullScreenPopupMenu;->popupView:Lcom/garena/pay/android/view/GGBasePopupView;

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/view/GGBasePopupView;->showAtCenter(Landroid/view/View;)V

    return-void
.end method
