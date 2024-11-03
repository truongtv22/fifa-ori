.class public Lcom/vk/sdk/api/model/VKWallPostResult;
.super Lcom/vk/sdk/api/model/VKApiModel;
.source "VKWallPostResult.java"


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKWallPostResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public post_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKWallPostResult$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKWallPostResult$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKWallPostResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/vk/sdk/api/model/VKWallPostResult;->post_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
