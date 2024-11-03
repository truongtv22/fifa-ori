.class public Lcom/ea/blast/PhysicalKeyboardAndroidDelegate;
.super Ljava/lang/Object;
.source "PhysicalKeyboardAndroidDelegate.java"


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroidDelegate;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method IsNavigationVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroidDelegate;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->navigationHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method IsPhysicalKeyboardVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/ea/blast/PhysicalKeyboardAndroidDelegate;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
