.class final Lcom/google/android/gms/internal/measurement/zzmk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private zza:I

.field private zzb:Z

.field private zzc:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzma;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzma;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzd:Lcom/google/android/gms/internal/measurement/zzma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zza:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzma;Lcom/google/android/gms/internal/measurement/zzmn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzmk;-><init>(Lcom/google/android/gms/internal/measurement/zzma;)V

    return-void
.end method

.method private final zza()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzc:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzd:Lcom/google/android/gms/internal/measurement/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzma;->zzb(Lcom/google/android/gms/internal/measurement/zzma;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzc:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzc:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zza:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzd:Lcom/google/android/gms/internal/measurement/zzma;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzma;->zza(Lcom/google/android/gms/internal/measurement/zzma;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzd:Lcom/google/android/gms/internal/measurement/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzma;->zzb(Lcom/google/android/gms/internal/measurement/zzma;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmk;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:Z

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zza:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzd:Lcom/google/android/gms/internal/measurement/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzma;->zza(Lcom/google/android/gms/internal/measurement/zzma;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzd:Lcom/google/android/gms/internal/measurement/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzma;->zza(Lcom/google/android/gms/internal/measurement/zzma;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zza:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmk;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzd:Lcom/google/android/gms/internal/measurement/zzma;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzma;->zzd(Lcom/google/android/gms/internal/measurement/zzma;)V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzd:Lcom/google/android/gms/internal/measurement/zzma;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzma;->zza(Lcom/google/android/gms/internal/measurement/zzma;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zzd:Lcom/google/android/gms/internal/measurement/zzma;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zza:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzmk;->zza:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzma;->zza(Lcom/google/android/gms/internal/measurement/zzma;I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzmk;->zza()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
