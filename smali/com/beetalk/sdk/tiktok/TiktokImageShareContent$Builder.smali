.class public final Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;
.super Ljava/lang/Object;
.source "TiktokImageShareContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field imageContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/garena/android/share/model/ShareImageContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;->imageContents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addImage(I)Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;->isFileCountNotExceed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/garena/android/share/model/ShareImageContent$Builder;

    invoke-direct {v0}, Lcom/garena/android/share/model/ShareImageContent$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/garena/android/share/model/ShareImageContent$Builder;->setImageRes(I)Lcom/garena/android/share/model/ShareImageContent$Builder;

    iget-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;->imageContents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/garena/android/share/model/ShareImageContent$Builder;->build()Lcom/garena/android/share/model/ShareImageContent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addImage(Ljava/lang/String;)Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;->isFileCountNotExceed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/garena/android/share/model/ShareImageContent$Builder;

    invoke-direct {v0}, Lcom/garena/android/share/model/ShareImageContent$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/garena/android/share/model/ShareImageContent$Builder;->setImagePath(Ljava/lang/String;)Lcom/garena/android/share/model/ShareImageContent$Builder;

    iget-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;->imageContents:Ljava/util/List;

    invoke-virtual {v0}, Lcom/garena/android/share/model/ShareImageContent$Builder;->build()Lcom/garena/android/share/model/ShareImageContent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;
    .locals 3

    new-instance v0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;

    iget-object v1, p0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;->imageContents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent;-><init>(Ljava/util/List;Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$1;)V

    return-object v0
.end method

.method public isFileCountNotExceed()Z
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokImageShareContent$Builder;->imageContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
