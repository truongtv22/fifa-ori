.class final Lcom/google/android/gms/measurement/internal/zzgx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.6.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzby;

.field private final synthetic zzb:Landroid/content/ServiceConnection;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgu;Lcom/google/android/gms/internal/measurement/zzby;Landroid/content/ServiceConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zza:Lcom/google/android/gms/internal/measurement/zzby;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzb:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgx;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgu;->zza:Lcom/google/android/gms/measurement/internal/zzgv;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzc:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzgu;->zza(Lcom/google/android/gms/measurement/internal/zzgu;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zza:Lcom/google/android/gms/internal/measurement/zzby;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzgx;->zzb:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzby;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzho;->zzl()Lcom/google/android/gms/measurement/internal/zzhh;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzio;->zzt()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzho;->zzy()V

    if-eqz v3, :cond_a

    const-string v5, "install_begin_timestamp_seconds"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    cmp-long v5, v8, v6

    if-nez v5, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzu()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Service response is missing Install Referrer install timestamp"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    const-string v5, "install_referrer"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v12

    const-string v13, "InstallReferrer API result"

    invoke-virtual {v12, v13, v5}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzho;->zzt()Lcom/google/android/gms/measurement/internal/zznw;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "?"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzqr;->zza()Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzho;->zzf()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzbh;->zzca:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->zza()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzho;->zzf()Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v14

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzbh;->zzcu:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzae;->zza(Lcom/google/android/gms/measurement/internal/zzfo;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    invoke-virtual {v12, v5, v13, v14}, Lcom/google/android/gms/measurement/internal/zznw;->zza(Landroid/net/Uri;ZZ)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "No campaign params defined in Install Referrer result"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const-string v12, "medium"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    const-string v13, "(not set)"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "organic"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_2
    if-eqz v14, :cond_7

    const-string v12, "referrer_click_timestamp_seconds"

    invoke-virtual {v3, v12, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    mul-long v12, v12, v10

    cmp-long v3, v12, v6

    if-nez v3, :cond_6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "Install Referrer is missing click timestamp for ad campaign"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v3, "click_timestamp"

    invoke-virtual {v5, v3, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zzn()Lcom/google/android/gms/measurement/internal/zzgm;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgr;->zza()J

    move-result-wide v6

    cmp-long v3, v8, v6

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    const-string v6, "Logging Install Referrer campaign from module while it may have already been logged."

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    :cond_8
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zzac()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zzn()Lcom/google/android/gms/measurement/internal/zzgm;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzgm;->zzd:Lcom/google/android/gms/measurement/internal/zzgr;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzgr;->zza(J)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgb;->zzp()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v3

    const-string v6, "Logging Install Referrer campaign from gmscore with "

    const-string v7, "referrer API v2"

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "_cis"

    invoke-virtual {v5, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzho;->zzp()Lcom/google/android/gms/measurement/internal/zzja;

    move-result-object v3

    const-string v6, "auto"

    const-string v7, "_cmp"

    invoke-virtual {v3, v6, v7, v5, v2}, Lcom/google/android/gms/measurement/internal/zzja;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzho;->zzj()Lcom/google/android/gms/measurement/internal/zzgb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgb;->zzg()Lcom/google/android/gms/measurement/internal/zzgd;

    move-result-object v2

    const-string v3, "No referrer defined in Install Referrer response"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzgd;->zza(Ljava/lang/String;)V

    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgv;->zza:Lcom/google/android/gms/measurement/internal/zzho;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzho;->zza()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_b
    return-void
.end method
