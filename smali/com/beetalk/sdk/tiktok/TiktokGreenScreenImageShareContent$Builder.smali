.class public final Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent$Builder;
.super Ljava/lang/Object;
.source "TiktokGreenScreenImageShareContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private imageContent:Lcom/garena/android/share/model/ShareImageContent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent$Builder;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    return-void
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;

    iget-object v1, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent$Builder;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;-><init>(Lcom/garena/android/share/model/ShareImageContent;)V

    return-object v0
.end method

.method public setImagePath(Ljava/lang/String;)Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/garena/android/share/model/ShareImageContent$Builder;

    invoke-direct {v0}, Lcom/garena/android/share/model/ShareImageContent$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/garena/android/share/model/ShareImageContent$Builder;->setImagePath(Ljava/lang/String;)Lcom/garena/android/share/model/ShareImageContent$Builder;

    invoke-virtual {v0}, Lcom/garena/android/share/model/ShareImageContent$Builder;->build()Lcom/garena/android/share/model/ShareImageContent;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent$Builder;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    :cond_0
    return-object p0
.end method

.method public setImageRes(I)Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent$Builder;
    .locals 1

    new-instance v0, Lcom/garena/android/share/model/ShareImageContent$Builder;

    invoke-direct {v0}, Lcom/garena/android/share/model/ShareImageContent$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/garena/android/share/model/ShareImageContent$Builder;->setImageRes(I)Lcom/garena/android/share/model/ShareImageContent$Builder;

    invoke-virtual {v0}, Lcom/garena/android/share/model/ShareImageContent$Builder;->build()Lcom/garena/android/share/model/ShareImageContent;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent$Builder;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    return-object p0
.end method
