.class public Lcom/google/android/gms/internal/measurement/zzju$zza;
.super Lcom/google/android/gms/internal/measurement/zzia;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/zzju<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/zzju$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/zzia<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/measurement/zzju;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/measurement/zzju;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzju;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzia;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzju;->zzcb()Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Ljava/lang/Object;",
            ">(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlv;->zza()Lcom/google/android/gms/internal/measurement/zzlv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzlv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb([BIILcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzju$zza;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/zzjh;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkc;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzal()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlv;->zza()Lcom/google/android/gms/internal/measurement/zzlv;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzlv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    const/4 v4, 0x0

    new-instance v6, Lcom/google/android/gms/internal/measurement/zzig;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/measurement/zzig;-><init>(Lcom/google/android/gms/internal/measurement/zzjh;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzig;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzkc; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkc;->zzh()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method private final zzc(Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzju$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zziv;",
            "Lcom/google/android/gms/internal/measurement/zzjh;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzal()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzlv;->zza()Lcom/google/android/gms/internal/measurement/zzlv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzlv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzlz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Lcom/google/android/gms/internal/measurement/zziv;)Lcom/google/android/gms/internal/measurement/zziz;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzlw;Lcom/google/android/gms/internal/measurement/zzjh;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_1
    throw p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzju;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    sget v1, Lcom/google/android/gms/internal/measurement/zzju$zzf;->zze:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzju;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzai()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-object v0
.end method

.method public final i_()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzju;->zza(Lcom/google/android/gms/internal/measurement/zzju;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzia;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzia;->zzb(Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzju$zza;

    return-object p1
.end method

.method public final synthetic zza([BII)Lcom/google/android/gms/internal/measurement/zzia;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkc;
        }
    .end annotation

    const/4 p2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjh;->zza:Lcom/google/android/gms/internal/measurement/zzjh;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb([BIILcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzia;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkc;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb([BIILcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzju;)Lcom/google/android/gms/internal/measurement/zzju$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzju;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzju;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzal()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic zzae()Lcom/google/android/gms/internal/measurement/zzia;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju$zza;

    return-object v0
.end method

.method public final zzaf()Lcom/google/android/gms/internal/measurement/zzju;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzai()Lcom/google/android/gms/internal/measurement/zzlh;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->i_()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzmv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzmv;-><init>(Lcom/google/android/gms/internal/measurement/zzlh;)V

    throw v1
.end method

.method public zzag()Lcom/google/android/gms/internal/measurement/zzju;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzch()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-object v0
.end method

.method public synthetic zzah()Lcom/google/android/gms/internal/measurement/zzlh;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzaf()Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzai()Lcom/google/android/gms/internal/measurement/zzlh;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzag()Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzaj()Lcom/google/android/gms/internal/measurement/zzlh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzju;

    return-object v0
.end method

.method protected final zzak()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcj()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzal()V

    :cond_0
    return-void
.end method

.method protected zzal()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzju;->zzcb()Lcom/google/android/gms/internal/measurement/zzju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzju$zza;->zza:Lcom/google/android/gms/internal/measurement/zzju;

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzlg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzju$zza;->zzc(Lcom/google/android/gms/internal/measurement/zziv;Lcom/google/android/gms/internal/measurement/zzjh;)Lcom/google/android/gms/internal/measurement/zzju$zza;

    move-result-object p1

    return-object p1
.end method
