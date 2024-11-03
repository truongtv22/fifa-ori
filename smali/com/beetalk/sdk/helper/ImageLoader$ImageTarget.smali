.class public final Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/helper/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageTarget"
.end annotation


# instance fields
.field private filePath:Ljava/lang/String;

.field private mPlaceHolderRes:I

.field private mUrl:Ljava/lang/String;

.field private placeHolder:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->filePath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/beetalk/sdk/helper/ImageLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    iput-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/beetalk/sdk/helper/ImageLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public into(Landroid/widget/ImageView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/beetalk/sdk/helper/ImageLoader;

    iget-object v2, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->placeHolder:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, p1, v2, v1}, Lcom/beetalk/sdk/helper/ImageLoader;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/beetalk/sdk/helper/ImageLoader$1;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/beetalk/sdk/helper/ImageLoader;

    iget v2, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    invoke-direct {v0, p1, v2, v1}, Lcom/beetalk/sdk/helper/ImageLoader;-><init>(Landroid/widget/ImageView;ILcom/beetalk/sdk/helper/ImageLoader$1;)V

    :goto_0
    sget-object p1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->filePath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/beetalk/sdk/helper/ImageLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public placeholder(I)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 0

    iput p1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->mPlaceHolderRes:I

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;->placeHolder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
