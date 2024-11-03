.class public final Lcom/garena/android/share/model/ShareVideoContent$Builder;
.super Ljava/lang/Object;
.source "ShareVideoContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/share/model/ShareVideoContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private rawVideoRes:I

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/garena/android/share/model/ShareVideoContent$Builder;->rawVideoRes:I

    return-void
.end method


# virtual methods
.method public build()Lcom/garena/android/share/model/ShareVideoContent;
    .locals 4

    new-instance v0, Lcom/garena/android/share/model/ShareVideoContent;

    iget-object v1, p0, Lcom/garena/android/share/model/ShareVideoContent$Builder;->videoPath:Ljava/lang/String;

    iget v2, p0, Lcom/garena/android/share/model/ShareVideoContent$Builder;->rawVideoRes:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/garena/android/share/model/ShareVideoContent;-><init>(Ljava/lang/String;ILcom/garena/android/share/model/ShareVideoContent$1;)V

    return-object v0
.end method

.method public setRawVideoRes(I)Lcom/garena/android/share/model/ShareVideoContent$Builder;
    .locals 0

    iput p1, p0, Lcom/garena/android/share/model/ShareVideoContent$Builder;->rawVideoRes:I

    return-object p0
.end method

.method public setVideoPath(Ljava/lang/String;)Lcom/garena/android/share/model/ShareVideoContent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/share/model/ShareVideoContent$Builder;->videoPath:Ljava/lang/String;

    return-object p0
.end method
