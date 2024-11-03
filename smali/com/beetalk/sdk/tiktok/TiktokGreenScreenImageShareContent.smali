.class public Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;
.super Ljava/lang/Object;
.source "TiktokGreenScreenImageShareContent.java"

# interfaces
.implements Lcom/garena/android/share/model/ShareContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final imageContent:Lcom/garena/android/share/model/ShareImageContent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent$1;

    invoke-direct {v0}, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent$1;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/garena/android/share/model/ShareImageContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/garena/android/share/model/ShareImageContent;

    iput-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    return-void
.end method

.method public constructor <init>(Lcom/garena/android/share/model/ShareImageContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImageContent()Lcom/garena/android/share/model/ShareImageContent;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/tiktok/TiktokGreenScreenImageShareContent;->imageContent:Lcom/garena/android/share/model/ShareImageContent;

    invoke-virtual {v0, p1, p2}, Lcom/garena/android/share/model/ShareImageContent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
