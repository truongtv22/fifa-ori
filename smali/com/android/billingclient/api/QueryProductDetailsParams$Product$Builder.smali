.class public Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@5.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/QueryProductDetailsParams$Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzbk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->zza:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;-><init>(Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;Lcom/android/billingclient/api/zzbl;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Product type must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Product id must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method
