.class final Lcom/vk/sdk/api/model/VKApiGetDialogResponse$1;
.super Ljava/lang/Object;
.source "VKApiGetDialogResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/model/VKApiGetDialogResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/vk/sdk/api/model/VKApiGetDialogResponse;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vk/sdk/api/model/VKApiGetDialogResponse;
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiGetDialogResponse;

    invoke-direct {v0, p1}, Lcom/vk/sdk/api/model/VKApiGetDialogResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiGetDialogResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vk/sdk/api/model/VKApiGetDialogResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/vk/sdk/api/model/VKApiGetDialogResponse;
    .locals 0

    new-array p1, p1, [Lcom/vk/sdk/api/model/VKApiGetDialogResponse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiGetDialogResponse$1;->newArray(I)[Lcom/vk/sdk/api/model/VKApiGetDialogResponse;

    move-result-object p1

    return-object p1
.end method
