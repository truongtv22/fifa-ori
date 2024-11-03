.class final Lcom/google/android/gms/internal/measurement/zzln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzlz<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzlh;

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzmu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzmu<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/measurement/zzjj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjj<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzlh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzmu<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzjj<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzlh;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzmu;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Lcom/google/android/gms/internal/measurement/zzlh;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzln;->zza:Lcom/google/android/gms/internal/measurement/zzlh;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzlh;)Lcom/google/android/gms/internal/measurement/zzln;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzmu<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/zzjj<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/zzlh;",
            ")",
            "Lcom/google/android/gms/internal/measurement/zzln<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzln;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzln;-><init>(Lcom/google/android/gms/internal/measurement/zzmu;Lcom/google/android/gms/internal/measurement/zzjj;Lcom/google/android/gms/internal/measurement/zzlh;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzmu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzb(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjk;->zza()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zza:Lcom/google/android/gms/internal/measurement/zzlh;

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzju;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcb()Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlh;->zzcf()Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzai()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlw;Lcom/google/android/gms/internal/measurement/zzjh;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zzlw;",
            "Lcom/google/android/gms/internal/measurement/zzjh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzmu;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzjj;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjk;

    move-result-object v3

    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlw;->zzc()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlw;->zzd()I

    move-result v4

    const/16 v6, 0xb

    if-eq v4, v6, :cond_4

    and-int/lit8 v5, v4, 0x7

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzln;->zza:Lcom/google/android/gms/internal/measurement/zzlh;

    ushr-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, p3, v5, v4}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Lcom/google/android/gms/internal/measurement/zzjh;Lcom/google/android/gms/internal/measurement/zzlh;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Lcom/google/android/gms/internal/measurement/zzlw;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjh;Lcom/google/android/gms/internal/measurement/zzjk;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2, p2}, Lcom/google/android/gms/internal/measurement/zzmu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlw;)Z

    move-result v4

    goto :goto_2

    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlw;->zzt()Z

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v6, v4

    const/4 v7, 0x0

    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlw;->zzc()I

    move-result v8

    if-eq v8, v5, :cond_9

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlw;->zzd()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlw;->zzj()I

    move-result v7

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzln;->zza:Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-virtual {v1, p3, v4, v7}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Lcom/google/android/gms/internal/measurement/zzjh;Lcom/google/android/gms/internal/measurement/zzlh;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_6
    const/16 v9, 0x1a

    if-ne v8, v9, :cond_8

    if-eqz v4, :cond_7

    invoke-virtual {v1, p2, v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Lcom/google/android/gms/internal/measurement/zzlw;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjh;Lcom/google/android/gms/internal/measurement/zzjk;)V

    goto :goto_0

    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlw;->zzp()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v6

    goto :goto_0

    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlw;->zzt()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzlw;->zzd()I

    move-result v5

    const/16 v8, 0xc

    if-ne v5, v8, :cond_c

    if-eqz v6, :cond_b

    if-eqz v4, :cond_a

    invoke-virtual {v1, v6, v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Lcom/google/android/gms/internal/measurement/zzih;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzjh;Lcom/google/android/gms/internal/measurement/zzjk;)V

    goto :goto_1

    :cond_a
    invoke-virtual {v0, v2, v7, v6}, Lcom/google/android/gms/internal/measurement/zzmu;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/zzih;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_c
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkc;->zzb()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznu;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/zznu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjk;->zzd()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzc()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/zznr;->zzi:Lcom/google/android/gms/internal/measurement/zznr;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zze()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zzd()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/google/android/gms/internal/measurement/zzkg;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkg;->zza()Lcom/google/android/gms/internal/measurement/zzkh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zza(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzjm;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/measurement/zznu;->zza(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzmu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zznu;)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzmu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmb;->zza(Lcom/google/android/gms/internal/measurement/zzmu;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzmb;->zza(Lcom/google/android/gms/internal/measurement/zzjj;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzig;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/zzig;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzju;->zzb:Lcom/google/android/gms/internal/measurement/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmx;->zzc()Lcom/google/android/gms/internal/measurement/zzmx;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmx;->zzd()Lcom/google/android/gms/internal/measurement/zzmx;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzju;->zzb:Lcom/google/android/gms/internal/measurement/zzmx;

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzju$zzb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju$zzb;->zza()Lcom/google/android/gms/internal/measurement/zzjk;

    const/4 p1, 0x0

    move-object v0, p1

    :goto_0
    if-ge p3, p4, :cond_a

    invoke-static {p2, p3, p5}, Lcom/google/android/gms/internal/measurement/zzid;->zzc([BILcom/google/android/gms/internal/measurement/zzig;)I

    move-result v4

    iget v2, p5, Lcom/google/android/gms/internal/measurement/zzig;->zza:I

    const/16 p3, 0xb

    const/4 v3, 0x2

    if-eq v2, p3, :cond_3

    and-int/lit8 p3, v2, 0x7

    if-ne p3, v3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    iget-object v0, p5, Lcom/google/android/gms/internal/measurement/zzig;->zzd:Lcom/google/android/gms/internal/measurement/zzjh;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzln;->zza:Lcom/google/android/gms/internal/measurement/zzlh;

    ushr-int/lit8 v5, v2, 0x3

    invoke-virtual {p3, v0, v3, v5}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Lcom/google/android/gms/internal/measurement/zzjh;Lcom/google/android/gms/internal/measurement/zzlh;I)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju$zzd;

    if-nez v0, :cond_1

    move-object v3, p2

    move v5, p4

    move-object v6, v1

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzid;->zza(I[BIILcom/google/android/gms/internal/measurement/zzmx;Lcom/google/android/gms/internal/measurement/zzig;)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlv;->zza()Lcom/google/android/gms/internal/measurement/zzlv;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_2
    invoke-static {v2, p2, v4, p4, p5}, Lcom/google/android/gms/internal/measurement/zzid;->zza(I[BIILcom/google/android/gms/internal/measurement/zzig;)I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    move-object v2, p1

    :goto_1
    if-ge v4, p4, :cond_8

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/measurement/zzid;->zzc([BILcom/google/android/gms/internal/measurement/zzig;)I

    move-result v4

    iget v5, p5, Lcom/google/android/gms/internal/measurement/zzig;->zza:I

    ushr-int/lit8 v6, v5, 0x3

    and-int/lit8 v7, v5, 0x7

    if-eq v6, v3, :cond_6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-ne v7, v3, :cond_7

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/measurement/zzid;->zza([BILcom/google/android/gms/internal/measurement/zzig;)I

    move-result v4

    iget-object v2, p5, Lcom/google/android/gms/internal/measurement/zzig;->zzc:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzih;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlv;->zza()Lcom/google/android/gms/internal/measurement/zzlv;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :cond_6
    if-nez v7, :cond_7

    invoke-static {p2, v4, p5}, Lcom/google/android/gms/internal/measurement/zzid;->zzc([BILcom/google/android/gms/internal/measurement/zzig;)I

    move-result v4

    iget p3, p5, Lcom/google/android/gms/internal/measurement/zzig;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    iget-object v5, p5, Lcom/google/android/gms/internal/measurement/zzig;->zzd:Lcom/google/android/gms/internal/measurement/zzjh;

    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/zzln;->zza:Lcom/google/android/gms/internal/measurement/zzlh;

    invoke-virtual {v0, v5, v6, p3}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Lcom/google/android/gms/internal/measurement/zzjh;Lcom/google/android/gms/internal/measurement/zzlh;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju$zzd;

    goto :goto_1

    :cond_7
    :goto_2
    const/16 v6, 0xc

    if-eq v5, v6, :cond_8

    invoke-static {v5, p2, v4, p4, p5}, Lcom/google/android/gms/internal/measurement/zzid;->zza(I[BIILcom/google/android/gms/internal/measurement/zzig;)I

    move-result v4

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    shl-int/lit8 p3, p3, 0x3

    or-int/2addr p3, v3

    invoke-virtual {v1, p3, v2}, Lcom/google/android/gms/internal/measurement/zzmx;->zza(ILjava/lang/Object;)V

    :cond_9
    move p3, v4

    goto/16 :goto_0

    :cond_a
    if-ne p3, p4, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkc;->zzg()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzmu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzc:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjk;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjk;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzmu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzmu;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/measurement/zzmu;->zzd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjk;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjk;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzjk;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzb:Lcom/google/android/gms/internal/measurement/zzmu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzmu;->zzf(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjj;->zzc(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzln;->zzd:Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzjj;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzjk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjk;->zzg()Z

    move-result p1

    return p1
.end method
