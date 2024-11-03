.class Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;
.super Ljava/lang/Object;
.source "VKShareDialogDelegate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadingLink"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public linkTitle:Ljava/lang/String;

.field public linkUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink$1;

    invoke-direct {v0}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink$1;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;->linkTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;->linkUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;->linkTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;->linkUrl:Ljava/lang/String;

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

    iget-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;->linkTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/beetalk/sdk/plugin/impl/vk/VKShareDialogDelegate$UploadingLink;->linkUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
