.class public final Lcom/google/android/gms/internal/measurement/zzge;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"


# static fields
.field private static final zza:Landroid/net/Uri;

.field private static final zzb:Landroid/net/Uri;

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzgj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgh;->zza:Landroid/net/Uri;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzge;->zza:Landroid/net/Uri;

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgh;->zzb:Landroid/net/Uri;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzge;->zzb:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgg;->zza()Lcom/google/android/gms/internal/measurement/zzgj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Lcom/google/android/gms/internal/measurement/zzgj;

    return-void
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzge;->zzc:Lcom/google/android/gms/internal/measurement/zzgj;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzgj;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
