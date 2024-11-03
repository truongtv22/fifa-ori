.class public final Lcom/garena/android/share/model/ShareImageContent$Builder;
.super Ljava/lang/Object;
.source "ShareImageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/share/model/ShareImageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private imagePath:Ljava/lang/String;

.field private imageRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/garena/android/share/model/ShareImageContent$Builder;->imageRes:I

    return-void
.end method


# virtual methods
.method public build()Lcom/garena/android/share/model/ShareImageContent;
    .locals 3

    new-instance v0, Lcom/garena/android/share/model/ShareImageContent;

    iget-object v1, p0, Lcom/garena/android/share/model/ShareImageContent$Builder;->imagePath:Ljava/lang/String;

    iget v2, p0, Lcom/garena/android/share/model/ShareImageContent$Builder;->imageRes:I

    invoke-direct {v0, v1, v2}, Lcom/garena/android/share/model/ShareImageContent;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setImagePath(Ljava/lang/String;)Lcom/garena/android/share/model/ShareImageContent$Builder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/share/model/ShareImageContent$Builder;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method public setImageRes(I)Lcom/garena/android/share/model/ShareImageContent$Builder;
    .locals 0

    iput p1, p0, Lcom/garena/android/share/model/ShareImageContent$Builder;->imageRes:I

    return-object p0
.end method
