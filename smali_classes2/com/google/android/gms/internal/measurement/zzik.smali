.class final Lcom/google/android/gms/internal/measurement/zzik;
.super Lcom/google/android/gms/internal/measurement/zzim;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"


# instance fields
.field private zza:I

.field private final zzb:I

.field private final synthetic zzc:Lcom/google/android/gms/internal/measurement/zzih;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzih;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzik;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzim;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzik;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzih;->zzb()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzik;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzik;->zza:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzik;->zzb:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzik;->zza:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzik;->zzb:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzik;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzik;->zzc:Lcom/google/android/gms/internal/measurement/zzih;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzih;->zzb(I)B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
