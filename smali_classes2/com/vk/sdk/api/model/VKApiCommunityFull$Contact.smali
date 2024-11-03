.class public Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;
.super Lcom/vk/sdk/api/model/VKApiModel;
.source "VKApiCommunityFull.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vk/sdk/api/model/Identifiable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/model/VKApiCommunityFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public desc:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public user:Lcom/vk/sdk/api/model/VKApiUser;

.field public user_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact$1;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->user_id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->desc:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vk/sdk/api/model/VKApiCommunityFull$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->user_id:I

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;
    .locals 1

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->user_id:I

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->desc:Ljava/lang/String;

    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->email:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiModel;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->parse(Lorg/json/JSONObject;)Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->user:Lcom/vk/sdk/api/model/VKApiUser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vk/sdk/api/model/VKApiUser;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->email:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->user_id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/vk/sdk/api/model/VKApiCommunityFull$Contact;->desc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
