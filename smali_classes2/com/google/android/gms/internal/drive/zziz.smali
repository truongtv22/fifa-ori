.class final Lcom/google/android/gms/internal/drive/zziz;
.super Ljava/lang/Object;


# instance fields
.field public zznk:I

.field public zznl:J

.field public zznm:Ljava/lang/Object;

.field public final zznn:Lcom/google/android/gms/internal/drive/zzjx;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjx;->zzci()Lcom/google/android/gms/internal/drive/zzjx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zziz;->zznn:Lcom/google/android/gms/internal/drive/zzjx;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/drive/zzjx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zziz;->zznn:Lcom/google/android/gms/internal/drive/zzjx;

    return-void
.end method
