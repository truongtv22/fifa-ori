.class public final Lcom/google/android/gms/internal/games_v2/zzfk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/games/SnapshotsClient;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/games_v2/zzay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/games_v2/zzay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    return-void
.end method


# virtual methods
.method public final commitAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzew;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/games_v2/zzew;-><init>(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final delete(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzfa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzfa;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final discardAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzfi;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzfi;-><init>(Lcom/google/android/gms/games/snapshot/Snapshot;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final getMaxCoverImageSize()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzev;->zza:Lcom/google/android/gms/internal/games_v2/zzev;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxDataSize()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    sget-object v1, Lcom/google/android/gms/internal/games_v2/zzes;->zza:Lcom/google/android/gms/internal/games_v2/zzes;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectSnapshotIntent(Ljava/lang/String;ZZI)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzfc;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/games_v2/zzfc;-><init>(Ljava/lang/String;ZZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final load(Z)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzfg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/games_v2/zzfg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final open(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/games_v2/zzfk;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final open(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;I)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getUniqueName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/games_v2/zzfk;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final open(Ljava/lang/String;Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/games_v2/zzfk;->open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final open(Ljava/lang/String;ZI)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzfh;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/games_v2/zzfh;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final resolveConflict(Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->fromMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-virtual {v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v3, Lcom/google/android/gms/internal/games_v2/zzfd;

    invoke-direct {v3, p1, v0, v1, p2}, Lcom/google/android/gms/internal/games_v2/zzfd;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final resolveConflict(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            "Lcom/google/android/gms/games/snapshot/SnapshotContents;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/games_v2/zzfk;->zza:Lcom/google/android/gms/internal/games_v2/zzay;

    new-instance v1, Lcom/google/android/gms/internal/games_v2/zzfd;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/games_v2/zzfd;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/games_v2/zzay;->zzb(Lcom/google/android/gms/internal/games_v2/zzax;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
