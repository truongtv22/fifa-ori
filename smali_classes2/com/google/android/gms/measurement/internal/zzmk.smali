.class public final synthetic Lcom/google/android/gms/measurement/internal/zzmk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzmi;

.field private synthetic zzb:I

.field private synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgb;

.field private synthetic zzd:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzmi;ILcom/google/android/gms/measurement/internal/zzgb;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmk;->zza:Lcom/google/android/gms/measurement/internal/zzmi;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzmk;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmk;->zzc:Lcom/google/android/gms/measurement/internal/zzgb;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzmk;->zzd:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzmk;->zza:Lcom/google/android/gms/measurement/internal/zzmi;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzmk;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmk;->zzc:Lcom/google/android/gms/measurement/internal/zzgb;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmk;->zzd:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzmi;->zza(ILcom/google/android/gms/measurement/internal/zzgb;Landroid/content/Intent;)V

    return-void
.end method
