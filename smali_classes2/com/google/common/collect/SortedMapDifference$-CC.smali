.class public final synthetic Lcom/google/common/collect/SortedMapDifference$-CC;
.super Ljava/lang/Object;
.source "SortedMapDifference.java"


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
.method public static bridge synthetic $default$entriesDiffering(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesDiffering()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$entriesInCommon(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesInCommon()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$entriesOnlyOnLeft(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesOnlyOnLeft()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic $default$entriesOnlyOnRight(Lcom/google/common/collect/SortedMapDifference;)Ljava/util/Map;
    .locals 1

    invoke-interface {p0}, Lcom/google/common/collect/SortedMapDifference;->entriesOnlyOnRight()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
