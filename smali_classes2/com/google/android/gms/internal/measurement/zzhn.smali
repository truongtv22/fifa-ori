.class final Lcom/google/android/gms/internal/measurement/zzhn;
.super Lcom/google/android/gms/internal/measurement/zzhi;
.source "com.google.android.gms:play-services-measurement-impl@@21.6.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhi<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzhi;-><init>(Lcom/google/android/gms/internal/measurement/zzhq;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/zzhs;)V

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
