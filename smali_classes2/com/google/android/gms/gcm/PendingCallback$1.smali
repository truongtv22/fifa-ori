.class final Lcom/google/android/gms/gcm/PendingCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/PendingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/gcm/PendingCallback;",
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
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PendingCallback$1;->zzgn(Landroid/os/Parcel;)Lcom/google/android/gms/gcm/PendingCallback;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PendingCallback$1;->zzjF(I)[Lcom/google/android/gms/gcm/PendingCallback;

    move-result-object p1

    return-object p1
.end method

.method public zzgn(Landroid/os/Parcel;)Lcom/google/android/gms/gcm/PendingCallback;
    .locals 1

    new-instance v0, Lcom/google/android/gms/gcm/PendingCallback;

    invoke-direct {v0, p1}, Lcom/google/android/gms/gcm/PendingCallback;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public zzjF(I)[Lcom/google/android/gms/gcm/PendingCallback;
    .locals 0

    new-array p1, p1, [Lcom/google/android/gms/gcm/PendingCallback;

    return-object p1
.end method
