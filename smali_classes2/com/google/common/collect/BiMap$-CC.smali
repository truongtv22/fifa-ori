.class public final synthetic Lcom/google/common/collect/BiMap$-CC;
.super Ljava/lang/Object;
.source "BiMap.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x8
    versionHash = "ea87655719898b9807d7a88878e9de051d12af172d2fab563c9881b5e404e7d4"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$values(Lcom/google/common/collect/BiMap;)Ljava/util/Collection;
    .locals 1

    invoke-interface {p0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
