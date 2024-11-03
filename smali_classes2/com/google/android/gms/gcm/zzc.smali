.class public Lcom/google/android/gms/gcm/zzc;
.super Ljava/lang/Object;


# static fields
.field public static final zzbgS:Lcom/google/android/gms/gcm/zzc;

.field public static final zzbgT:Lcom/google/android/gms/gcm/zzc;


# instance fields
.field private final zzbgU:I

.field private final zzbgV:I

.field private final zzbgW:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/gcm/zzc;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/16 v3, 0xe10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzc;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzc;->zzbgS:Lcom/google/android/gms/gcm/zzc;

    new-instance v0, Lcom/google/android/gms/gcm/zzc;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzc;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzc;->zzbgT:Lcom/google/android/gms/gcm/zzc;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gcm/zzc;->zzbgU:I

    iput p2, p0, Lcom/google/android/gms/gcm/zzc;->zzbgV:I

    iput p3, p0, Lcom/google/android/gms/gcm/zzc;->zzbgW:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/gcm/zzc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/gcm/zzc;

    iget v1, p1, Lcom/google/android/gms/gcm/zzc;->zzbgU:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzc;->zzbgU:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/google/android/gms/gcm/zzc;->zzbgV:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzc;->zzbgV:I

    if-ne v1, v3, :cond_2

    iget p1, p1, Lcom/google/android/gms/gcm/zzc;->zzbgW:I

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->zzbgW:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->zzbgU:I

    add-int/lit8 v0, v0, 0x1

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Lcom/google/android/gms/gcm/zzc;->zzbgV:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->zzbgW:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->zzbgU:I

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->zzbgV:I

    iget v2, p0, Lcom/google/android/gms/gcm/zzc;->zzbgW:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " initial_backoff="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " maximum_backoff="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzGU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->zzbgU:I

    return v0
.end method

.method public zzGV()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->zzbgV:I

    return v0
.end method

.method public zzGW()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->zzbgW:I

    return v0
.end method

.method public zzJ(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "retry_policy"

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->zzbgU:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "initial_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->zzbgV:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maximum_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->zzbgW:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method
