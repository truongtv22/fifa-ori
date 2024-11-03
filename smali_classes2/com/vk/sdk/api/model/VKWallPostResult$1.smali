.class final Lcom/vk/sdk/api/model/VKWallPostResult$1;
.super Ljava/lang/Object;
.source "VKWallPostResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/model/VKWallPostResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/vk/sdk/api/model/VKWallPostResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vk/sdk/api/model/VKWallPostResult;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKWallPostResult;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKWallPostResult;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, v0, Lcom/vk/sdk/api/model/VKWallPostResult;->post_id:I

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKWallPostResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vk/sdk/api/model/VKWallPostResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/vk/sdk/api/model/VKWallPostResult;
    .locals 0

    new-array p1, p1, [Lcom/vk/sdk/api/model/VKWallPostResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKWallPostResult$1;->newArray(I)[Lcom/vk/sdk/api/model/VKWallPostResult;

    move-result-object p1

    return-object p1
.end method
