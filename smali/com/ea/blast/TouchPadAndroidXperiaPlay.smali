.class public Lcom/ea/blast/TouchPadAndroidXperiaPlay;
.super Ljava/lang/Object;
.source "TouchPadAndroidXperiaPlay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetViewRoot()Landroid/view/ViewParent;
    .locals 1

    invoke-static {}, Lcom/ea/blast/MainActivity;->GetInstance()Lcom/ea/blast/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method
