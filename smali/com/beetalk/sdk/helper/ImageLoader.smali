.class public Lcom/beetalk/sdk/helper/ImageLoader;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheHelper:Lcom/beetalk/sdk/helper/CacheHelper;

.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceHolder:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/helper/ImageLoader;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;ILcom/beetalk/sdk/helper/ImageLoader$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/helper/ImageLoader;-><init>(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mImageView:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "cache_images"

    invoke-static {p1, p2}, Lcom/beetalk/sdk/helper/CacheHelper;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/beetalk/sdk/helper/CacheHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->cacheHelper:Lcom/beetalk/sdk/helper/CacheHelper;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/beetalk/sdk/helper/ImageLoader$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/helper/ImageLoader;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static load(Ljava/io/File;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;-><init>(Ljava/io/File;Lcom/beetalk/sdk/helper/ImageLoader$1;)V

    return-object v0
.end method

.method public static load(Ljava/lang/String;)Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/helper/ImageLoader$ImageTarget;-><init>(Ljava/lang/String;Lcom/beetalk/sdk/helper/ImageLoader$1;)V

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, p1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    return-object v4

    :cond_2
    iget-object v3, p0, Lcom/beetalk/sdk/helper/ImageLoader;->cacheHelper:Lcom/beetalk/sdk/helper/CacheHelper;

    invoke-virtual {v3, v2}, Lcom/beetalk/sdk/helper/CacheHelper;->getAsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_5

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_1
    move-object v3, p1

    iget-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->cacheHelper:Lcom/beetalk/sdk/helper/CacheHelper;

    const v1, 0x2a300

    invoke-virtual {p1, v2, v3, v1}, Lcom/beetalk/sdk/helper/CacheHelper;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    return-object v4

    :catch_0
    const-string p1, "ImageLoader failed to load image: out of memory"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :cond_5
    :goto_2
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/helper/ImageLoader;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/helper/ImageLoader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/beetalk/sdk/helper/ImageLoader;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
