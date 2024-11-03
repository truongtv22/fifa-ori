.class public enum Lcom/google/android/gms/internal/measurement/zznh;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@21.6.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zznh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzk:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzl:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzm:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzn:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzo:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzp:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzq:Lcom/google/android/gms/internal/measurement/zznh;

.field public static final enum zzr:Lcom/google/android/gms/internal/measurement/zznh;

.field private static final synthetic zzs:[Lcom/google/android/gms/internal/measurement/zznh;


# instance fields
.field private final zzt:Lcom/google/android/gms/internal/measurement/zznr;

.field private final zzu:I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v0, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zznr;->zzd:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznh;->zza:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zznr;->zzc:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zznh;->zzb:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v5, Lcom/google/android/gms/internal/measurement/zznr;->zzb:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zznh;->zzc:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v5, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v7, Lcom/google/android/gms/internal/measurement/zznr;->zzb:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/zznh;->zzd:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v7, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v9, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v11, "INT32"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v3}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/zznh;->zze:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v9, Lcom/google/android/gms/internal/measurement/zznh;

    const-string v11, "FIXED64"

    sget-object v13, Lcom/google/android/gms/internal/measurement/zznr;->zzb:Lcom/google/android/gms/internal/measurement/zznr;

    invoke-direct {v9, v11, v6, v13, v4}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/zznh;->zzf:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v11, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v13, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13, v6}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v11, Lcom/google/android/gms/internal/measurement/zznh;->zzg:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v13, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v14, Lcom/google/android/gms/internal/measurement/zznr;->zze:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v15, "BOOL"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14, v3}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v13, Lcom/google/android/gms/internal/measurement/zznh;->zzh:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v14, Lcom/google/android/gms/internal/measurement/zznk;

    const-string v17, "STRING"

    const/16 v18, 0x8

    sget-object v19, Lcom/google/android/gms/internal/measurement/zznr;->zzf:Lcom/google/android/gms/internal/measurement/zznr;

    const/16 v20, 0x2

    const/16 v21, 0x0

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/internal/measurement/zznk;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;ILcom/google/android/gms/internal/measurement/zznj;)V

    sput-object v14, Lcom/google/android/gms/internal/measurement/zznh;->zzi:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v15, Lcom/google/android/gms/internal/measurement/zznm;

    const-string v23, "GROUP"

    const/16 v24, 0x9

    sget-object v25, Lcom/google/android/gms/internal/measurement/zznr;->zzi:Lcom/google/android/gms/internal/measurement/zznr;

    const/16 v26, 0x3

    const/16 v27, 0x0

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Lcom/google/android/gms/internal/measurement/zznm;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;ILcom/google/android/gms/internal/measurement/zznl;)V

    sput-object v15, Lcom/google/android/gms/internal/measurement/zznh;->zzj:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v22, Lcom/google/android/gms/internal/measurement/zzno;

    const-string v17, "MESSAGE"

    const/16 v18, 0xa

    sget-object v19, Lcom/google/android/gms/internal/measurement/zznr;->zzi:Lcom/google/android/gms/internal/measurement/zznr;

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/internal/measurement/zzno;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;ILcom/google/android/gms/internal/measurement/zznn;)V

    sput-object v22, Lcom/google/android/gms/internal/measurement/zznh;->zzk:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v16, Lcom/google/android/gms/internal/measurement/zznq;

    const-string v24, "BYTES"

    const/16 v25, 0xb

    sget-object v26, Lcom/google/android/gms/internal/measurement/zznr;->zzg:Lcom/google/android/gms/internal/measurement/zznr;

    const/16 v27, 0x2

    const/16 v28, 0x0

    move-object/from16 v23, v16

    invoke-direct/range {v23 .. v28}, Lcom/google/android/gms/internal/measurement/zznq;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;ILcom/google/android/gms/internal/measurement/zznp;)V

    sput-object v16, Lcom/google/android/gms/internal/measurement/zznh;->zzl:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v12, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v10, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v8, "UINT32"

    const/16 v4, 0xc

    invoke-direct {v12, v8, v4, v10, v3}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v12, Lcom/google/android/gms/internal/measurement/zznh;->zzm:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v10, Lcom/google/android/gms/internal/measurement/zznr;->zzh:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v4, "ENUM"

    const/16 v6, 0xd

    invoke-direct {v8, v4, v6, v10, v3}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/zznh;->zzn:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v10, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v6, "SFIXED32"

    const/16 v3, 0xe

    move-object/from16 v26, v8

    const/4 v8, 0x5

    invoke-direct {v4, v6, v3, v10, v8}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zznh;->zzo:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v6, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zznr;->zzb:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v10, "SFIXED64"

    const/16 v3, 0xf

    move-object/from16 v28, v4

    const/4 v4, 0x1

    invoke-direct {v6, v10, v3, v8, v4}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zznh;->zzp:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v4, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v8, Lcom/google/android/gms/internal/measurement/zznr;->zza:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v10, "SINT32"

    const/16 v3, 0x10

    move-object/from16 v29, v6

    const/4 v6, 0x0

    invoke-direct {v4, v10, v3, v8, v6}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zznh;->zzq:Lcom/google/android/gms/internal/measurement/zznh;

    new-instance v8, Lcom/google/android/gms/internal/measurement/zznh;

    sget-object v10, Lcom/google/android/gms/internal/measurement/zznr;->zzb:Lcom/google/android/gms/internal/measurement/zznr;

    const-string v3, "SINT64"

    move-object/from16 v30, v4

    const/16 v4, 0x11

    invoke-direct {v8, v3, v4, v10, v6}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/zznh;->zzr:Lcom/google/android/gms/internal/measurement/zznh;

    const/16 v3, 0x12

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/zznh;

    aput-object v0, v3, v6

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v15, v3, v0

    const/16 v0, 0xa

    aput-object v22, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v12, v3, v0

    const/16 v0, 0xd

    aput-object v26, v3, v0

    const/16 v0, 0xe

    aput-object v28, v3, v0

    const/16 v0, 0xf

    aput-object v29, v3, v0

    const/16 v0, 0x10

    aput-object v30, v3, v0

    aput-object v8, v3, v4

    sput-object v3, Lcom/google/android/gms/internal/measurement/zznh;->zzs:[Lcom/google/android/gms/internal/measurement/zznh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zznr;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zznh;->zzt:Lcom/google/android/gms/internal/measurement/zznr;

    iput p4, p0, Lcom/google/android/gms/internal/measurement/zznh;->zzu:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;ILcom/google/android/gms/internal/measurement/zzns;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/zznh;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zznr;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zznh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznh;->zzs:[Lcom/google/android/gms/internal/measurement/zznh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zznh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zznh;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zznh;->zzu:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zznr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznh;->zzt:Lcom/google/android/gms/internal/measurement/zznr;

    return-object v0
.end method
