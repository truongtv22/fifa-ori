.class public final Lcom/google/android/gms/internal/measurement/zzqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqd;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzk:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzl:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzm:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzn:Lcom/google/android/gms/internal/measurement/zzhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhi<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhq;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhf;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhq;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zzb()Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhq;->zza()Lcom/google/android/gms/internal/measurement/zzhq;

    move-result-object v0

    const-string v1, "measurement.redaction.app_instance_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zza:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.client_ephemeral_aiid_generation"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzb:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.config_redacted_fields"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzc:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.device_info"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzd:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.e_tag"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zze:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.enhanced_uid"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzf:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.populate_ephemeral_app_instance_id"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzg:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.google_signals"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzh:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.no_aiid_in_config_request"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzi:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.retain_major_os_version"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzj:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.scion_payload_generator"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzk:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.upload_redacted_fields"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzl:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.upload_subdomain_override"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzqg;->zzm:Lcom/google/android/gms/internal/measurement/zzhi;

    const-string v1, "measurement.redaction.user_id"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhq;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzqg;->zzn:Lcom/google/android/gms/internal/measurement/zzhi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqg;->zzj:Lcom/google/android/gms/internal/measurement/zzhi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzqg;->zzk:Lcom/google/android/gms/internal/measurement/zzhi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhi;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
