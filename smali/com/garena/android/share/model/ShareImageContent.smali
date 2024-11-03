.class public Lcom/garena/android/share/model/ShareImageContent;
.super Ljava/lang/Object;
.source "ShareImageContent.java"

# interfaces
.implements Lcom/garena/android/share/model/ShareContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/share/model/ShareImageContent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/garena/android/share/model/ShareImageContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final filePath:Ljava/lang/String;

.field private final imageRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/garena/android/share/model/ShareImageContent$1;

    invoke-direct {v0}, Lcom/garena/android/share/model/ShareImageContent$1;-><init>()V

    sput-object v0, Lcom/garena/android/share/model/ShareImageContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/garena/android/share/model/ShareImageContent;->filePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/garena/android/share/model/ShareImageContent;->imageRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/android/share/model/ShareImageContent;->filePath:Ljava/lang/String;

    iput p2, p0, Lcom/garena/android/share/model/ShareImageContent;->imageRes:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/garena/android/share/model/ShareImageContent;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageRes()I
    .locals 1

    iget v0, p0, Lcom/garena/android/share/model/ShareImageContent;->imageRes:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/garena/android/share/model/ShareImageContent;->filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/garena/android/share/model/ShareImageContent;->imageRes:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/garena/android/share/model/ShareImageContent;->filePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/garena/android/share/model/ShareImageContent;->imageRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
