.class final Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzbq:I = 0x1

.field public static final enum zzbr:I = 0x2

.field public static final enum zzbs:I = 0x3

.field public static final enum zzbt:I = 0x4

.field private static final synthetic zzbu:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v3, v1, v2

    aput v0, v1, v3

    sput-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzd;->zzbu:[I

    return-void
.end method

.method public static zzh()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient$zzd;->zzbu:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
