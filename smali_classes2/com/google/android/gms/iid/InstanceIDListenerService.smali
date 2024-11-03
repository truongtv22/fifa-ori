.class public Lcom/google/android/gms/iid/InstanceIDListenerService;
.super Lcom/google/firebase/iid/zzb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/iid/zzb;-><init>()V

    return-void
.end method

.method static zza(Landroid/content/Context;Lcom/google/android/gms/iid/zzd;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/iid/zzd;->zzHo()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.google.android.gms.iid.InstanceID"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "CMD"

    const-string v1, "RST"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.google.android.gms.gcm.GcmReceiver"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static zzby(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.iid.InstanceID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CMD"

    const-string v2, "SYNC"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.GcmReceiver"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.iid.InstanceID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "subtype"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {p0, v2}, Lcom/google/android/gms/iid/InstanceID;->zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    const-string v2, "CMD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "InstanceID"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Service command. subtype:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " command:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, "from"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "gcm.googleapis.com/refresh"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHj()Lcom/google/android/gms/iid/zzd;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/iid/zzd;->zzeK(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaG(Z)V

    return-void

    :cond_3
    const-string p1, "RST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHi()V

    :goto_1
    invoke-virtual {p0, v4}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaG(Z)V

    goto :goto_2

    :cond_4
    const-string p1, "RST_FULL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHj()Lcom/google/android/gms/iid/zzd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/iid/zzd;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHj()Lcom/google/android/gms/iid/zzd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/iid/zzd;->zzHo()V

    goto :goto_1

    :cond_5
    const-string p1, "SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->zzHj()Lcom/google/android/gms/iid/zzd;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/iid/zzd;->zzeK(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/iid/InstanceIDListenerService;->zzaG(Z)V

    goto :goto_2

    :cond_6
    const-string p1, "PING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public onTokenRefresh()V
    .locals 0

    return-void
.end method

.method public zzaG(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->onTokenRefresh()V

    return-void
.end method
