.class public final Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent$Builder;
.super Ljava/lang/Object;
.source "TiktokGreenScreenVideoShareContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private videoContent:Lcom/garena/android/share/model/ShareVideoContent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent$Builder;->videoContent:Lcom/garena/android/share/model/ShareVideoContent;

    return-void
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;

    iget-object v1, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent$Builder;->videoContent:Lcom/garena/android/share/model/ShareVideoContent;

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent;-><init>(Lcom/garena/android/share/model/ShareVideoContent;)V

    return-object v0
.end method

.method public setVideo(I)Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent$Builder;
    .locals 1

    new-instance v0, Lcom/garena/android/share/model/ShareVideoContent$Builder;

    invoke-direct {v0}, Lcom/garena/android/share/model/ShareVideoContent$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/garena/android/share/model/ShareVideoContent$Builder;->setRawVideoRes(I)Lcom/garena/android/share/model/ShareVideoContent$Builder;

    invoke-virtual {v0}, Lcom/garena/android/share/model/ShareVideoContent$Builder;->build()Lcom/garena/android/share/model/ShareVideoContent;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent$Builder;->videoContent:Lcom/garena/android/share/model/ShareVideoContent;

    return-object p0
.end method

.method public setVideo(Ljava/lang/String;)Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/garena/android/share/model/ShareVideoContent$Builder;

    invoke-direct {v0}, Lcom/garena/android/share/model/ShareVideoContent$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/garena/android/share/model/ShareVideoContent$Builder;->setVideoPath(Ljava/lang/String;)Lcom/garena/android/share/model/ShareVideoContent$Builder;

    invoke-virtual {v0}, Lcom/garena/android/share/model/ShareVideoContent$Builder;->build()Lcom/garena/android/share/model/ShareVideoContent;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenVideoShareContent$Builder;->videoContent:Lcom/garena/android/share/model/ShareVideoContent;

    :cond_0
    return-object p0
.end method
