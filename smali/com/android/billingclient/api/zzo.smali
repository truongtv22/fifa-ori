.class final Lcom/android/billingclient/api/zzo;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.0.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/android/billingclient/api/zzn;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zza:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/zzn;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/android/billingclient/api/zzn;-><init>(Lcom/android/billingclient/api/zzo;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzc;Lcom/android/billingclient/api/zzm;)V

    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/zzn;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/zzbe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zza:Landroid/content/Context;

    new-instance p1, Lcom/android/billingclient/api/zzn;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lcom/android/billingclient/api/zzn;-><init>(Lcom/android/billingclient/api/zzo;Lcom/android/billingclient/api/zzbe;Lcom/android/billingclient/api/zzm;)V

    iput-object p1, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/zzn;

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/zzo;)Lcom/android/billingclient/api/zzn;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/zzn;

    return-object p0
.end method


# virtual methods
.method final zzb()Lcom/android/billingclient/api/zzbe;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/zzn;

    invoke-static {v0}, Lcom/android/billingclient/api/zzn;->zza(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/zzbe;

    const/4 v0, 0x0

    return-object v0
.end method

.method final zzc()Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/zzn;

    invoke-static {v0}, Lcom/android/billingclient/api/zzn;->zzb(Lcom/android/billingclient/api/zzn;)Lcom/android/billingclient/api/PurchasesUpdatedListener;

    move-result-object v0

    return-object v0
.end method

.method final zzd()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/zzn;

    iget-object v1, p0, Lcom/android/billingclient/api/zzo;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/zzn;->zzd(Landroid/content/Context;)V

    return-void
.end method

.method final zze()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending.billing.ALTERNATIVE_BILLING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/billingclient/api/zzo;->zzb:Lcom/android/billingclient/api/zzn;

    iget-object v2, p0, Lcom/android/billingclient/api/zzo;->zza:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/billingclient/api/zzn;->zzc(Landroid/content/Context;Landroid/content/IntentFilter;)V

    return-void
.end method
